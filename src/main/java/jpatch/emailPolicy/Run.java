package jpatch.emailPolicy;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jpatch.util.AdbUtils;
import jpatch.util.ApkXml;
import jpatch.util.FileUtils;

public class Run {
	
	static String adb = "adb";
	static String sdcardDir = "/sdcard/";
	static String sdcardSUDirs[] = {sdcardDir, "/mnt/shell/emulated/0/", "/storage/sdcard0/"};
	static String sdcardSUDir;
	static String workDir = "work";
	static final int DEFAULT_API_LEVEL = 15;
	static final int MAX_API_LEVEL = 16;
	static File workDirFile;
	static boolean debug;
	static String logfile = "debug.log";
	static ByteArrayOutputStream logbuf = new ByteArrayOutputStream(1024);
	static PrintStream log = new PrintStream(logbuf);
	static Pattern CR_PATTERN = Pattern.compile("[\\r]{2,}", Pattern.DOTALL);

	static boolean messageMode; // true if last thrown exception shouldn't write debug log
	
	static final String[] EMAIL_APKS = new String[] { "Email", "EmailGoogle", "Email2", "Email2Google",
		"com.android.email", "SecEmail", "SecEmail_J", "SecEmail_K", "SecEmail_L", "SecEmail_M", "SecEmail_Tablet" };
	static final String[] EXCHANGE_APKS = new String[] { "Exchange", "Exchange2", "ExchangeGoogle", "Exchange2Google",
		"com.android.exchange", "SecExchange", "SecExchange_J", "SecExchange_K", "SecExchange_L", "SecExchange_M", "SecExchange_Tablet" };

	static class PatchException extends RuntimeException {
		private static final long serialVersionUID = 1L;
		public PatchException(String msg) {
			super(msg);
		}
		public PatchException(String msg, boolean bMessage) {
			super(msg);
			if (bMessage)
				messageMode = true;
		}
	}
	
	static class PatchMessage extends RuntimeException {
		private static final long serialVersionUID = 1L;
		public PatchMessage(String msg) {
			super(msg);
		}
	}
	
	static class IOCapture extends Thread {
		private StringBuffer cmdbuf;
		private InputStream in;
		public IOCapture(StringBuffer cmdbuf, InputStream in) {
			this.cmdbuf = cmdbuf;
			this.in = in;
		}
		public void run() {
			byte buf[] = new byte[1024];
			int len;
			try {
				while ((len = in.read(buf)) >= 0) {
					String s = new String(buf, 0, len);
					log.print(CR_PATTERN.matcher(s).replaceAll("\r"));
					cmdbuf.append(s);
				}
			} catch (IOException e) {
			}
		}
	}
	
	static StringBuffer cmdout = new StringBuffer();
	static StringBuffer cmderr = new StringBuffer();
	
	static int runCommand(String ... args) throws IOException {
		cmdout.setLength(0);
		cmderr.setLength(0);
		log.println("> " + join(" ", args));
		try {
			final Process p = Runtime.getRuntime().exec(args, null, workDirFile);
			new IOCapture(cmdout, p.getInputStream()).start();
			new IOCapture(cmderr, p.getErrorStream()).start();
			int rc = p.waitFor();
			Thread.sleep(100);
			log.println("< returned: " + rc);
			return rc;
		} catch (IOException e) {
			log.println(e.getMessage());
			return -1;
		}catch (InterruptedException e) {
			throw new IOException("runCommand interrupted", e);
		}
	}
	
	static void runCommandNoWait(String ... args) throws IOException, InterruptedException {
		cmdout.setLength(0);
		cmderr.setLength(0);
		log.println("> " + join(" ", args));
		try {
			final Process p = Runtime.getRuntime().exec(args, null, workDirFile);
			new IOCapture(cmdout, p.getInputStream()).start();
			new IOCapture(cmderr, p.getErrorStream()).start();
			Thread.sleep(1000);
		} catch (IOException e) {
			log.println(e.getMessage());
		}
	}
	
	static void println(Object s) {
		String str = String.valueOf(s);
		System.out.println(str);
		log.println(str);
	}

	static void runCommandNoFail(String ... args) throws IOException {
		int rc = runCommand(args);
		if (rc != 0)
			throw new PatchException("Command failed: " + join(" ", args));
	}

	static String join(String glue, String ... args) {
		StringBuilder sb = new StringBuilder();
		for (String s : args) {
			if (sb.length() > 0) sb.append(glue);
			sb.append(s);
		}
		return sb.toString();
	}

	static void removeDirectory(File directory) {
		String[] list = directory.list();
		if (list != null) {
			for (int i = 0; i < list.length; i++) {
				File entry = new File(directory, list[i]);
				if (entry.isDirectory()) {
					removeDirectory(entry);
				} else {
					entry.delete();
				}
			}
		}
		directory.delete();
	}
	
	static void createWorkDir() throws IOException {
		workDirFile = new File(workDir);
		if (workDirFile.exists()) {
			println("Cleaning up ...");
			runCommand(adb, "kill-server");
			removeDirectory(workDirFile);
		}
		workDirFile.mkdirs();
		if (!workDirFile.isDirectory())
			throw new PatchException("Unable to create work directory.");
	}

	static String systemPartition, systemMountMode;

	static void getSystemPartition() throws IOException {
		int rc = runCommand(adb, "shell", wrapSU("mount"));
        String output = cmdout.toString();
        if (rc != 0 || output.length() < 100) {
            rc = runCommand(adb, "shell", "mount");
            output = cmdout.toString();
        }
        if (rc != 0)
			throw new PatchException("Device check failed. Unable to reach adb shell.");
		parseMount(output);
	}

	static void parseMount(final String mountOutput) {
		Matcher m = Pattern.compile("^\\s*(\\S+)\\s+(\\S+\\s+)?\\/system\\s+(.*)", Pattern.MULTILINE).matcher(mountOutput);
		if (m.find()) {
			systemPartition = m.group(1);
			Matcher m2 = Pattern.compile("[^a-zA-Z](r[ow])[^a-zA-Z]", Pattern.MULTILINE).matcher(m.group(3));
			if (m2.find())
				systemMountMode = m2.group(1);
			else
				systemMountMode = "?";
		} else {
			m = Pattern.compile("^\\s*(\\S+)\\s+(\\S+\\s+)?\\/system(\\s|$)", Pattern.MULTILINE).matcher(mountOutput);
			if (m.find()) {
				systemPartition = m.group(1);
				systemMountMode = "?";
			} else {
				systemPartition = null;
				systemMountMode = "?";
				println("WARNING: Unable to determine system partition");
				m = Pattern.compile("^.*?\\s\\/system\\s.*$", Pattern.MULTILINE).matcher(mountOutput);
				if (m.find())
					println("Found mount point: " + m.group(0));
				else
					println("Mount output:\n" + mountOutput);
			}
		}
	}
	
	static void checkADB() throws IOException {
		// check ADB on PATH
		int rc = runCommand(adb = "adb", "version");
		if (rc == 0 && cmdout.toString().matches("(?s).*?\\s\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}.*")) {
			println("Found adb on PATH.");
		} else {
			if (!AdbUtils.isAdbFetched(workDirFile)) {
				// fetch adb
				println("Downloading adb...");
				AdbUtils.fetchAdb(workDirFile);
				if (!AdbUtils.isAdbFetched(workDirFile))
					throw new PatchException("Adb fetch failed.");
			}
			adb = new File(workDirFile, AdbUtils.getAdbPath()).getPath();
		}
	}

	static void waitForDevice(final boolean initial) throws IOException, InterruptedException {
		Thread timeout = new Thread() {
			@Override
			public void run() {
				try {
					Thread.sleep(1000);
					println("Waiting for ADB connection...");
					Thread.sleep(5000);
					if (initial)
						println("Connect your device!\n" +
								"Enable USB debugging (Settings -> Applications -> Development -> USB debugging)\n"
								+ "On CM builds allow ADB root access (Settings > Developer Options > Root access)\n"
								+ "Authorize PC access on device if necessary (check device screen!)\n"
								+ "Note: ADB via Wi-Fi is also possible.\n"
								+ "Waiting for connection...");
				} catch (InterruptedException e) {
					// ignore
				}
			}
		};
		int rc = -1;
		for (int i = 0; i < 30; i++) {
			timeout.start();
			rc = runCommand(adb, "wait-for-device");
			timeout.interrupt();
			if (initial || rc == 0)
				break;
			Thread.sleep(1000);
		};
		if (rc != 0)
			throw new PatchException("No device connected. Please connect your device and try again.");
	}
	
	static boolean secureShell = true;
	static boolean hasBusybox = false;
	static String busybox = "";

	static void checkRootAccess() throws IOException {
		int rc = 0;
		// check for busybox
		rc = runCommand(adb, "shell", "busybox");
		if (rc == 0) {
			hasBusybox = cmdout.toString().contains("BusyBox ");
			busybox = hasBusybox ? "busybox " : "";
		}
		String uid = "";
		for (String cmd : new String[] { "id", "su -c id" }) {
			rc = runCommand(adb, "shell", cmd);
			if (rc != 0)
				continue;
			Matcher m = Pattern.compile("uid=(\\d+)", Pattern.DOTALL).matcher(cmdout.toString());
			if (m.find()) {
				uid = m.group(1);
				if ("0".equals(uid)) {
					secureShell = cmd.startsWith("su ");
					println("checking root access. root uid: " + uid + ", secure: " + (secureShell?"yes":"no") + ", busybox: " + (hasBusybox?"yes":"no"));
					break;
				}
			}
		}
		if (rc != 0) {
			System.err.println("*** Warning: cannot check root access, su command failed (is device rooted?).");
			return;
		}
		if (!uid.equals("0"))
			System.err.println("*** Warning: cannot set root (is device rooted?). uid=" + uid);
	}
	
	static String wrapSU(String cmd) {
		if (!secureShell)
			return cmd;
		return "su -c '" + cmd.replaceAll("'", "\\'") + "'";
	}

	static int apiLevel;
	static int androidVersionMajor;
	static String androidVersion;

	static void getDeviceDetails() throws IOException {
		int rc;
		rc = runCommand(adb, "shell", "cat /system/build.prop");
		if (rc == 0) {
			Pattern modelPattern = Pattern.compile("^ro.product.model=(.*)", Pattern.MULTILINE);
			Pattern buildPattern = Pattern.compile("^ro.build.display.id=(.*)", Pattern.MULTILINE);
			Pattern versionPattern = Pattern.compile("^ro.build.version.release=(.*)", Pattern.MULTILINE);
			Matcher m = modelPattern.matcher(cmdout.toString());
			if (m.find()) {
				String model = m.group(1);
				String build = "?";
				androidVersion = "?";
				m = buildPattern.matcher(cmdout.toString());
				if (m.find()) {
					build = m.group(1);
				}
				m = versionPattern.matcher(cmdout.toString());
				if (m.find()) {
					androidVersion = m.group(1);
				}
				apiLevel = getAPILevel(androidVersion, build);
				println("Model: " + model + ", build " + build + ", android " + androidVersion + " (API Level " + apiLevel + (apiLevel == MAX_API_LEVEL ? "+" : "") + ")");
			} else
				println("Unable to determine device model. adb output: \n" + getCmdErr());
		}
		getSystemPartition();
	}
	
	static String getCmdErr() {
		if (cmderr.length() > 2)
			return cmderr.toString();
		return cmdout.toString();
	}

	static int getAPILevel(String version, String build) {
		Matcher m = Pattern.compile("(\\d+)\\.(\\d+)(\\.(\\d+))?").matcher(version);
		if (m.find()) {
			androidVersionMajor = Integer.parseInt(m.group(1));
			if (androidVersionMajor >= 5)
				debug = true;
			int v = Integer.parseInt(m.group(1)) * 10000 + Integer.parseInt(m.group(2)) * 100;
			if (m.group(4) != null)
				v += Integer.parseInt(m.group(4));
			if (v >= 40100) return 16;
			if (v >= 40003) return 15;
			if (v >= 40000) return 14;
			if (v >= 30200) return 13;
			if (v >= 30100) return 12;
			if (v >= 30000) return 11;
			if (v >= 20303) return 10;
			if (v >= 20300) return 9;
			if (v >= 20200) return 8;
			if (v >= 20100) return 7;
			if (v >= 20001) return 6;
			if (v >= 20000) return 5;
			if (v >= 10600) return 4;
			if (v >= 10500) return 3;
			if (v >= 10100) return 2;
		} else {
			debug = true;
		}
		if (build.length() > 1) {
			// nasty fallback that won't work with custom roms
			switch (build.charAt(0)) {
			case 'C': return 3;
			case 'D': return 4;
			case 'E': return 7;
			case 'F': return 8;
			case 'G': return 10;
			case 'H': return 13;
			case 'I': return 15;
			case 'J': return 16;
			}
		}
		return DEFAULT_API_LEVEL;
	}

	static void remountSystem() throws IOException {
		runCommand(adb, "remount");
		if (systemPartition == null) {
			if (hasBusybox)
				runCommand(adb, "shell", wrapSU("busybox mount -o rw,remount /system"));
		} else {
			getSystemPartition();
			if (!"rw".equals(systemMountMode)) {
				int rc = runCommand(adb, "shell", wrapSU("mount -o rw,remount " + systemPartition + " /system"));
				if (rc != 0)
					throw new PatchException("Unable to remount /system. Adb command failed.");
				getSystemPartition();
				if ("ro".equals(systemMountMode))
					throw new PatchException("Unable to remount system partition for writing (are you root?). Please update the patched APKs manually.");
			}
		}
	}

	//BOOST: NEW!! 
	static class PatchableAPK {
		String apk;
		String patchedApk;
		String odex;
		boolean hasOdex;
		boolean patched;
		public PatchableAPK(String baseName) {
			apk = baseName + ".apk";
			patchedApk = baseName + ".patched.apk";
			odex = baseName + ".odex";
		}
		String bin() {
			return hasOdex ? odex : apk;
		}
	}
	
	static PatchableAPK pullApk(String s) throws IOException {
		PatchableAPK apk = new PatchableAPK(s);
		if (pullFile("/system/app/" + apk.apk, apk.apk)) {
			apk.hasOdex = pullFile("/system/app/" + apk.odex, apk.odex);
			return apk;
		}
		return null;
	}

	static void findApks(final String name, final String[] searchList, final int minApiLevel, List<PatchableAPK> apks) throws IOException {
		PatchableAPK apk = null;
		if (androidVersionMajor >= 5) {
			for (String s : searchList) {
				apk = pullApk(s + "/" + s);
				if (apk != null) {
					apks.add(apk);
					break;
				}
			}
		}
		if (apk == null) {
			for (String s : searchList) {
				apk = pullApk(s);
				if (apk != null) {
					apks.add(apk);
					break;
				}
			}
		}
		if (apk == null && apiLevel >= minApiLevel) {
			System.out.print("Can't find " + name + " app. Enter the name of your " + name + " apk or press <Enter> to exit: ");
			String s = new BufferedReader(new InputStreamReader(System.in)).readLine();
			if (s == null || s.trim().length() == 0) {
				throw new PatchException("User aborted (" + name + " app not found).");
			}
			apk = pullApk(s.trim().replaceFirst("\\.apk$", ""));
			if (apk != null) {
				apks.add(apk);
			}
		}
		if (apks.isEmpty()) {
			throw new PatchException("The " + name + " apk was not found.");
		}
	}
	
	static List<PatchableAPK> findApks() throws IOException {
		List<PatchableAPK> apks = new ArrayList<PatchableAPK>(2);
		findApks("Email", EMAIL_APKS, 0, apks);
		findApks("Exchange", EXCHANGE_APKS, 14, apks); // silently ignore on pre-ICS
		return apks;
	}

	static final String[] DEFAULT_BOOT_CLASS_PATH = new String[] {
		"core.jar",
		"bouncycastle.jar",
		"ext.jar",
		"framework.jar",
		"framework2.jar",
		"telephony-common.jar",
		"voip-common.jar",
		"mms-common.jar",
		"android.policy.jar",
		"services.jar",
		"apache-xml.jar",
		"sec_edm.jar",
		"seccamera.jar",
		"scrollpause.jar",
		"stayrotation.jar",
		"smartfaceservice.jar",
		"sc.jar",
		"secocsp.jar",
		"commonimsinterface.jar"
	};

	static String[] bootClassPath = DEFAULT_BOOT_CLASS_PATH;
	
	static void runShellCommand(String command) throws IOException {
		runCommandNoFail(adb, "shell", command);
	}

	static void runShellCommandNoWait(String command) throws IOException, InterruptedException {
		runCommandNoWait(adb, "shell", command);
	}

	static void initBootClasspathFromDevice() throws IOException {
        runShellCommand("set");
        if (!initBootClasspath(cmdout.toString())) {
            runShellCommand(wrapSU("cat /init.rc"));
            if (!initBootClasspath(cmdout.toString())) {
                println("Can't detect boot class path. Using defaults...");
            }
        }
    }

    static void initBootClasspathOffline() throws IOException {
        File initRc = new File(workDirFile, "init.rc");
        if (!initRc.canRead())
        	initRc = new File(workDirFile, "env");
        if (initRc.canRead()) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            FileInputStream in = new FileInputStream(initRc);
            FileUtils.copyStream(in, out);
            in.close();
            out.close();
            if (!initBootClasspath(out.toString())) {
                println("Can't detect boot class path. Using defaults...");
            }
        } else
			println("No " + workDir + "/init.rc and no " + workDir + "/env. Using default BOOTCLASSPATH.");
    }

    static boolean initBootClasspath(String out) throws IOException {
        Pattern bootCpPattern = Pattern.compile("(?m)BOOTCLASSPATH[ \\t=]+(.*)");
        Matcher m = bootCpPattern.matcher(out);
        if (m.find() && m.group(1).contains("core.jar")) {
            String bootCp = m.group(1).replaceAll("['\"]", "");
            bootClassPath = bootCp.split(":");
            for (int i=0; i<bootClassPath.length; i++)
                bootClassPath[i] = bootClassPath[i].replaceAll(".*\\/", "");
            log.println("Boot classpath: " + join(", ", bootClassPath));
            return true;
        }
        return false;
    }

	static String buildClassPath(PatchableAPK apk) throws IOException {
		final List<String> jars = new ArrayList<String>(Arrays.asList(bootClassPath));
		String[] extraJars = getExtraLibs(apk);
		for (int i=0; i<extraJars.length; i++) {
			if (!jars.contains(extraJars[i]))
				jars.add(extraJars[i]);
		}
		final Set<String> foundJars = new HashSet<String>();
		for (File f : workDirFile.listFiles(new FileFilter() {
			public boolean accept(File f) {
				return f.isFile() && f.getName().endsWith(".jar");
			}
		})) {
		    foundJars.add(f.getName());
		}
		for (Iterator<String> iter = jars.iterator(); iter.hasNext(); ) {
		    String jar = iter.next();
		    if (!foundJars.contains(jar))
		        iter.remove();
		}
		return join(":", jars.toArray(new String[jars.size()]));
	}
	
    static String[] getExtraLibs(PatchableAPK apk) throws IOException {
        byte[] axml = FileUtils.readFile(new File(workDirFile, apk.apk).getAbsolutePath(), "AndroidManifest.xml");
        if (axml == null) {
            println(apk.apk + " : can't find AndroidManifest.xml");
            return new String[0];
        }
        String[] extraLibs = new ApkXml(axml).getExtraLibs();
        for (int i=0; i<extraLibs.length; i++)
            extraLibs[i] += ".jar";
        log.println(apk.apk + " extra libs: " + join(", ", extraLibs));
        return extraLibs;
    }
    
	static boolean done = false;
	static PrintStream saveErr = System.err;
	static ByteArrayOutputStream tmpbuf = new ByteArrayOutputStream(4096);

	public static int applyPatch(List<PatchableAPK> apks) throws Exception {
		int successes = 0;
		for(PatchableAPK apk : apks) {
	        final String classpath = buildClassPath(apk);
			final String outDir = workDir + "/out-" + apk.apk + "/";
			final File outDirFile = new File(outDir);
			if (outDirFile.exists())
				removeDirectory(outDirFile);
			// run baksmali
			println("Decompiling " + apk.bin() + " ...");
			runIsolated("org.jf.baksmali.main", "-d", workDir,
					"-c", classpath,
					"-I",
					"-x",
					"-a" + apiLevel,
					"-o", outDir,
					workDir + "/" + apk.bin());
			//TODO verify logs
//					println(tmpbuf);
//					"Skipping L(.*?);"
			// gnu/
			// *awt*
			// 
			// apply patch
			println("Applying patch ...");
			List<PatchResult> results = new ArrayList<PatchResult>();
			results.add(PatchPolicy.applyPatch(new File(outDir + PatchPolicy.PATCH_FILE)));
			if (results.get(0) == PatchResult.FILE_NOT_FOUND || results.get(0) == PatchResult.PATTERN_NOT_FOUND)
				results.add(PatchSecurityPolicy.applyPatch(new File(outDir + PatchSecurityPolicy.PATCH_FILE)));
			results.add(PatchProvisionParser.applyPatch(new File(outDir + PatchProvisionParser.PATCH_FILE)));
			if (!results.contains(PatchResult.OK)) {
				if (results.contains(PatchResult.ALREADY_PATCHED))
					println("- Already patched.");
				else if (results.contains(PatchResult.PATTERN_NOT_FOUND))
					println("Unable to apply patch. Code to patch not found.");
				else
					println("Unable to apply patch. Class to patch not found.");
				continue;
			}
			
			// run smali
			println("Recompiling ...");
			runIsolated("org.jf.smali.main",
					"-a" + apiLevel,
					"-o", workDir + "/classes.dex",
					outDir);

			// create new apk
			println("Building " + apk.patchedApk + " ...");
			FileUtils.updateZip(workDir + "/" + apk.apk, workDir + "/" + apk.patchedApk, "classes.dex", workDir + "/classes.dex");
			if (apk.hasOdex && !debug) {
				removeDirectory(outDirFile);
				if (outDirFile.exists())
					removeDirectory(outDirFile);
			}
			apk.patched = true;
			successes++;
		}
		return successes;
	}
	
	static final String USAGE =
		"Usage: java -jar lib/email-policy-patch.jar <command>\n" +
			"\n" +
			"Where <command> is:\n" +
			" patch        - apply patch,\n" +
			" restore      - restore backup,\n" +
			" patch-manual - apply patch (manual mode)\n";
	static final String USAGE_PMANUAL =
			"Manual patch mode - usage:\n" +
			"\n  <work-dir> <api-level> <Email.apk> [<Exchange.apk>]\n" +
			"\n" +
			"<work-dir> must contain Email.apk, Email.odex, Exchange.apk, Exchange.odex\n" +
			"(if present) from /system/app AND all files from /system/framework. Also either\n"
			+ "/init.rc should be fetched or device environment should be put in the file 'env'.\n" +
			"\n" +
			"<apiLevel> is (for example):\n" +
			"    10 for Android 2.3.5\n" +
			"    14 for Android 4.0.0\n" +
			"    15 for Android 4.0.3\n" +
			"    16 for Android 4.1+\n" +
			"\n" +
			"<Email.apk> is the name of the Email.apk relative to the work-dir\n" +
			"    (for example, Email.apk, or EmailGoogle.apk. Not required for Android 4.1+)\n" +
			"\n" +
			"<Exchange.apk> is the name of the Exchange.apk\n" +
			"    (this file is not required for Android < 4.0.0)\n" +	
			"\n" +
			"How to fetch these files (example):\n" +
			"\n" +
			"  mkdir work\n" +
			"  cd work\n" +
			"  adb pull /system/app/Email.apk\n" +
			"  adb pull /system/app/Email.odex\n" +
			"  adb pull /system/app/Exchange.apk\n" +
			"  adb pull /system/app/Exchange.odex\n" +
			"  adb shell set >env\n" +
			"  adb pull /system/framework/\n" +
			"  cd ..\n";
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int exitCode = 1;
		boolean dirty = false;
		String notes = "";
		try {
			int rc;
			if (args.length == 0) {
				throw new PatchException(USAGE, true);
			}
			debug = args.length > 1 && args[1].startsWith("-d");
			if (debug) {
				println("Logging debugging information to " + logfile);
				log = new PrintStream(new FileOutputStream(logfile));
				String[] args2 = new String[args.length-1];
				for (int i=2; i<args.length; i++)
				    args2[i-1]=args[i];
				args2[0]=args[0];
				args = args2;
			}
			Runtime.getRuntime().addShutdownHook(new Thread() {
				@Override
				public void run() {
					System.setErr(saveErr);
					if (!done) {
						log.println(tmpbuf);
						String s = tmpbuf.toString();
						if (s.length() > 30000) {
							s = s.substring(0, 15000) + "\n\n<skip>\n\n" + s.substring(s.length() - 15000);
						}
						System.out.println(s);
						log.println("Unexpected System.exit()");
					}
				}
			});
			if ("patch".equals(args[0])) {
				createWorkDir();
				dirty = true;
				checkADB();
				waitForDevice(true);
				println("Checking device...");
				getDeviceDetails();
				if (systemPartition != null) {
					println("/system mounted on " + systemPartition + ", mode " + systemMountMode);
				}
				// check root access
				checkRootAccess();
				initBootClasspathFromDevice();
				// fetch Email.apk/odex or Exchange.apk/odex
				println("Pulling app(s) ...");
				List<PatchableAPK> apks = findApks();
				// fetch framework/
				println("Pulling libs ...");
				rc = runCommand(adb, "pull", "/system/framework/");
				if (rc != 0) {
					throw new PatchException("Unable to pull framework jars.");
				}
				
				// apply the patch(es)
				int successes = applyPatch(apks);
				if (successes == 0)
					throw new PatchException("Patch aborted.", true);

				println("Updating device ...");
				waitForDevice(false);
				remountSystem();
                final String backupDirName = "email-app-backup-" + System.currentTimeMillis();
                final String backupDir = sdcardDir + backupDirName;
                runShellCommand("mkdir " + backupDir);
				checkSdcardSUDir(backupDirName);
				successes = 0;
				for(PatchableAPK apk : apks) {
					if (!apk.patched)
						continue;
					if (!pushFile(apk.patchedApk, sdcardDir + apk.patchedApk)) {
						println("Unable to upload " + apk.patchedApk
								+ ". Please update /system/app/" + apk.apk + " manually"
								+ (apk.hasOdex ? " and delete " + apk.odex : "."));
						continue;
					}
					// backup old apk
					pushFile(apk.apk, backupDir + "/" + apk.apk);
					if (apk.hasOdex)
						pushFile(apk.odex, backupDir + "/" + apk.odex);
					if (!fileExists(backupDir + "/" + apk.apk)) {
						println("Unable to back up " + apk.apk + ". Please update " + apk.apk + " manually. The patched version is at " + sdcardDir + apk.patchedApk);
						continue;
					}
					runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.apk));
					if (apk.hasOdex)
						runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.odex));
					if (fileExists("/system/app/" + apk.apk)) {
						// try without busybox ...
						runShellCommand(wrapSU("rm /system/app/" + apk.apk));
						if (apk.hasOdex) {
							runShellCommand(wrapSU("rm /system/app/" + apk.odex));
						}
					}
					// update apk
					runShellCommand(wrapSU(busybox + "dd if=" + sdcardSUDir + apk.patchedApk + " of=/system/app/" + apk.apk));
					if (!fileExists("/system/app/" + apk.apk) && hasBusybox) {
						// try without busybox
						runShellCommand(wrapSU("dd if=" + sdcardSUDir + apk.patchedApk + " of=/system/app/" + apk.apk));
					}
                    runShellCommand(wrapSU(busybox + "chmod 644 /system/app/" + apk.apk));
                    runShellCommand(wrapSU(busybox + "chown 0.0 /system/app/" + apk.apk));
					if (fileExists("/system/app/" + apk.apk)) {
						runShellCommand(wrapSU(busybox + "rm " + sdcardSUDir + apk.patchedApk));
					} else {
						println("Unable to update " + apk.apk + ". Please update " + apk.apk + " manually. The patched version is at " + sdcardDir + apk.patchedApk);
						continue;
					}
					successes++;
				}
				if (successes == 0)
					throw new PatchException("Device update failed.", true);
				
				println("Rebooting device ...");
				runShellCommandNoWait(wrapSU("reboot"));

				notes = "\nNOTES! PLEASE READ!\n\n"
						+ "* All Email app accounts will be reset and need to be re-created.\n"
						+ "* The Email app icon might move towards the end of the application list.\n"
						+ "* LET the app install the Device Admin! Do NOT 'Cancel' any request\n"
						+ "  (no policy will actually be enforced, but the admin must be set).\n\n";
				
			} else if ("restore".equals(args[0])) {
				createWorkDir();
				dirty = true;
				// check adb connectivity
				checkADB();
				waitForDevice(true);
				println("Checking device...");
				getDeviceDetails();
				checkRootAccess();
				int n = 0;
				// new method: backup stored at /sdcard/email-app-backup-<tstamp>
				String[] sdcardFiles = listFiles(sdcardDir);
				String backupDir = null;
				List<PatchableAPK> apks = null;
				for (int i = 0; i < sdcardFiles.length; i++) {
					if (sdcardFiles[i].matches("email-app-backup-[0-9]{12,14}")) {
						String[] backupFiles = listFiles(sdcardDir + sdcardFiles[i]);
						List<PatchableAPK> apks2 = new ArrayList<Run.PatchableAPK>();
						for (String s : backupFiles) {
							if (s.endsWith(".apk")) {
								String baseName = s.substring(0, s.length() - 4);
								PatchableAPK p = new PatchableAPK(baseName);
								apks2.add(p);
								p.hasOdex = contains(backupFiles, baseName + ".odex");
							} else if (s.endsWith(".odex")) {
								continue;
							} else {
								// could be a sub-dir?
								String[] backupFiles2 = listFiles(sdcardDir + sdcardFiles[i] + "/" + s);
								for (String s2 : backupFiles2) {
									if (s2.endsWith(".apk")) {
										String baseName = s + "/" + s2.substring(0, s2.length() - 4);
										PatchableAPK p = new PatchableAPK(baseName);
										apks2.add(p);
										p.hasOdex = contains(backupFiles2, baseName + ".odex");
									}
								}
							}
						}
						if ((apks2.size() == 1 && (apks == null || apks.size() == 1)) || apks2.size() == 2) {
							backupDir = sdcardFiles[i]; // keep the last good one
							apks = apks2;
						}
					}
				}
				if (backupDir != null) {
					checkSdcardSUDir(backupDir);
					for(PatchableAPK apk : apks) {
						println("Restoring " + apk.apk + " from " + backupDir + " ...");
						remountSystem();
						runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.apk));
						runShellCommand(wrapSU(busybox + "dd if=" + sdcardSUDir + backupDir + "/" + apk.apk + " of=/system/app/" + apk.apk));
	                    runShellCommand(wrapSU(busybox + "chmod 644 /system/app/" + apk.apk));
	                    runShellCommand(wrapSU(busybox + "chown 0.0 /system/app/" + apk.apk));
	                    if (apk.hasOdex) {
	                        runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.odex));
	                        runShellCommand(wrapSU(busybox + "dd if=" + sdcardSUDir + backupDir + "/" + apk.odex + " of=/system/app/" + apk.odex));
	                        runShellCommand(wrapSU(busybox + "chmod 644 /system/app/" + apk.odex));
	                        runShellCommand(wrapSU(busybox + "chown 0.0 /system/app/" + apk.odex));
	                    }
						n++;
					}
				}
				if (n == 0) {
					println("Checking app(s) ...");
					apks = findApks();
					// old method: backup stored at /system/app
					String[] systemAppFiles = listFiles("/system/app/");
					for(PatchableAPK apk : apks) {
						if (contains(systemAppFiles, apk.apk + ".BAK")) {
							println("Restoring " + apk.apk + " from " + "/system/app/" + apk.apk + ".BAK" + " ...");
							remountSystem();
							runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.apk));
							runShellCommand(wrapSU(busybox + "rm /system/app/" + apk.odex));
							runShellCommand(wrapSU(busybox + "mv /system/app/" + apk.apk + ".BAK /system/app/" + apk.apk));
							runShellCommand(wrapSU(busybox + "mv /system/app/" + apk.odex + ".BAK /system/app/" + apk.odex));
							if (!fileExists("/system/app/" + apk.apk + ".BAK")) {
								n++;
								continue;
							}
	   						println("-Failed!");
						}
					}
				}
				if (n == 0)
					throw new PatchException("No backup found on device.", true);
				println("Rebooting device ...");
				runShellCommandNoWait(wrapSU("reboot"));
			} else if ("patch-manual".equals(args[0])) {
				if (args.length < 4)
					throw new PatchException(USAGE_PMANUAL, true);
				workDir = args[1];
				workDirFile = new File(workDir);
				if (!workDirFile.isDirectory())
					throw new PatchException(workDirFile.getAbsolutePath() + " must be a directory", true);
				if (!args[2].matches("\\d+"))
					throw new PatchException("apiLevel must be an integer", true);
				apiLevel = Integer.parseInt(args[2]);
				List<PatchableAPK> apks = new ArrayList<PatchableAPK>();
				initBootClasspathOffline();
				for (int i=3; i<Math.min(5, args.length); i++) {
					String baseName = args[i].replaceFirst("\\.apk$", "");
					File apkFile = new File(workDirFile, baseName + ".apk");
					File odexFile = new File(workDirFile, baseName + ".odex");
					if (!apkFile.isFile())
						throw new PatchException("Can't find " + apkFile.getAbsolutePath(), true);
					PatchableAPK apk = new PatchableAPK(baseName);
					apk.hasOdex = odexFile.exists();
					apks.add(apk);
				}
				int successes = applyPatch(apks);
				println(successes + " apk(s) patched.");
				for (PatchableAPK apk : apks) {
					if (apk.patched) {
						println("* Updated: " + apk.apk + " => " + apk.patchedApk);
						if (apk.hasOdex)
							println("* Deleted: " + apk.odex + " (must be deleted from device)");
					}
				}
			} else {
				throw new PatchException("Invalid arguments.", true);
			}
			println("Done.");
			if (dirty && !debug)
				removeDirectory(workDirFile);
			exitCode = 0;
		} catch (PatchException e) {
			System.setErr(saveErr);
			System.err.println("\n*** " + e.getMessage() + "\n");
		} catch (Throwable e) {
			System.setErr(saveErr);
			e.printStackTrace();
		}
		done = true;
		try {
			if (dirty)
				runCommand(adb, "kill-server");
			println(notes);
			if (!debug && exitCode != 0 && !messageMode) {
				FileOutputStream f = new FileOutputStream(logfile);
				f.write(logbuf.toByteArray());
				f.close();
				println("Debug log written to " + logfile);
			}
			log.close();
			System.exit(exitCode);
		} catch (IOException e) {
			// ignore
        }

	}

	private static boolean contains(String[] arr, String string) {
		for (String s : arr)
			if (s == string || (s != null && s.equals(string)))
				return true;
		return false;
	}

	static void checkSdcardSUDir(String fileName) throws IOException {
		for (String dir : sdcardSUDirs) {
			if (fileExistsSU(dir + fileName)) {
				sdcardSUDir = dir;
				return;
			}
		}
		println("Unable to determine sdcard location for user root");
		sdcardSUDir = sdcardDir;
	}

	static String[] listFiles(String remoteDir) throws IOException {
        runShellCommand("ls " + (remoteDir.endsWith("/") ? remoteDir : remoteDir + "/"));
        return cmdout.toString().split("(?s)[ \\t\\r\\n]+");
    }

    static boolean pullFile(String remoteFile, String localFile) throws IOException {
    	int rc = runCommand(adb, "pull", remoteFile, localFile);
    	return rc == 0;
	}

	static boolean pushFile(String localFile, String remoteFile) throws IOException {
    	int rc = runCommand(adb, "push", localFile, remoteFile);
    	return rc == 0;
	}

	static boolean fileExists(String fullRemotePath) throws IOException {
        String remoteDir = fullRemotePath.replaceAll("[^\\/]+$", "");
	    runShellCommand("ls " + remoteDir);
	    String fileName = fullRemotePath.replaceAll(".*\\/", "");
	    String ls = cmdout.toString();
		return ls.contains(fileName);
	}

	static boolean fileExistsSU(String fullRemotePath) throws IOException {
        String remoteDir = fullRemotePath.replaceAll("[^\\/]+$", "");
	    runShellCommand(wrapSU("ls " + remoteDir));
	    String fileName = fullRemotePath.replaceAll(".*\\/", "");
	    String ls = cmdout.toString();
		return ls.contains(fileName);
	}

	static URL[] getClassPathURLs() throws MalformedURLException {
		final String javaClassPath = System.getProperty("java.class.path");
		final String pathSeparator = System.getProperty("path.separator");
		final List<URL> urls = new ArrayList<URL>();
		for (String s : javaClassPath.split(pathSeparator))
			urls.add(new File(s).toURI().toURL());
		return urls.toArray(new URL[urls.size()]);
	}

	static void runIsolated(String className, String ... args) throws Exception {
		tmpbuf.reset();
		URLClassLoader tmpcl = new URLClassLoader(getClassPathURLs(), null);
		Thread.currentThread().setContextClassLoader(tmpcl);
//		ClassLoader tmpcl = Run.class.getClassLoader();
		log.println("Running " + className +" : " + join(" ", args));
		System.setErr(new PrintStream(tmpbuf));
		try {
			Method mainMethod = tmpcl.loadClass(className).getMethod("main", new Class<?>[] { String[].class });
			mainMethod.invoke(null, new Object[] { args });
		} finally {
			Thread.currentThread().setContextClassLoader(null);
			System.setErr(saveErr);
		}
		log.println(tmpbuf);
	}

//	static String trim(String s) {
//	Pattern p = Pattern.compile("^\\s*(.*?)\\s*$", Pattern.DOTALL);
//	Matcher m = p.matcher(s);
//	if (m.find())
//		return m.group(1);
//	return s;
//}

}
