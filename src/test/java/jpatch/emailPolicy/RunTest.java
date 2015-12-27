package jpatch.emailPolicy;

import static org.junit.Assert.*;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import jpatch.emailPolicy.Run.PatchableAPK;
import jpatch.util.FileUtils;

import org.junit.Test;

public class RunTest {

    static File createCopy(String file, String path) throws IOException {
        File f = new File(path, file);
        f.getParentFile().mkdirs();
        InputStream in = RunTest.class.getResourceAsStream("/" + file);
        FileOutputStream out = new FileOutputStream(f);
        FileUtils.copyStream(in, out);
        in.close();
        out.close();
        return f;
    }
    
	@Test
	public void testGetAPILevel() {
		assertEquals(2, Run.getAPILevel("1.1", "x"));
		assertEquals(3, Run.getAPILevel("1.5.1", "x"));
		assertEquals(5, Run.getAPILevel("2.0", "x"));
		assertEquals(6, Run.getAPILevel("2.0.1", "x"));
		assertEquals(6, Run.getAPILevel("2.0.65blaah", "x"));
		assertEquals(10, Run.getAPILevel("2.3.33", "x"));
		assertEquals(14, Run.getAPILevel("4.0.2", "x"));
		assertEquals(10, Run.getAPILevel("11", "GINGERBREAD"));
		assertEquals(15, Run.getAPILevel("?", "ICS"));
		Run.getAPILevel("?", "?");
	}
	
	@Test
	public void testParseMount() {
		Run.parseMount("none on /dev/cpuctl type cgroup (rw,relatime,cpu)\n" +
				"/dev/block/mmcblk0p9 on /system type ext4 (ro,relatime,barrier=1,data=ordered)\n" +
				"/dev/block/mmcblk0p7 on /cache type ext4 (rw,nosuid,nodev,noatime,barrier=1,data=ordered)\n");
		assertEquals("/dev/block/mmcblk0p9", Run.systemPartition);
		assertEquals("ro", Run.systemMountMode);
		Run.parseMount("none /dev/cpuctl cgroup rw,relatime,cpu 0 0\n" +
				"/dev/block/mmcblk0p9 /system ext4 ro,relatime,barrier=1,data=ordered 0 0\n" +
				"/dev/block/mmcblk0p7 /cache ext4 rw,nosuid,nodev,noatime,barrier=1,data=ordered");
		assertEquals("/dev/block/mmcblk0p9", Run.systemPartition);
		assertEquals("ro", Run.systemMountMode);
		Run.parseMount("none /dev/cpuctl cgroup rw,relatime,cpu 0 0\n" +
				"xxx xyyyxx /system xxx r,relatime,barrier=1,data=ordered 0 0\n" +
				"/dev/block/mmcblk0p7 /cache ext4 rw,nosuid,nodev,noatime,barrier=1,data=ordered");
		assertEquals("xxx", Run.systemPartition);
		assertEquals("?", Run.systemMountMode);
	}

	@Test
	public void testBuildClasspath() throws IOException, InterruptedException {
        createFile("target/cp/ext.jar");
		createFile("target/cp/touchwiz.jar");
		createFile("target/cp/core.jar");
        createFile("target/cp/a.jar");
        createFile("target/cp/com.google.android.maps.jar");
        createFile("target/cp/b.jar");
		Run.workDirFile = new File("target/cp");
		PatchableAPK apk = new PatchableAPK("test");
		createCopy(apk.apk, Run.workDirFile.getPath());
        String cp = Run.buildClassPath(apk);
		assertEquals("core.jar:ext.jar:com.google.android.maps.jar:touchwiz.jar", cp);
	}
	
	static File createFile(String name) throws IOException {
		File f = new File(name);
		f.getParentFile().mkdirs();
		FileOutputStream out = new FileOutputStream(f);
		out.write('x');
		out.close();
		return f;
	}
	
}
