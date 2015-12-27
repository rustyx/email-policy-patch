package jpatch.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApkXml {
    static final int END_DOC_TAG = 0x00100101;
    static final int START_TAG = 0x00100102;
    static final int END_TAG = 0x00100103, CHUNK_RESOURCEIDS = 0x00080180;
    
    static class Attribute {
        String name;
        String value;
        Attribute(String attrName, String attrValue) {
            this.name = attrName;
            this.value = attrValue;
        }
    }
    
    static class Element {
        String name;
        final List<Attribute> attributes = new ArrayList<Attribute>();
        final List<Element> children = new ArrayList<Element>();
        Element(String name) {
            this.name = name;
        }
    }
    
    Element root;
//    private int[] resourceIDs;
    
    public ApkXml(byte[] xml) {
        final ArrayDeque<Element> elementStack = new ArrayDeque<Element>();
        
        final int numStrings = dword(xml, 4 * 4);
        final int stringTabOffset = 0x24;
        final int stringOffset = stringTabOffset + numStrings * 4;
        int xmlTagOffset = dword(xml, 3 * 4);
        for (int i = xmlTagOffset; i < xml.length - 4; i += 4) {
            if (dword(xml, i) == START_TAG) {
                xmlTagOffset = i;
                break;
            }
        }
        int offset = xmlTagOffset;
        while (offset < xml.length) {
            final int chunkType = dword(xml, offset);
//            final int chunkSize = dword(xml, offset + 4);
            final int tagNameOffset = dword(xml, offset + 5 * 4);

            if (chunkType == START_TAG) {
                final Element e = new Element(getXmlString(xml, stringTabOffset, stringOffset, tagNameOffset));
                final int numAttrs = dword(xml, offset + 7 * 4) & 0xFFFF;
                offset += 9 * 4;
                for (int i = 0; i < numAttrs; i++) {
                    final int attrNameOffset = dword(xml, offset + 1 * 4);
                    final int attrValueRawOffset = dword(xml, offset + 2 * 4);
                    final int attrType = dword(xml, offset + 3 * 4);
                    final int attrResId = dword(xml, offset + 4 * 4);
                    offset += 5 * 4;

                    String attrName = getXmlString(xml, stringTabOffset, stringOffset, attrNameOffset);
                    String attrValue = attrValueRawOffset != -1 ? getXmlString(xml, stringTabOffset, stringOffset, attrValueRawOffset) : getTypedValue(attrType, attrResId);
                    e.attributes.add(new Attribute(attrName, attrValue));
                }
                if (elementStack.size() > 0)
                    elementStack.getLast().children.add(e);
                else
                    root = e;
                elementStack.addLast(e);
            }
            else if (chunkType == END_TAG) {
                elementStack.removeLast();
                offset += 6 * 4;
//            }
//            else if (chunkType == CHUNK_RESOURCEIDS) {
//                if (chunkSize < 8 || (chunkSize % 4) != 0) {
//                    throw new IllegalStateException("Invalid resource ids size ("
//                            + chunkSize + ").");
//                }
//                resourceIDs = getIntArray(xml, offset + 8, chunkSize / 4 - 2);
//                continue;
            } else {
                break;
            }
        }
    }

    private String getTypedValue(int attrType, int attrData) {
        switch (attrType >>> 24) {
            case 0:
                return "null";
            case 1: // resource id
                return "@{res:0x" + Integer.toHexString(attrData) + "}";
            case 2: // reference in the current theme style
                return "@{theme:0x" + Integer.toHexString(attrData) + "}";
            case 3:
                return null;  // string value
            case 0x12: // boolean
                return attrData == 0 ? "false" : "true";
            case 0x10: // int dec
                return Integer.toString(attrData);
            case 0x11: // int hex
                return attrData < 0x10 ? Integer.toString(attrData) : "0x" + Integer.toHexString(attrData);
            case 4: // float
            case 5: // dimension
            case 6: // fraction
            case 0x1c: // color_argb
            case 0x1d: // color_rgb
            case 0x1e: // color_argb4
            case 0x1f: // color_rgb4
            default:
                return "@{" + Integer.toHexString(attrType >>> 24) + ":0x" + Integer.toHexString(attrData) + "}";
        }
    }

//    private int[] getIntArray(byte[] xml, int offset, int size) {
//        int[] array = new int[size];
//        for (int i=0; i<size; i++) {
//            array[i] = dword(xml, offset+i*4);
//        }
//        return array;
//    }

    private String getXmlString(byte[] xml, int sitOff, int stOff, int strInd) {
        if (strInd < 0)
            return null;
        final int strOff = stOff + dword(xml, sitOff + strInd * 4);
        final int strLen = xml[strOff + 1] << 8 & 0xff00 | xml[strOff] & 0xff;
        final byte[] chars = new byte[strLen];
        for (int i = 0; i < strLen; i++) {
            chars[i] = xml[strOff + 2 + i * 2];
        }
        return new String(chars);
    }

    private int dword(byte[] arr, int off) {
        return arr[off + 3] << 24 & 0xff000000 | arr[off + 2] << 16 & 0xff0000 | arr[off + 1] << 8 & 0xff00 | arr[off] & 0xFF;
    }
    
    public String[] getAttributeValues(String path, String attrName) {
        final String[] elements = path.split("/");
        final List<String> values = new ArrayList<String>();
        collectAttributeValuesRecursive(root, elements, 0, attrName, values);
        return values.toArray(new String[values.size()]);
    }

    private void collectAttributeValuesRecursive(Element e, String[] names, int level, String attrName, List<String> values) {
        if (level < names.length)
            for (Iterator<Element> iter = e.children.iterator(); iter.hasNext(); ) {
                final Element elem = iter.next();
                if (elem.name.equals(names[level]))
                    collectAttributeValuesRecursive(elem, names, level+1, attrName, values);
            }
        else
            for (Iterator<Attribute> iter = e.attributes.iterator(); iter.hasNext(); ) {
                final Attribute attr = iter.next();
                if (attr.name.equals(attrName))
                    values.add(attr.value);
            }                    
    }

    public String[] getExtraLibs() {
        return getAttributeValues("application/uses-library", "name");
    }

    public void dumpXML(PrintStream out) {
        dumpXMLRecursive(out, root, 0);
    }

    private void dumpXMLRecursive(PrintStream out, Element e, int indent) {
        final StringBuilder sb = new StringBuilder("<").append(e.name);
        for (Iterator<Attribute> iter = e.attributes.iterator(); iter.hasNext(); ) {
            Attribute attr = iter.next();
            sb.append(" ").append(attr.name).append("=\"").append(attr.value).append("\"");
        }
        printIndent(out, indent, sb.append(e.children.size() == 0 ? "/>" : ">").toString());
        indent++;
        for (Iterator<Element> iter = e.children.iterator(); iter.hasNext(); ) {
            Element e2 = iter.next();
            dumpXMLRecursive(out, e2, indent);
        }
        if (e.children.size() > 0)
            printIndent(out, indent-1, "</" + e.name + ">");
    }
    
    private void printIndent(PrintStream out, int indent, String str) {
        out.print("                                                                 ".substring(0, indent * 2));
        out.println(str);
    }

    public static void main(String[] args) {
        try {
            FileInputStream in = new FileInputStream(args[0]);
            FileOutputStream out = new FileOutputStream(args[1]);
            byte[] input = FileUtils.toByteArray(in);
            ApkXml manifest = new ApkXml(input);
//            String[] extraLibs = manifest.getExtraLibs();
            manifest.dumpXML(new PrintStream(out));
            out.close();
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }
}
