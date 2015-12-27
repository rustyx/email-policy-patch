package jpatch.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/**
 * zip writer based on JRE's built-in zip support.
 * writes less optimal zip files than commons-compress (LOC with 0 length + EXT),
 * but requires no extra libs.
 */
public class ZipUtils {

    public static void updateZip(String zipFileName, String fileName, String filePath) throws IOException {
        final File zipFile = new File(zipFileName);
        final File zip2File = new File(zipFileName + ".tmp");
        final ZipInputStream zip = new ZipInputStream(new BufferedInputStream(new FileInputStream(zipFile), 256*1024));
        final ZipOutputStream zip2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zip2File), 256*1024));
        try {
	        ZipEntry entry, e;
	        while ((entry = zip.getNextEntry()) != null) {
	            if (entry.getName().equals(fileName)) {
	                // skip
	                continue;
	            }
	            e = new ZipEntry(entry.getName());
	            e.setTime(entry.getTime());
	            if (entry.getSize() > 0 && entry.getMethod() == ZipEntry.STORED) {
	            	e.setMethod(ZipEntry.STORED);
	            	e.setCrc(entry.getCrc());
	            	e.setCompressedSize(entry.getCompressedSize());
	            	e.setSize(entry.getSize());
	            }
	            zip2.putNextEntry(e);
	            if (!entry.isDirectory()) {
	                copyStream(zip, zip2);
	            }
	        }
	        entry = new ZipEntry(fileName);
	        File f = new File(filePath);
	        entry.setTime(f.lastModified());
	        entry.setSize(f.length());
	        zip2.putNextEntry(entry);
	        FileInputStream in = new FileInputStream(f);
	        try {
	            copyStream(in, zip2);
	        } finally {
	            in.close();
	        }
        } finally {
            zip2.close();
            zip.close();
        }
        if (!zipFile.delete())
            throw new IOException("Unable to delete " + zipFileName);
        if (!zip2File.renameTo(zipFile))
            throw new IOException("Unable to rename " + zip2File.getName() + " to " + zipFileName);
    }

    static void copyStream(InputStream in, OutputStream out) throws IOException {
        final byte buf[] = new byte[256*1024];
        int i;
        do {
            i = in.read(buf);
            if (i > 0)
                out.write(buf, 0, i);
        } while (i >= 0);
    }


}
