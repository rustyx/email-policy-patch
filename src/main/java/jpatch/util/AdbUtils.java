package jpatch.util;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.zip.ZipInputStream;

public class AdbUtils {

	public static String getOsName() {
		String os = System.getProperty("os.name", "").toLowerCase();
		if (os.startsWith("mac"))
			os = "macosx";
		else if (os.startsWith("linux"))
			os = "linux";
		else
			os = "windows";
		return os;
	}

	public static void fetchAdb(File workDir) throws IOException {
		String os = getOsName();
		URL url = new URL("http://dl.google.com/android/repository/platform-tools_r19-" + os + ".zip");
		ZipInputStream in = new ZipInputStream(url.openStream());
		FileUtils.unzip(in, workDir);
		in.close();
	}
	
	public static boolean isAdbFetched(File workDir) {
		File adbFile = new File(workDir, getAdbPath() + (getOsName().equals("windows") ? ".exe" : ""));
		return adbFile.exists() && adbFile.canExecute();
	}
	
	public static String getAdbPath() {
		return "platform-tools/adb";
	}

}
