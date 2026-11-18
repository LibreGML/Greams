package age.of.civilizations2.jakowski.lukasz;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Parses a console line and dispatches it.
 * Commands.execute can call {@link #execute(String)}.
 */
public final class ConsoleEngine {
    static final Map HELP = new LinkedHashMap();
    private static String[] NAME_CACHE;
    private static int depth;

    private ConsoleEngine() {
    }

    public static void add(String name, String helpZh) {
        if (name != null && name.length() > 0) {
            HELP.put(name, helpZh == null ? "" : helpZh);
            NAME_CACHE = null;
        }
    }

    public static void rebuildNameCache() {
        try {
            NAME_CACHE = (String[]) HELP.keySet().toArray(new String[HELP.size()]);
        } catch (Throwable ignored) {
            NAME_CACHE = new String[0];
        }
    }

    public static String[] nameArray() {
        if (NAME_CACHE == null) {
            rebuildNameCache();
        }
        return NAME_CACHE == null ? new String[0] : NAME_CACHE;
    }

    public static List names() {
        String[] arr = nameArray();
        ArrayList out = new ArrayList(arr.length);
        for (int i = 0; i < arr.length; i++) {
            out.add(arr[i]);
        }
        return out;
    }

    public static String helpOf(String name) {
        Object value = HELP.get(name);
        return value == null ? "" : value.toString();
    }

    public static void printHelp() {
        printHelpTopic("");
    }

    public static void printHelpTopic(String topic) {
        try {
            String raw = topic == null ? "" : topic.trim();
            String t = raw.toLowerCase();
            if (raw.length() == 0 || "help".equals(t) || "h".equals(t) || "?".equals(t)
                    || "目录".equals(raw) || "menu".equals(t)) {
                ConsoleOut.usage("用法: 先点省，再输入。详情: 命令?");
                ConsoleOut.usage("分类: h 军队/资源/外交/国家/地图/宏/计算");
                ConsoleOut.usage("常用: set army 5000 | add money | boost | sin(pi/2)");
                ConsoleOut.usage("打错会自动纠正；歧义时只提示");
                return;
            }
            if ("计算".equals(raw) || "calc".equals(t) || "数学".equals(raw) || "math".equals(t)) {
                ConsoleCalc.printTopicHelp();
                return;
            }
            if ("军队".equals(raw) || "army".equals(t) || "兵".equals(raw)) {
                ConsoleOut.usage("--- 军队 ---");
                ConsoleOut.usage("set army 数量        当前省设为这个人数");
                ConsoleOut.usage("set army 数量 *      己方全部陆省都设成这个人数");
                ConsoleOut.usage("add army             当前省 +10000");
                ConsoleOut.usage("add army 数量        当前省加上这个人数");
                ConsoleOut.usage("add army 数量 *      己方全部陆省各加这个人数");
                ConsoleOut.usage("fill army 数量       同 set army 数量 *");
                return;
            }
            if ("资源".equals(raw) || "res".equals(t) || "钱".equals(raw)) {
                ConsoleOut.usage("--- 资源（当前玩家国）---");
                ConsoleOut.usage("add money / move / diplo   各加一笔常用量");
                ConsoleOut.usage("set money/move/diplo/manpower 数量");
                ConsoleOut.usage("set tech 1-1000            科技（100显示为1.0）");
                ConsoleOut.usage("add pop / add eco          当前省人口或经济 +32500");
                ConsoleOut.usage("boost                      温和加强：钱、移动、外交、人力");
                return;
            }
            if ("外交".equals(raw) || "diplo".equals(t) || "战争".equals(raw)) {
                ConsoleOut.usage("--- 外交 ---");
                ConsoleOut.usage("war [A B]       宣战；无参=你 vs 当前省所属国");
                ConsoleOut.usage("peace [A B]     真正停战");
                ConsoleOut.usage("peace-msg A B   只发议和消息");
                ConsoleOut.usage("ally + A B / ally - A");
                ConsoleOut.usage("vassal + 宗主 附庸 / vassal - 附庸");
                ConsoleOut.usage("rel A B 数值    改关系；开战用 war");
                ConsoleOut.usage("scan war        列出交战国");
                return;
            }
            if ("国家".equals(raw) || "civ".equals(t) || "省".equals(raw)) {
                ConsoleOut.usage("--- 国家/省份 ---");
                ConsoleOut.usage("who / civ / prov / id / ls");
                ConsoleOut.usage("play            当前省所属国加入玩家");
                ConsoleOut.usage("own / own annex 占领或吞并当前省");
                ConsoleOut.usage("core + / core - 当前省核心");
                ConsoleOut.usage("set gov 政体    合法换政体（先 scan gov）");
                ConsoleOut.usage("set happy/risk  幸福或叛乱 0-100");
                ConsoleOut.usage("fort / port / tower");
                return;
            }
            if ("地图".equals(raw) || "map".equals(t) || "视野".equals(raw)) {
                ConsoleOut.usage("--- 地图 ---");
                ConsoleOut.usage("go / go #省 / go 国名");
                ConsoleOut.usage("zoom 数字 | fog 0/1/2 | discover");
                ConsoleOut.usage("ids on|off | watch | date");
                return;
            }
            if ("宏".equals(raw) || "macro".equals(t) || "脚本".equals(raw)) {
                ConsoleOut.usage("--- 宏/工具 ---");
                ConsoleOut.usage("boost / god     加强（god 会给己方陆省加兵）");
                ConsoleOut.usage("run 名称        跑 assets/console/名称.txt");
                ConsoleOut.usage("sh a; b         一条里连跑多句");
                ConsoleOut.usage("hist / !! / fav / sug / cls / q");
                ConsoleOut.usage("计算: 直接输入 2+3 或 sin(pi/2)；funcs / vars");
                return;
            }
            String[] qTok = split(t);
            Hit hit = match(qTok);
            if (hit == null) {
                hit = fuzzyMatch(qTok, true);
            }
            if (hit != null) {
                ConsoleOut.usage(hit.name + "  " + helpOf(hit.name));
                return;
            }
            String unique = ConsoleSuggest.uniquePrefix(t, names());
            if (unique != null) {
                ConsoleOut.usage(unique + "  " + helpOf(unique));
                return;
            }
            List near = ConsoleSuggest.closestByFirstWord(qTok.length == 0 ? t : qTok[0], nameArray(), 6);
            for (int i = 0; i < near.size(); i++) {
                String name = (String) near.get(i);
                ConsoleOut.usage("也许 " + name + "  " + helpOf(name));
            }
            if (near.size() == 0) {
                ConsoleOut.usage("没有这个分类。试试：h 军队 / h 资源 / h 外交 / h 国家 / h 地图 / h 宏");
            }
        } catch (Throwable ex) {
            ConsoleOut.err("帮助失败");
        }
    }

    /** Entry used by the in-game console. */
    public static void execute(String raw) {
        if (depth > 8) {
            ConsoleOut.err("脚本嵌套过深");
            return;
        }
        depth++;
        try {
            runLine(raw);
        } catch (Throwable t) {
            try {
                CFG.exceptionStack(t);
            } catch (Throwable ignored) {
            }
            ConsoleOut.err("执行失败 " + t.getClass().getSimpleName());
        } finally {
            depth--;
        }
    }

    private static void runLine(String raw) {
        if (raw == null) {
            return;
        }
        String original = raw.trim();
        if (original.length() == 0) {
            return;
        }
        ConsoleCmds.ensure();
        String lower = original.toLowerCase();
        String[] peek = split(lower);
        String head = peek.length == 0 ? "" : peek[0];
        boolean skipOpen = "term".equals(head) || "console".equals(head)
                || "q".equals(head) || "exit".equals(head) || "quit".equals(head);
        if (!skipOpen) {
            openConsole();
        }
        ConsoleOut.blank();
        ConsoleOut.hash(original);

        String expanded = ConsoleHistory.expand(lower);
        if (expanded == null) {
            ConsoleOut.err("没有这条历史");
            return;
        }
        if (!expanded.equals(lower)) {
            ConsoleOut.hash(expanded);
            lower = expanded;
        }
        if (!lower.equals("hist") && !lower.startsWith("hist ")) {
            ConsoleHistory.push(lower);
        }

        // Calculator: =expr / calc / funcs / vars / reset  (before game commands)
        if (ConsoleCalc.handleExplicit(original, lower)) {
            return;
        }

        String[] tok = split(lower);
        if (tok.length == 0) {
            return;
        }
        if (tok[0].endsWith("?") || (tok.length == 1 && lower.endsWith("?"))) {
            String q = tok[0];
            if (q.endsWith("?")) {
                q = q.substring(0, q.length() - 1);
            }
            if (q.length() == 0) {
                printHelp();
                return;
            }
            String[] qTok = split(q);
            Hit qHit = match(qTok);
            if (qHit == null) {
                qHit = fuzzyMatch(qTok, true);
            }
            if (qHit != null) {
                if (!qHit.name.equals(ConsoleContext.join(qTok, 0)) && qHit.corrected) {
                    ConsoleOut.usage("已纠正: " + ConsoleContext.join(qTok, 0) + " → " + qHit.name);
                }
                ConsoleOut.usage(qHit.name + "  " + helpOf(qHit.name));
            } else {
                unknown(qTok);
            }
            return;
        }
        if ("sh".equals(tok[0])) {
            ConsoleCmds.run("sh", tail(tok, 1));
            return;
        }

        // Exact game command first — then raw math — then fuzzy command
        Hit hit = match(tok);
        if (hit != null) {
            hit = refineSetAdd(hit, tok);
            ConsoleCmds.run(hit.name, hit.args);
            return;
        }
        if (ConsoleCalc.tryEval(original)) {
            return;
        }
        hit = fuzzyMatch(tok, true);
        if (hit == null) {
            List near = fuzzyCandidates(tok, 6);
            if (near.size() > 0) {
                ConsoleOut.err("未知或有歧义");
                for (int i = 0; i < near.size(); i++) {
                    String name = (String) near.get(i);
                    ConsoleOut.usage("也许 " + name + "  " + helpOf(name));
                }
                return;
            }
            unknown(tok);
            return;
        }
        if (hit.corrected) {
            ConsoleOut.usage("已纠正: " + typedCommand(tok, hit) + " → " + hit.name);
        }
        hit = refineSetAdd(hit, tok);
        ConsoleCmds.run(hit.name, hit.args);
    }

    /** Fuzzy-correct set/add second word: set mony → set money. */
    private static Hit refineSetAdd(Hit hit, String[] tok) {
        if (hit == null || hit.name == null) {
            return hit;
        }
        try {
            if (!"set".equals(hit.name) && !"add".equals(hit.name)) {
                // Already matched full "set money" etc.
                if (hit.name.startsWith("set ") || hit.name.startsWith("add ")) {
                    return hit;
                }
                return hit;
            }
            if (hit.args == null || hit.args.length == 0) {
                return hit;
            }
            String[] subs;
            if ("set".equals(hit.name)) {
                subs = new String[]{"tech", "money", "move", "manpower", "diplo", "gov", "happy", "risk", "army"};
            } else {
                subs = new String[]{"pop", "eco", "army", "money", "move", "diplo"};
            }
            String typed = hit.args[0];
            String fixed = ConsoleSuggest.uniqueFuzzyToken(typed, subs);
            if (fixed == null || fixed.equals(typed)) {
                return hit;
            }
            String full = hit.name + " " + fixed;
            if (!HELP.containsKey(full)) {
                return hit;
            }
            ConsoleOut.usage("已纠正: " + hit.name + " " + typed + " → " + full);
            Hit out = new Hit();
            out.name = full;
            out.args = tail(hit.args, 1);
            out.corrected = true;
            return out;
        } catch (Throwable ignored) {
            return hit;
        }
    }

    private static String typedCommand(String[] tok, Hit hit) {
        try {
            String[] words = split(hit.name);
            int n = words.length;
            if (n > tok.length) {
                n = tok.length;
            }
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < n; i++) {
                if (i > 0) {
                    sb.append(' ');
                }
                sb.append(tok[i]);
            }
            return sb.toString();
        } catch (Throwable ignored) {
            return tok.length == 0 ? "" : tok[0];
        }
    }

    static void unknown(String[] tok) {
        try {
            String typed = tok.length == 0 ? "" : tok[0];
            String joined = ConsoleContext.join(tok, 0);
            String[] arr = nameArray();
            List names = names();
            String unique = ConsoleSuggest.uniquePrefix(joined, names);
            if (unique == null) {
                unique = ConsoleSuggest.uniquePrefix(typed, names);
            }
            if (unique != null && !unique.equals(joined)) {
                ConsoleOut.usage("可补全为 " + unique + "  " + helpOf(unique));
                return;
            }
            ConsoleOut.err("未知或有歧义");
            int shown = 0;
            for (int i = 0; i < arr.length && shown < 8; i++) {
                String name = arr[i];
                if (name.startsWith(joined) || name.startsWith(typed)) {
                    ConsoleOut.usage(name + "  " + helpOf(name));
                    shown++;
                }
            }
            if (shown > 0) {
                return;
            }
            List near = ConsoleSuggest.closestByFirstWord(typed, arr, 6);
            for (int i = 0; i < near.size(); i++) {
                String name = (String) near.get(i);
                ConsoleOut.usage("也许 " + name + "  " + helpOf(name));
            }
        } catch (Throwable t) {
            ConsoleOut.err("未知命令");
        }
    }

    static void openConsole() {
        try {
            if (CFG.menuManager == null) {
                return;
            }
            if (!CFG.menuManager.getVisible_InGame_FlagAction_Console()) {
                CFG.menuManager.setVisible_InGame_FlagAction_Console(true);
            }
        } catch (Throwable ignored) {
        }
    }

    /** Called when the player opens the console from the UI button. */
    public static void onConsoleOpened() {
        try {
            ConsoleCmds.ensure();
            ConsoleCmds.run("who", new String[0]);
            ConsoleOut.usage("提示: h | h 军队 | 命令? | hist | !!");
            ConsoleFloat.applyCommandsLayout();
        } catch (Throwable ignored) {
        }
    }

    /** Close floating console (title X / exit command). */
    public static void closeConsole() {
        try {
            ConsoleFloat.restore();
            try {
                Keyboard.commandsMode = false;
            } catch (Throwable ignored) {
            }
            if (CFG.menuManager == null) {
                return;
            }
            if (CFG.menuManager.getVisible_InGame_FlagAction_Console()) {
                CFG.menuManager.setVisible_InGame_FlagAction_Console(false);
            }
            SliderMenu keyboard = CFG.menuManager.getKeyboard();
            if (keyboard != null) {
                keyboard.setVisible(false);
            }
        } catch (Throwable ignored) {
        }
    }

    static String[] split(String line) {
        ArrayList out = new ArrayList();
        try {
            StringBuffer cur = new StringBuffer();
            boolean quoted = false;
            char quote = 0;
            for (int i = 0; i < line.length(); i++) {
                char c = line.charAt(i);
                if (quoted) {
                    if (c == quote) {
                        quoted = false;
                    } else {
                        cur.append(c);
                    }
                } else if (c == '"' || c == '\'') {
                    quoted = true;
                    quote = c;
                } else if (c == ' ' || c == '\t' || c == '\r') {
                    if (cur.length() > 0) {
                        out.add(cur.toString());
                        cur.setLength(0);
                    }
                } else {
                    cur.append(c);
                }
            }
            if (cur.length() > 0) {
                out.add(cur.toString());
            }
        } catch (Throwable ignored) {
        }
        return (String[]) out.toArray(new String[out.size()]);
    }

    static String[] tail(String[] tok, int from) {
        if (tok == null || from >= tok.length) {
            return new String[0];
        }
        if (from < 0) {
            from = 0;
        }
        String[] args = new String[tok.length - from];
        for (int i = 0; i < args.length; i++) {
            args[i] = tok[from + i];
        }
        return args;
    }

    private static Hit match(String[] tok) {
        Hit best = null;
        int bestWords = -1;
        int bestScore = -1;
        int ties = 0;
        try {
            String[] arr = nameArray();
            for (int n = 0; n < arr.length; n++) {
                String name = arr[n];
                String[] words = split(name);
                if (words.length == 0 || tok.length < words.length) {
                    continue;
                }
                int score = wordScore(words, tok);
                if (score < 0) {
                    continue;
                }
                if (words.length > bestWords || (words.length == bestWords && score > bestScore)) {
                    bestWords = words.length;
                    bestScore = score;
                    ties = 1;
                    best = new Hit();
                    best.name = name;
                    best.args = tail(tok, words.length);
                    best.corrected = false;
                } else if (words.length == bestWords && score == bestScore) {
                    ties++;
                }
            }
        } catch (Throwable ignored) {
            return null;
        }
        if (ties != 1) {
            return null;
        }
        return best;
    }

    /**
     * Unique fuzzy hit for auto-correct. Trailing junk (warx→war) is excluded from auto-run.
     * @param requireCorrectionOnly if true, only return when some edit was needed (cost>0)
     */
    static Hit fuzzyMatch(String[] tok, boolean allowExactPrefixCost0) {
        Hit best = null;
        int bestWords = -1;
        int bestCost = 999;
        int ties = 0;
        try {
            String[] arr = nameArray();
            for (int n = 0; n < arr.length; n++) {
                String name = arr[n];
                String[] words = split(name);
                if (words.length == 0 || tok.length < words.length) {
                    continue;
                }
                int cost = 0;
                boolean junk = false;
                boolean ok = true;
                for (int i = 0; i < words.length; i++) {
                    int c = ConsoleSuggest.tokenCost(words[i], tok[i]);
                    if (c < 0) {
                        ok = false;
                        break;
                    }
                    if (ConsoleSuggest.isTrailingJunk(words[i], tok[i])) {
                        junk = true;
                    }
                    cost += c;
                }
                if (!ok || junk) {
                    continue;
                }
                if (!allowExactPrefixCost0 && cost == 0) {
                    continue;
                }
                if (cost == 0) {
                    // exact/prefix already handled by match(); skip for auto-fuzzy path uniqueness
                    continue;
                }
                if (words.length > bestWords || (words.length == bestWords && cost < bestCost)) {
                    bestWords = words.length;
                    bestCost = cost;
                    ties = 1;
                    best = new Hit();
                    best.name = name;
                    best.args = tail(tok, words.length);
                    best.corrected = true;
                } else if (words.length == bestWords && cost == bestCost) {
                    ties++;
                }
            }
        } catch (Throwable ignored) {
            return null;
        }
        if (ties != 1) {
            return null;
        }
        return best;
    }

    static List fuzzyCandidates(String[] tok, int limit) {
        ArrayList out = new ArrayList();
        if (tok == null || tok.length == 0 || limit <= 0) {
            return out;
        }
        try {
            ArrayList kept = new ArrayList();
            ArrayList scores = new ArrayList();
            String[] arr = nameArray();
            for (int n = 0; n < arr.length; n++) {
                String name = arr[n];
                String[] words = split(name);
                if (words.length == 0 || tok.length < words.length) {
                    continue;
                }
                int cost = 0;
                boolean ok = true;
                for (int i = 0; i < words.length; i++) {
                    int c = ConsoleSuggest.tokenCost(words[i], tok[i]);
                    if (c < 0) {
                        // also accept trailing junk for suggestions
                        if (ConsoleSuggest.isTrailingJunk(words[i], tok[i])) {
                            c = 1;
                        } else {
                            ok = false;
                            break;
                        }
                    }
                    cost += c;
                }
                if (!ok) {
                    continue;
                }
                int at = kept.size();
                for (int i = 0; i < kept.size(); i++) {
                    if (cost < ((Integer) scores.get(i)).intValue()) {
                        at = i;
                        break;
                    }
                }
                kept.add(at, name);
                scores.add(at, Integer.valueOf(cost));
                if (kept.size() > limit) {
                    kept.remove(kept.size() - 1);
                    scores.remove(scores.size() - 1);
                }
            }
            out.addAll(kept);
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** 2 = every word exact, 1 = every word is a prefix, -1 = no match. */
    private static int wordScore(String[] words, String[] tok) {
        boolean exact = true;
        for (int i = 0; i < words.length; i++) {
            String word = words[i];
            String token = tok[i];
            if (word.equals(token)) {
                continue;
            }
            exact = false;
            if (token.length() == 0 || !word.startsWith(token)) {
                return -1;
            }
        }
        return exact ? 2 : 1;
    }

    static final class Hit {
        String name;
        String[] args;
        boolean corrected;
    }
}
