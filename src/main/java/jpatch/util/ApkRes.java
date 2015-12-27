package jpatch.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

//TODO finish this (read packages)
public class ApkRes {
    
    public final static short TYPE_NONE = -1, TYPE_TABLE = 0x0002,
                    TYPE_PACKAGE = 0x0200, TYPE_TYPE = 0x0202,
                    TYPE_CONFIG = 0x0201;
    private static final int CHUNK_TYPE = 0x001C0001;
    private static final int UTF8_FLAG = 0x00000100;
    private final CharsetDecoder decoder;
    private final int[] stringOffsets;
    private final byte[] strings;
    private final boolean isUTF8;

    @SuppressWarnings("unused")
    public ApkRes(InputStream input) throws IOException {
        final LEDataInputStream in = new LEDataInputStream(new BufferedInputStream(input));
        final int type = in.readShort();
        if (type != TYPE_TABLE)
            throw new IllegalStateException("Invalid resource table chunk type");
        in.readShort();
        int blockSize = in.readInt();
        int numPackages = in.readInt();
        int stringTableType = in.readInt();
        if (stringTableType != CHUNK_TYPE)
            throw new IllegalStateException("Invalid string table chunk type");
        int chunkSize = in.readInt();
        int stringCount = in.readInt();
        int styleOffsetCount = in.readInt();
        int flags = in.readInt();
        int stringsOffset = in.readInt();
        int stylesOffset = in.readInt();
        isUTF8 = (flags & UTF8_FLAG) != 0;
        decoder = Charset.forName(isUTF8 ? "UTF-8" : "UTF-16LE").newDecoder();
        stringOffsets = readIntArray(in, stringCount);
        if (styleOffsetCount != 0) 
            in.skipBytes(styleOffsetCount * 4);
        int sz = ((stylesOffset == 0) ? chunkSize : stylesOffset) - stringsOffset;
        strings = new byte[sz];
        in.readFully(strings);
    }

    public String getString(int index) {
        if (index < 0 || index >= stringOffsets.length) {
            return null;
        }
        int offset = stringOffsets[index];
        int length;

        if (!isUTF8) {
            length = getShort(strings, offset) * 2;
            offset += 2;
        } else {
            offset += getVarint(strings, offset)[1];
            int[] varint = getVarint(strings, offset);
            offset += varint[1];
            length = varint[0];
        }
        try {
            return decoder.decode(ByteBuffer.wrap(strings, offset, length)).toString();
        } catch (CharacterCodingException ex) {
            return null;
        }
    }

    private static final int getShort(byte[] array, int offset) {
        return (array[offset + 1] & 0xff) << 8 | array[offset] & 0xff;
    }

    private static final int[] getVarint(byte[] array, int offset) {
        int val = array[offset];
        boolean more = (val & 0x80) != 0;
        val &= 0x7f;

        if (!more) {
            return new int[] { val, 1 };
        } else {
            return new int[] { val << 8 | array[offset + 1] & 0xff, 2 };
        }
    }

    private int[] readIntArray(LEDataInputStream in, int length) throws IOException {
        int[] array = new int[length];
        for(int i = 0; i < length; i++) {
            array[i] = in.readInt();
        }
        return array;
    }

    public static void main(String[] args) {
        try {
            FileInputStream in = new FileInputStream(args[0]);
            PrintWriter out = new PrintWriter(args[1], "UTF-8");
            ApkRes res = new ApkRes(in);
            for (int i=0; i<res.stringOffsets.length; i++) {
                out.println(Integer.toHexString(i) + ": " + res.getString(i));
            }
            out.close();
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }
}
