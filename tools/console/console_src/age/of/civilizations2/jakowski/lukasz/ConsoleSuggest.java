package age.of.civilizations2.jakowski.lukasz;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/** Edit distance, prefix expansion, and fuzzy command scoring. */
public final class ConsoleSuggest {
    private ConsoleSuggest() {
    }

    public static int editDistance(String a, String b) {
        try {
            if (a == null) {
                a = "";
            }
            if (b == null) {
                b = "";
            }
            int n = a.length();
            int m = b.length();
            int[] prev = new int[m + 1];
            int[] cur = new int[m + 1];
            for (int j = 0; j <= m; j++) {
                prev[j] = j;
            }
            for (int i = 1; i <= n; i++) {
                cur[0] = i;
                char ca = a.charAt(i - 1);
                for (int j = 1; j <= m; j++) {
                    int cost = ca == b.charAt(j - 1) ? 0 : 1;
                    int del = prev[j] + 1;
                    int ins = cur[j - 1] + 1;
                    int sub = prev[j - 1] + cost;
                    int best = del < ins ? del : ins;
                    cur[j] = best < sub ? best : sub;
                }
                int[] swap = prev;
                prev = cur;
                cur = swap;
            }
            return prev[m];
        } catch (Throwable ignored) {
            return 999;
        }
    }

    /** Allowed edit distance for a token: short words strict, longer slightly looser. */
    public static int fuzzyThreshold(String token) {
        if (token == null || token.length() == 0) {
            return 0;
        }
        int t = token.length() / 4;
        return t < 1 ? 1 : t;
    }

    /**
     * Cost of matching typed token to a command word.
     * 0 = exact or prefix; positive = edit distance within threshold; -1 = no match.
     */
    public static int tokenCost(String word, String token) {
        if (word == null || token == null) {
            return -1;
        }
        if (word.equals(token)) {
            return 0;
        }
        if (token.length() > 0 && word.startsWith(token)) {
            return 0;
        }
        int d = editDistance(token, word);
        int lim = fuzzyThreshold(token);
        int limWord = fuzzyThreshold(word);
        if (limWord > lim) {
            lim = limWord;
        }
        if (d <= lim) {
            return d;
        }
        return -1;
    }

    /**
     * Pure trailing junk like warx→war: one extra char after a short word.
     * Safe for suggestions, not for auto-run.
     */
    public static boolean isTrailingJunk(String word, String token) {
        if (word == null || token == null) {
            return false;
        }
        return token.startsWith(word) && token.length() == word.length() + 1;
    }

    /**
     * If one option equals the typed text, return it.
     * Otherwise return the only option that starts with the typed text.
     */
    public static String uniquePrefix(String typed, Collection options) {
        if (typed == null || options == null || typed.length() == 0) {
            return null;
        }
        try {
            String exact = null;
            String only = null;
            int hits = 0;
            java.util.Iterator it = options.iterator();
            while (it.hasNext()) {
                Object item = it.next();
                if (!(item instanceof String)) {
                    continue;
                }
                String name = (String) item;
                if (name.equals(typed)) {
                    exact = name;
                }
                if (name.startsWith(typed)) {
                    hits++;
                    only = name;
                }
            }
            if (exact != null) {
                return exact;
            }
            if (hits == 1) {
                return only;
            }
            return null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static List closest(String typed, Collection options, int limit) {
        ArrayList out = new ArrayList();
        if (typed == null || options == null || limit <= 0) {
            return out;
        }
        try {
            ArrayList names = new ArrayList();
            ArrayList scores = new ArrayList();
            java.util.Iterator it = options.iterator();
            while (it.hasNext()) {
                Object item = it.next();
                if (!(item instanceof String)) {
                    continue;
                }
                String name = (String) item;
                int score = editDistance(typed, name);
                insertSorted(names, scores, name, score, limit);
            }
            out.addAll(names);
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** Rank command names by edit distance of their first word to typed. */
    public static List closestByFirstWord(String typed, String[] names, int limit) {
        ArrayList out = new ArrayList();
        if (typed == null || names == null || limit <= 0) {
            return out;
        }
        try {
            ArrayList kept = new ArrayList();
            ArrayList scores = new ArrayList();
            for (int i = 0; i < names.length; i++) {
                String name = names[i];
                if (name == null || name.length() == 0) {
                    continue;
                }
                int sp = name.indexOf(' ');
                String first = sp < 0 ? name : name.substring(0, sp);
                int score = editDistance(typed, first);
                if (score > 4) {
                    continue;
                }
                insertSorted(kept, scores, name, score, limit);
            }
            out.addAll(kept);
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** Best fuzzy match among options for a single token (e.g. set/add subcommand). */
    public static String uniqueFuzzyToken(String typed, String[] options) {
        if (typed == null || options == null || typed.length() == 0) {
            return null;
        }
        String best = null;
        int bestCost = 999;
        int ties = 0;
        for (int i = 0; i < options.length; i++) {
            String opt = options[i];
            int cost = tokenCost(opt, typed);
            if (cost < 0) {
                continue;
            }
            if (isTrailingJunk(opt, typed)) {
                continue;
            }
            if (cost < bestCost) {
                bestCost = cost;
                best = opt;
                ties = 1;
            } else if (cost == bestCost) {
                ties++;
            }
        }
        if (ties == 1 && best != null) {
            return best;
        }
        return null;
    }

    private static void insertSorted(ArrayList names, ArrayList scores, String name, int score, int limit) {
        int at = names.size();
        for (int i = 0; i < names.size(); i++) {
            if (score < ((Integer) scores.get(i)).intValue()) {
                at = i;
                break;
            }
        }
        names.add(at, name);
        scores.add(at, Integer.valueOf(score));
        if (names.size() > limit) {
            names.remove(names.size() - 1);
            scores.remove(scores.size() - 1);
        }
    }
}
