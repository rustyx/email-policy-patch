package jpatch.emailPolicy;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import jpatch.util.FileUtils;

import org.junit.Test;

public class PatchSecurityPolicyTest {
	
	static File createCopy(String path) throws IOException {
		File f = new File("target/tmp" + path);
		f.getParentFile().mkdirs();
		InputStream in = PatchSecurityPolicyTest.class.getResourceAsStream(path);
		FileOutputStream out = new FileOutputStream(f);
		FileUtils.copyStream(in, out);
		in.close();
		out.close();
		return f;
	}
	
	@Test
	public void testGingerbread() throws Exception {
		File f = createCopy("/gingerbread/com/android/email/SecurityPolicy.smali");
		assertEquals(PatchResult.OK, PatchSecurityPolicy.applyPatch(f));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchSecurityPolicy.applyPatch(f));
	}
	
	@Test
	public void testICS() throws Exception {
		File f1 = createCopy("/ics/com/android/email/SecurityPolicy.smali");
		assertEquals(PatchResult.OK, PatchSecurityPolicy.applyPatch(f1));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchSecurityPolicy.applyPatch(f1));
	}
	
	@Test
	public void testICSNoDebugging() throws Exception {
		File f1 = createCopy("/ics-att/com/android/email/SecurityPolicy.smali");
		assertEquals(PatchResult.OK, PatchSecurityPolicy.applyPatch(f1));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchSecurityPolicy.applyPatch(f1));
	}
	
}
