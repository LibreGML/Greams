package age.of.civilizations2.jakowski.lukasz;

import java.util.ArrayList;
import java.util.List;

/** 100-entry ring plus favorites. Supports hist, !!, !n, !-k, !prefix, fav. */
public final class ConsoleHistory {
    public static final int CAP = 100;
    private static final int FAV_CAP = 40;

    private static final String[] ring = new String[CAP];
    private static int start;
    private static int size;
    private static final List favs = new ArrayList();

    private ConsoleHistory() {
    }

    public static void push(String line) {
        if (line == null) {
            return;
        }
        String text = line.trim();
        if (text.length() == 0) {
            return;
        }
        try {
            if (size == CAP) {
                start = (start + 1) % CAP;
                size--;
            }
            ring[(start + size) % CAP] = text;
            size++;
        } catch (Throwable ignored) {
        }
    }

    public static int size() {
        return size;
    }

    /** 1-based, 1 is the oldest entry still in the ring. */
    public static String get(int index1) {
        try {
            if (index1 < 1 || index1 > size) {
                return null;
            }
            return ring[(start + index1 - 1) % CAP];
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static String last() {
        return get(size);
    }

    /** !-k, k=1 is the latest command. */
    public static String relative(int k) {
        if (k < 1) {
            return null;
        }
        return get(size - k + 1);
    }

    public static String prefix(String prefix) {
        if (prefix == null || prefix.length() == 0) {
            return null;
        }
        try {
            for (int i = size; i >= 1; i--) {
                String line = get(i);
                if (line != null && line.startsWith(prefix)) {
                    return line;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /**
     * Expand a bang line. Returns the same text when it is not a bang.
     * Returns null when the bang does not resolve.
     */
    public static String expand(String line) {
        if (line == null) {
            return null;
        }
        String text = line.trim();
        if (!text.startsWith("!")) {
            return text;
        }
        try {
            if (text.equals("!!")) {
                return last();
            }
            if (text.startsWith("!-")) {
                Integer k = ConsoleContext.intOrNull(text.substring(2));
                if (k == null) {
                    return null;
                }
                return relative(k.intValue());
            }
            String rest = text.substring(1);
            if (rest.length() == 0) {
                return null;
            }
            Integer n = ConsoleContext.intOrNull(rest);
            if (n != null) {
                return get(n.intValue());
            }
            return prefix(rest);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static void print() {
        try {
            if (size == 0) {
                ConsoleOut.usage("历史为空");
                return;
            }
            for (int i = 1; i <= size; i++) {
                ConsoleOut.usage(i + "  " + get(i));
            }
        } catch (Throwable t) {
            ConsoleOut.err("历史读取失败");
        }
    }

    public static void favAdd(String line) {
        if (line == null) {
            return;
        }
        String text = line.trim();
        if (text.length() == 0) {
            return;
        }
        try {
            if (favs.size() >= FAV_CAP) {
                favs.remove(0);
            }
            favs.add(text);
            ConsoleOut.ok("收藏 " + favs.size() + "  " + text);
        } catch (Throwable t) {
            ConsoleOut.err("收藏失败");
        }
    }

    public static String favGet(int index1) {
        try {
            if (index1 < 1 || index1 > favs.size()) {
                return null;
            }
            return (String) favs.get(index1 - 1);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static int favSize() {
        return favs.size();
    }

    public static void favPrint() {
        try {
            if (favs.size() == 0) {
                ConsoleOut.usage("收藏为空  fav add 命令");
                return;
            }
            for (int i = 0; i < favs.size(); i++) {
                ConsoleOut.usage((i + 1) + "  " + favs.get(i));
            }
        } catch (Throwable t) {
            ConsoleOut.err("收藏读取失败");
        }
    }
}
