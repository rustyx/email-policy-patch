package jpatch.emailPolicy;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import jpatch.util.FileUtils;

import org.junit.Test;

public class PatchPolicyTest {
	
	static File createCopy(String path) throws IOException {
		File f = new File("target/tmp" + path);
		f.getParentFile().mkdirs();
		InputStream in = PatchPolicyTest.class.getResourceAsStream(path);
		FileOutputStream out = new FileOutputStream(f);
		FileUtils.copyStream(in, out);
		in.close();
		out.close();
		return f;
	}
	
	@Test
	public void testJB() throws Exception {
		File f2 = createCopy("/jb/com/android/emailcommon/provider/Policy.smali");
		assertEquals(PatchResult.OK, PatchPolicy.applyPatch(f2));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchPolicy.applyPatch(f2));
	}
	
}
