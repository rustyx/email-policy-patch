package jpatch.emailPolicy;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PatchPolicySet {
	
	static final String PATCH_FILE = "com/android/email/SecurityPolicy$PolicySet.smali";
	static final String argOverride[][] = new String[][]{
		{"I", "0", "minPasswordLength"},
		{"I", "0", "passwordMode"},
		{"I", "0", "maxPasswordFails"},
		{"I", "0", "maxScreenLockTime"},
		{"Z", null, "requireRemoteWipe"},
		{"Z", "0", "passwordRecoverable"},
		{"I", "0", "passwordExpires"},
		{"I", "0", "passwordHistory"},
		{"Z", "1", "attachmentsEnabled"},
		{"I", "0", "maxAttachmentSize"},
		{"Z", "1", "allowStorageCard"},
		{"Z", "1", "allowCamera"},
		{"Z", "1", "allowWifi"},
		{"Z", "1", "allowTextMessaging"},
		{"Z", "1", "allowPOPIMAPEmail"},
		{"Z", "1", "allowHTMLEmail"},
		{"Z", "1", "allowBrowser"},
		{"Z", "1", "allowInternetSharing"},
		{"Z", "0", "requireManualSyncWhenRoaming"},
		{"I", "2", "allowBluetoothMode"},
		{"I", "0", "minPasswordComplexChars"},
		{"I", "0", "maxCalendarAgeFilter"},
		{"I", "0", "maxEmailAgeFilter"},
		{"I", "0", "maxEmailBodyTruncationSize"},
		{"I", "0", "maxEmailHtmlBodyTruncationSize"},
		{"Z", null, "requireSignedSMIMEMessages"},
		{"Z", null, "requireEncryptedSMIMEMessages"},
		{"I", null, "requireSignedSMIMEAlgorithm"},
		{"I", null, "requireEncryptionSMIMEAlgorithm"},
		{"I", null, "allowSMIMEEncryptionAlgorithmNegotiation"},
		{"Z", null, "allowSMIMESoftCerts"},
		{"Z", "1", "allowDesktopSync"},
		{"Z", "1", "allowIrDA"},
		{"Z", "0", "requireDeviceEncryption"},
		{"Z", "0", "requireStorageCardEncryption"}
	};

	public static String applyPatch(File f) throws IOException {
		String s;
		BufferedReader fr = new BufferedReader(new FileReader(f));
		List<String> lines = new ArrayList<String>();
		while ((s = fr.readLine()) != null) {
			lines.add(s);
		}
		fr.close();
		String constructorArgs = "";
		int mode = 0;
		Pattern initPattern = Pattern.compile("\\.method public constructor <init>\\((II.*?)\\).*");
		Pattern setParamPattern = Pattern.compile("\\s*const(/[0-9]+)?\\s+p([0-9]+)\\s*,.*");
		Matcher m;
		int registersSet[] = new int[argOverride.length];
		Arrays.fill(registersSet, 0);
		int numRegsSet = 0, numRegsDup = 0;
		for (int i = 0; i < lines.size() && mode < 10; i++) {
			s = lines.get(i);
			switch (mode) {
			case 0:
				m = initPattern.matcher(s);
				if (m.find()) {
					constructorArgs = m.group(1);
					mode = 1;
				}
				break;
			case 1:
				if (s.matches("^\\s*.registers .*"))
					mode = 2;
				break;
			case 2:
				if (s.matches("^\\s*\\..*") || s.matches("\\s*") || s.matches("\\s*#.*"))
					break;
				if (s.matches("^\\s*invoke.*")) {
					mode = 3;
				} else
					return "Unable to apply patch - invalid file format (step 2, line: '" + s + "')";
				break;
			case 3:
				// apply register overrides
				for (int j = 0; j < constructorArgs.length(); j++) {
					if (argOverride[j][0].charAt(0) != constructorArgs.charAt(j))
						break;
					if (argOverride[j][1] != null) {
						registersSet[j] = i;
						lines.add(i++, "const/16 p" + (j+1) + ", " + argOverride[j][1] + "  # " + argOverride[j][2]);
						numRegsSet++;
					}
				}
				i--;
				mode = 4;
				break;
			case 4:
				if (s.matches("^\\s*\\..*") || s.matches("\\s*") || s.matches("\\s*#.*"))
					break;
				m = setParamPattern.matcher(s);
				if (m.find()) {
					int reg = Integer.parseInt(m.group(2));
					if (reg > 0 && reg <= registersSet.length && registersSet[reg-1] > 0) {
						numRegsDup++;
						lines.set(registersSet[reg-1], "# (dup) " + lines.get(registersSet[reg-1]));
					}
				} else
					mode = 10;
				break;
			}
		}
		if (mode != 10)
			return "Unable to apply patch - invalid file format (mode " + mode + ")";
		if (numRegsSet == 0)
			return "Unable to apply patch - invalid file format (0 registers matched)";
		if (numRegsDup >= numRegsSet)
			return "Unable to apply patch - patch already applied";
		System.out.println((numRegsSet - numRegsDup) + " policy attributes patched.");
		FileWriter w = new FileWriter(f);
		for (String str : lines) {
			w.write(str + "\n");
		}
		w.close();
		return null;
	}
	
	public static void main(String[] args) {
		try {
			File f = new File("work/out/" + PatchPolicySet.PATCH_FILE);
			if (!f.exists())
				throw new IllegalStateException(
						"Unable to apply patch. Class SecurityPolicy.PolicySet not found.");
			System.out.println(applyPatch(f));
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}

}
