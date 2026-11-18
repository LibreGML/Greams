package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

/**
 * Fast catalog + smart fuzzy search for scenario civilization picker.
 * Matches: Chinese name, tag, full pinyin, initials, subsequence, multi-token AND.
 * Search results are ranked by relevance.
 */
public final class CivSelectCache {
    private static String[] cachedTags;
    private static String[] cachedNames;
    private static String[] cachedNameLower;
    private static String[] cachedTagKey;
    private static String[] cachedPinyin;
    private static String[] cachedInitials;
    private static char[] cachedFirstChars;
    private static int cachedCount;
    private static long editorStamp = Long.MIN_VALUE;

    private CivSelectCache() {}

    public static void invalidate() {
        cachedTags = null;
        cachedNames = null;
        cachedNameLower = null;
        cachedTagKey = null;
        cachedPinyin = null;
        cachedInitials = null;
        cachedFirstChars = null;
        cachedCount = 0;
        editorStamp = Long.MIN_VALUE;
    }

    public static void fillSortedLists(List<String> namesOut, List<String> tagsOut) {
        ensureLoaded();
        namesOut.clear();
        tagsOut.clear();

        HashSet<String> placed = buildPlacedSet();
        String search = CFG.sSearch;
        boolean hasSearch = search != null && search.length() > 0;
        String letter = CFG.chosen_AlphabetCharachter;
        boolean hasLetter = !hasSearch && letter != null && letter.length() > 0;
        char letterCh = hasLetter ? letter.charAt(0) : 0;

        if (hasSearch) {
            String[] tokens = tokenize(search);
            ArrayList<Hit> hits = new ArrayList<Hit>(256);
            for (int i = 0; i < cachedCount; i++) {
                if (placed.contains(cachedTags[i])) {
                    continue;
                }
                int score = scoreMatch(i, tokens);
                if (score > 0) {
                    hits.add(new Hit(i, score));
                }
            }
            Collections.sort(hits, new Comparator<Hit>() {
                public int compare(Hit a, Hit b) {
                    if (a.score != b.score) {
                        return b.score - a.score;
                    }
                    return a.index - b.index; // stable alphabetic from pre-sorted cache
                }
            });
            for (int i = 0; i < hits.size(); i++) {
                int idx = hits.get(i).index;
                namesOut.add(cachedNames[idx]);
                tagsOut.add(cachedTags[idx]);
            }
            return;
        }

        for (int i = 0; i < cachedCount; i++) {
            String tag = cachedTags[i];
            if (placed.contains(tag)) {
                continue;
            }
            if (hasLetter && cachedFirstChars[i] != letterCh) {
                continue;
            }
            namesOut.add(cachedNames[i]);
            tagsOut.add(tag);
        }
    }

    public static void fillAlphabet(List<Character> out) {
        ensureLoaded();
        out.clear();
        HashSet<String> placed = buildPlacedSet();
        HashSet<Character> seen = new HashSet<Character>();
        for (int i = 0; i < cachedCount; i++) {
            if (placed.contains(cachedTags[i])) {
                continue;
            }
            Character ch = Character.valueOf(cachedFirstChars[i]);
            if (seen.add(ch)) {
                out.add(ch);
            }
        }
        Collections.sort(out);
    }

    public static int cachedSize() {
        ensureLoaded();
        return cachedCount;
    }

    private static final class Hit {
        final int index;
        final int score;

        Hit(int index, int score) {
            this.index = index;
            this.score = score;
        }
    }

    private static String[] tokenize(String raw) {
        String s = raw.toLowerCase(Locale.ROOT).trim();
        // fullwidth space / punctuation as separators
        s = s.replace('\u3000', ' ').replace(',', ' ').replace('，', ' ').replace(';', ' ').replace('|', ' ');
        StringTokenizer st = new StringTokenizer(s, " \t");
        ArrayList<String> list = new ArrayList<String>();
        while (st.hasMoreTokens()) {
            String t = st.nextToken().trim();
            if (t.length() > 0) {
                list.add(t);
            }
        }
        if (list.isEmpty() && s.length() > 0) {
            list.add(s);
        }
        return list.toArray(new String[list.size()]);
    }

    /** Positive score if all tokens match; higher = better. */
    private static int scoreMatch(int i, String[] tokens) {
        if (tokens == null || tokens.length == 0) {
            return 1;
        }
        int total = 0;
        for (int t = 0; t < tokens.length; t++) {
            int part = scoreToken(i, tokens[t]);
            if (part <= 0) {
                return 0;
            }
            total += part;
        }
        return total;
    }

    private static int scoreToken(int i, String token) {
        if (token == null || token.length() == 0) {
            return 1;
        }
        String name = cachedNameLower[i];
        String tag = cachedTagKey[i];
        String py = cachedPinyin[i];
        String ini = cachedInitials[i];
        String nameRaw = cachedNames[i];

        // Exact / prefix / contains on display name (Chinese or any)
        if (name.equals(token) || nameRaw.equals(token)) {
            return 1000;
        }
        if (name.startsWith(token) || nameRaw.startsWith(token)) {
            return 900;
        }
        if (name.indexOf(token) >= 0 || nameRaw.indexOf(token) >= 0) {
            return 800;
        }

        // Tag
        if (tag != null && tag.length() > 0) {
            if (tag.equals(token)) {
                return 950;
            }
            if (tag.startsWith(token)) {
                return 850;
            }
            if (tag.indexOf(token) >= 0) {
                return 700;
            }
        }

        // Full pinyin
        if (py != null && py.length() > 0) {
            if (py.equals(token)) {
                return 920;
            }
            if (py.startsWith(token)) {
                return 820;
            }
            if (py.indexOf(token) >= 0) {
                return 720;
            }
            if (isSubsequence(token, py)) {
                return 520;
            }
        }

        // Initials (e.g. zhmg for 中华民国)
        if (ini != null && ini.length() > 0) {
            if (ini.equals(token)) {
                return 880;
            }
            if (ini.startsWith(token)) {
                return 780;
            }
            if (ini.indexOf(token) >= 0) {
                return 680;
            }
            if (isSubsequence(token, ini)) {
                return 480;
            }
        }

        // Character subsequence on Chinese name (fuzzy order-preserving)
        if (isSubsequence(token, name) || isSubsequence(token, nameRaw)) {
            return 400;
        }

        // Loose: strip non-alnum from token and retry pinyin/tag
        String ascii = onlyAscii(token);
        if (ascii.length() > 0 && !ascii.equals(token)) {
            return scoreTokenAscii(i, ascii);
        }
        return 0;
    }

    private static int scoreTokenAscii(int i, String token) {
        String tag = cachedTagKey[i];
        String py = cachedPinyin[i];
        String ini = cachedInitials[i];
        if (tag != null && tag.indexOf(token) >= 0) {
            return 650;
        }
        if (py != null && py.indexOf(token) >= 0) {
            return 650;
        }
        if (ini != null && (ini.equals(token) || ini.startsWith(token) || ini.indexOf(token) >= 0)) {
            return 640;
        }
        if (py != null && isSubsequence(token, py)) {
            return 420;
        }
        return 0;
    }

    private static boolean isSubsequence(String needle, String hay) {
        if (needle == null || hay == null || needle.length() == 0) {
            return false;
        }
        if (needle.length() > hay.length()) {
            return false;
        }
        int j = 0;
        for (int i = 0; i < hay.length() && j < needle.length(); i++) {
            if (hay.charAt(i) == needle.charAt(j)) {
                j++;
            }
        }
        return j == needle.length();
    }

    private static String onlyAscii(String s) {
        StringBuilder sb = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9')) {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private static HashSet<String> buildPlacedSet() {
        HashSet<String> placed = new HashSet<String>();
        try {
            Game game = CFG.game;
            if (game == null) {
                return placed;
            }
            int n = game.getCivsSize();
            for (int i = 1; i < n; i++) {
                Civilization civ = game.getCiv(i);
                if (civ != null) {
                    String tag = civ.getCivTag();
                    if (tag != null) {
                        placed.add(tag);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return placed;
    }

    private static synchronized void ensureLoaded() {
        long stamp = readEditorStamp();
        if (cachedTags != null && stamp == editorStamp) {
            return;
        }
        ArrayList<String> tags = new ArrayList<String>(2800);
        ArrayList<String> names = new ArrayList<String>(2800);
        HashSet<String> seen = new HashSet<String>();

        String[] base = loadBaseTags();
        String[] editor = loadEditorTags();
        appendResolved(base, tags, names, seen);
        appendResolved(editor, tags, names, seen);

        HashMap<String, String[]> index = loadPinyinIndex();

        final int n = tags.size();
        ArrayList<Integer> order = new ArrayList<Integer>(n);
        for (int i = 0; i < n; i++) {
            order.add(Integer.valueOf(i));
        }
        final ArrayList<String> namesFinal = names;
        Collections.sort(order, new Comparator<Integer>() {
            public int compare(Integer a, Integer b) {
                String na = namesFinal.get(a.intValue());
                String nb = namesFinal.get(b.intValue());
                int len = Math.min(na.length(), nb.length());
                for (int i = 0; i < len; i++) {
                    char ca = na.charAt(i);
                    char cb = nb.charAt(i);
                    if (ca != cb) {
                        return ca < cb ? -1 : 1;
                    }
                }
                return na.length() - nb.length();
            }
        });

        cachedTags = new String[n];
        cachedNames = new String[n];
        cachedNameLower = new String[n];
        cachedTagKey = new String[n];
        cachedPinyin = new String[n];
        cachedInitials = new String[n];
        cachedFirstChars = new char[n];
        for (int i = 0; i < n; i++) {
            int src = order.get(i).intValue();
            String tag = tags.get(src);
            String name = names.get(src);
            cachedTags[i] = tag;
            cachedNames[i] = name;
            cachedNameLower[i] = name.toLowerCase(Locale.ROOT);
            cachedFirstChars[i] = name.length() > 0 ? name.charAt(0) : '?';
            String[] py = index.get(tag);
            if (py != null) {
                cachedPinyin[i] = py[0];
                cachedInitials[i] = py[1];
                cachedTagKey[i] = py[2];
            } else {
                cachedPinyin[i] = onlyAscii(cachedNameLower[i]);
                cachedInitials[i] = "";
                cachedTagKey[i] = onlyAscii(tag.toLowerCase(Locale.ROOT));
            }
        }
        cachedCount = n;
        editorStamp = stamp;
    }

    private static HashMap<String, String[]> loadPinyinIndex() {
        HashMap<String, String[]> map = new HashMap<String, String[]>(4096);
        try {
            FileHandle fh = Gdx.files.internal("game/civilizations/CivSearchIndex.txt");
            if (fh == null || !fh.exists()) {
                return map;
            }
            String raw = fh.readString("UTF-8");
            if (raw == null || raw.length() == 0) {
                return map;
            }
            String[] lines = raw.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                if (line.length() == 0 || line.charAt(0) == '#') {
                    continue;
                }
                String[] parts = line.split("\\|");
                if (parts.length < 3) {
                    continue;
                }
                String tag = parts[0];
                String py = parts[1].toLowerCase(Locale.ROOT);
                String ini = parts[2].toLowerCase(Locale.ROOT);
                String tagKey = parts.length >= 4 ? parts[3].toLowerCase(Locale.ROOT) : onlyAscii(tag.toLowerCase(Locale.ROOT));
                map.put(tag, new String[] {py, ini, tagKey});
            }
        } catch (Throwable ignored) {
        }
        return map;
    }

    private static void appendResolved(String[] tagsIn, ArrayList<String> tags, ArrayList<String> names, HashSet<String> seen) {
        if (tagsIn == null) {
            return;
        }
        LanguageManager lang = CFG.langManager;
        for (int i = 0; i < tagsIn.length; i++) {
            String tag = tagsIn[i];
            if (tag == null) {
                continue;
            }
            tag = tag.trim();
            if (tag.length() == 0 || !seen.add(tag)) {
                continue;
            }
            String name;
            try {
                name = lang != null ? lang.getCiv(tag) : tag;
            } catch (Throwable t) {
                name = tag;
            }
            if (name == null || name.length() == 0) {
                name = tag;
            }
            tags.add(tag);
            names.add(name);
        }
    }

    private static String[] loadBaseTags() {
        try {
            if (CFG.isDesktop()) {
                List names = CFG.getFileNames("game/civilizations/");
                ArrayList<String> out = new ArrayList<String>();
                if (names != null) {
                    for (int i = 0; i < names.size(); i++) {
                        Object o = names.get(i);
                        if (o == null) {
                            continue;
                        }
                        String s = o.toString();
                        if (!"Age_of_Civilizations".equals(s) && !"CivSearchIndex.txt".equals(s)) {
                            out.add(s);
                        }
                    }
                }
                return out.toArray(new String[out.size()]);
            }
            FileHandle fh = Gdx.files.internal("game/civilizations/Age_of_Civilizations");
            return splitTags(fh.readString());
        } catch (Throwable t) {
            return new String[0];
        }
    }

    private static String[] loadEditorTags() {
        try {
            FileHandle fh;
            if (CFG.isAndroid()) {
                fh = Gdx.files.local("game/civilizations_editor/Age_of_Civilizations");
            } else {
                fh = Gdx.files.internal("game/civilizations_editor/Age_of_Civilizations");
            }
            return splitTags(fh.readString());
        } catch (GdxRuntimeException e) {
            return new String[0];
        } catch (Throwable t) {
            return new String[0];
        }
    }

    private static long readEditorStamp() {
        try {
            FileHandle fh;
            if (CFG.isAndroid()) {
                fh = Gdx.files.local("game/civilizations_editor/Age_of_Civilizations");
            } else {
                fh = Gdx.files.internal("game/civilizations_editor/Age_of_Civilizations");
            }
            if (fh != null && fh.exists()) {
                return fh.length();
            }
        } catch (Throwable ignored) {
        }
        return 0L;
    }

    private static String[] splitTags(String raw) {
        if (raw == null || raw.length() == 0) {
            return new String[0];
        }
        return raw.split(";");
    }
}
