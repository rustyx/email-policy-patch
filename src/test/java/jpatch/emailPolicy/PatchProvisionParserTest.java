package jpatch.emailPolicy;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import jpatch.util.FileUtils;

import org.junit.Test;

public class PatchProvisionParserTest {
	
	static File createCopy(String path) throws IOException {
		File f = new File("target/tmp" + path);
		f.getParentFile().mkdirs();
		InputStream in = PatchProvisionParserTest.class.getResourceAsStream(path);
		FileOutputStream out = new FileOutputStream(f);
		FileUtils.copyStream(in, out);
		in.close();
		out.close();
		return f;
	}
	
	@Test
	public void testICS() throws Exception {
		File f2 = createCopy("/ics/com/android/exchange/adapter/ProvisionParser.smali");
		assertEquals(PatchResult.OK, PatchProvisionParser.applyPatch(f2));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchProvisionParser.applyPatch(f2));
	}
	
	@Test
	public void testICSNoDebugging() throws Exception {
		File f2 = createCopy("/ics-att/com/android/exchange/adapter/ProvisionParser.smali");
		assertEquals(PatchResult.OK, PatchProvisionParser.applyPatch(f2));
		assertEquals(PatchResult.ALREADY_PATCHED, PatchProvisionParser.applyPatch(f2));
	}
	
}
