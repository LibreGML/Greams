package age.of.civilizations2.jakowski.lukasz;

/** Province and civilization lookup. Same package so protected game calls compile against the real APK. */
public final class ConsoleContext {
    private ConsoleContext() {
    }

    public static Game game() {
        return CFG.game;
    }

    public static boolean ready() {
        try {
            return CFG.game != null && CFG.game.getCivsSize() > 0;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static int playerCiv() {
        try {
            Player player = CFG.game.getPlayer(CFG.PLAYER_TURNID);
            if (player == null) {
                return -1;
            }
            return player.getCivID();
        } catch (Throwable ignored) {
            return -1;
        }
    }

    public static int activeProvince() {
        try {
            return CFG.game.getActiveProvinceID();
        } catch (Throwable ignored) {
            return -1;
        }
    }

    public static Province province(int id) {
        try {
            if (id < 0 || CFG.game == null || id >= CFG.game.getProvincesSize()) {
                return null;
            }
            return CFG.game.getProvince(id);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static Civilization civ(int id) {
        try {
            if (id < 0 || CFG.game == null || id >= CFG.game.getCivsSize()) {
                return null;
            }
            return CFG.game.getCiv(id);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static boolean validCiv(int id) {
        return civ(id) != null;
    }

    /** Land gate: selected, not sea, not wasteland. */
    public static boolean isLand(int provinceId) {
        try {
            Province p = province(provinceId);
            if (p == null) {
                return false;
            }
            if (p.getSeaProvince()) {
                return false;
            }
            return p.getWasteland() < 0;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static int requireActive() {
        int id = activeProvince();
        if (id < 0) {
            ConsoleOut.chooseProvince();
            return -1;
        }
        return id;
    }

    public static int requireLand() {
        int id = requireActive();
        if (id < 0) {
            return -1;
        }
        if (!isLand(id)) {
            ConsoleOut.chooseProvince();
            return -1;
        }
        return id;
    }

    public static Integer intOrNull(String text) {
        if (text == null || text.length() == 0) {
            return null;
        }
        try {
            int i = 0;
            if (text.charAt(0) == '+' || text.charAt(0) == '-') {
                i = 1;
            }
            if (i >= text.length()) {
                return null;
            }
            for (; i < text.length(); i++) {
                char c = text.charAt(i);
                if (c < '0' || c > '9') {
                    return null;
                }
            }
            return Integer.valueOf(text);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static boolean isNumber(String text) {
        return intOrNull(text) != null;
    }

    /**
     * . player, @ province owner, #N civ id, &N province owner, or name/tag.
     * Returns -1 and prints an error when the token cannot be resolved.
     */
    public static int resolveCiv(String token) {
        try {
            if (!ready()) {
                ConsoleOut.err("没有进行中的对局");
                return -1;
            }
            if (token == null || token.length() == 0 || ".".equals(token)) {
                int id = playerCiv();
                if (!validCiv(id)) {
                    ConsoleOut.err("没有玩家国家");
                    return -1;
                }
                return id;
            }
            if ("@".equals(token)) {
                int prov = activeProvince();
                Province p = province(prov);
                if (p == null) {
                    ConsoleOut.chooseProvince();
                    return -1;
                }
                int id = p.getCivID();
                if (!validCiv(id)) {
                    ConsoleOut.err("省份没有拥有者");
                    return -1;
                }
                return id;
            }
            if (token.startsWith("#")) {
                return civId(token.substring(1), "国家编号无效");
            }
            if (token.startsWith("&")) {
                Integer n = intOrNull(token.substring(1));
                if (n == null) {
                    ConsoleOut.err("省份编号无效");
                    return -1;
                }
                Province p = province(n.intValue());
                if (p == null) {
                    ConsoleOut.err("省份编号无效");
                    return -1;
                }
                int id = p.getCivID();
                if (!validCiv(id)) {
                    ConsoleOut.err("省份没有拥有者");
                    return -1;
                }
                return id;
            }
            Integer plain = intOrNull(token);
            if (plain != null) {
                return civId(token, "国家编号无效");
            }
            return civByName(token);
        } catch (Throwable t) {
            ConsoleOut.err("国家解析失败");
            return -1;
        }
    }

    /** . or omitted = active province. &N / #N / plain number = province id. Name match otherwise. */
    public static int resolveProv(String token) {
        try {
            if (!ready()) {
                ConsoleOut.err("没有进行中的对局");
                return -1;
            }
            if (token == null || token.length() == 0 || ".".equals(token)) {
                return requireActive();
            }
            String body = token;
            if (token.startsWith("&") || token.startsWith("#")) {
                body = token.substring(1);
            }
            Integer n = intOrNull(body);
            if (n != null) {
                if (province(n.intValue()) == null) {
                    ConsoleOut.err("省份编号无效");
                    return -1;
                }
                return n.intValue();
            }
            String want = token.toLowerCase();
            int found = -1;
            int hits = 0;
            int count = CFG.game.getProvincesSize();
            for (int i = 0; i < count; i++) {
                Province p = CFG.game.getProvince(i);
                if (p == null || p.getName() == null) {
                    continue;
                }
                String name = p.getName().toLowerCase();
                if (name.equals(want)) {
                    return i;
                }
                if (name.indexOf(want) >= 0) {
                    found = i;
                    hits++;
                }
            }
            if (hits == 1) {
                return found;
            }
            ConsoleOut.err(hits > 1 ? "省份名不唯一" : "找不到省份");
            return -1;
        } catch (Throwable t) {
            ConsoleOut.err("省份解析失败");
            return -1;
        }
    }

    public static String join(String[] args, int from) {
        if (args == null || from >= args.length) {
            return "";
        }
        StringBuffer sb = new StringBuffer();
        for (int i = from; i < args.length; i++) {
            if (i > from) {
                sb.append(' ');
            }
            sb.append(args[i]);
        }
        return sb.toString();
    }

    public static void top(int civId) {
        try {
            if (CFG.menuManager != null && validCiv(civId)) {
                CFG.menuManager.updateInGame_TOP_All(civId);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void touchProvince(int provinceId) {
        try {
            if (CFG.game == null || province(provinceId) == null) {
                return;
            }
            int current = CFG.game.getActiveProvinceID();
            CFG.game.setActiveProvinceID(-1);
            CFG.game.setActiveProvinceID(current >= 0 ? current : provinceId);
            if (CFG.gameAction != null) {
                CFG.gameAction.updateInGame_ProvinceInfo();
            }
            if (CFG.menuManager != null && CFG.menuManager.getVisibleInGame_CensusOfProvince()) {
                CFG.menuManager.rebuildInGame_CensusOfProvince(CFG.game.getActiveProvinceID());
            }
        } catch (Throwable ignored) {
        }
    }

    public static String civLabel(int id) {
        try {
            Civilization c = civ(id);
            if (c == null) {
                return "#" + id;
            }
            return id + " " + c.getCivTag() + " " + c.getCivName();
        } catch (Throwable ignored) {
            return "#" + id;
        }
    }

    /** Own land provinces of a civ (not sea, not wasteland). */
    public static int[] ownLandProvinces(int civId) {
        try {
            Civilization c = civ(civId);
            if (c == null) {
                return new int[0];
            }
            int n = c.getNumOfProvinces();
            int[] tmp = new int[Math.max(0, n)];
            int w = 0;
            for (int i = 0; i < n; i++) {
                int pid = c.getProvinceID(i);
                if (!isLand(pid)) {
                    continue;
                }
                Province p = province(pid);
                if (p == null || p.getCivID() != civId) {
                    continue;
                }
                tmp[w++] = pid;
            }
            int[] out = new int[w];
            for (int i = 0; i < w; i++) {
                out[i] = tmp[i];
            }
            return out;
        } catch (Throwable ignored) {
            return new int[0];
        }
    }

    public static boolean isStar(String token) {
        return token != null && ("*".equals(token) || "all".equals(token) || "全部".equals(token));
    }

    private static int civId(String text, String error) {
        Integer n = intOrNull(text);
        if (n == null || !validCiv(n.intValue())) {
            ConsoleOut.err(error);
            return -1;
        }
        return n.intValue();
    }

    private static int civByName(String token) {
        String want = token.toLowerCase();
        int exact = -1;
        int partial = -1;
        int partialHits = 0;
        int count = CFG.game.getCivsSize();
        for (int i = 0; i < count; i++) {
            Civilization c = CFG.game.getCiv(i);
            if (c == null) {
                continue;
            }
            String tag = c.getCivTag() == null ? "" : c.getCivTag().toLowerCase();
            String name = c.getCivName() == null ? "" : c.getCivName().toLowerCase();
            if (tag.equals(want) || name.equals(want)) {
                exact = i;
                break;
            }
            if ((tag.length() > 0 && tag.indexOf(want) >= 0) || (name.length() > 0 && name.indexOf(want) >= 0)) {
                partial = i;
                partialHits++;
            }
        }
        if (exact >= 0) {
            return exact;
        }
        if (partialHits == 1) {
            return partial;
        }
        ConsoleOut.err(partialHits > 1 ? "国家名不唯一" : "找不到国家");
        return -1;
    }
}
