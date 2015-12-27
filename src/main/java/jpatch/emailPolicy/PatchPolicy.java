package jpatch.emailPolicy;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PatchPolicy {
	
	public static final String PATCH_FILE = "com/android/emailcommon/provider/Policy.smali";
	
	public static PatchResult applyPatch(File f) throws IOException {
		String s;
		if (!f.isFile())
			return PatchResult.FILE_NOT_FOUND;
		BufferedReader fr = new BufferedReader(new FileReader(f));
		List<String> lines = new ArrayList<String>();
		while ((s = fr.readLine()) != null) {
			lines.add(s);
		}
		fr.close();
		
		PatchTracker tracker = new PatchTracker();
		patchNormalize(lines, tracker);
		
		if (tracker.numberOfChanges == 0 && tracker.numberAlreadyPatched > 0) {
			return PatchResult.ALREADY_PATCHED;
		}
		if (tracker.numberOfChanges == 0) {
			return PatchResult.PATTERN_NOT_FOUND;
		}
		FileWriter w = new FileWriter(f);
		for (String str : lines) {
			w.write(str + "\n");
		}
		w.close();
		return PatchResult.OK;
	}
	
	private static void patchNormalize(List<String> lines, PatchTracker tracker) {
		String s;
		int mode = 0;
		Pattern methodPattern = Pattern.compile("^\\.method public (static )?(normalize\\(.*)"); 
		Pattern anchorPattern = Pattern.compile("^\\s*\\.registers .*");
		Matcher m;
		String methodName = null;
		for (int i = 0; i < lines.size() && mode < 10; i++) {
			s = lines.get(i);
			switch (mode) {
				case 0:
					m = methodPattern.matcher(s);
					if (m.find()) {
						methodName = m.group(2);
						mode = 1;
					}
					break;
				case 1:
					if (anchorPattern.matcher(s).find()) {
						mode = 2;
					}
					break;
				case 2:
					if (s.matches("^\\s*\\..*") || s.matches("\\s*") || s.matches("\\s*#.*")) {
						break;
					}
					if (s.matches("\\s*const/\\d+\\s+v0,\\s*0?x?0+\\s*")) {
						mode = 0;
						tracker.numberAlreadyPatched++;
						break;
					}
					// for non-static methods at least 1 register is present for the 'this' parameter
					lines.add(i++, 	"\n" +
									"# begin email policy patch\n" +
									"    const/4 v0, 0x0\n" +
									"    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z\n" +
									"    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z\n" +
									"# end email policy patch\n");
					System.out.println("Patching com/android/emailcommon/provider/Policy." + methodName);
					tracker.numberOfChanges++;
					mode = 0;
					break;
			}
		}
	}
	
}
