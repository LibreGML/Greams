package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.graphics.Color;

/** Console text. Posts to Commands.addMessage and CFG.toast. */
public final class ConsoleOut {
    private static final int LINE_SOFT_MAX = 250;
    private static final int LINE_TRIM_TO = 200;

    private ConsoleOut() {
    }

    public static void ok(String text) {
        line(text);
        toast(text, null);
    }

    public static void err(String text) {
        String message = "# -- " + (text == null ? "" : text);
        line(message);
        Color color = null;
        try {
            color = CFG.COLOR_TEXT_MODIFIER_NEGATIVE2;
        } catch (Throwable ignored) {
        }
        toast(message, color);
    }

    public static void usage(String text) {
        line(text);
    }

    /** Echo the typed line the way the old console did: "#input". */
    public static void hash(String text) {
        line("#" + (text == null ? "" : text));
    }

    public static void line(String text) {
        try {
            Commands.addMessage(text == null ? "" : text);
            trimLog();
        } catch (Throwable ignored) {
        }
    }

    /** Keep sConsole from growing without bound (engine soft-cap is higher). */
    private static void trimLog() {
        try {
            if (Commands.sConsole == null) {
                return;
            }
            int size = Commands.sConsole.size();
            if (size <= LINE_SOFT_MAX) {
                return;
            }
            while (Commands.sConsole.size() > LINE_TRIM_TO) {
                Commands.sConsole.remove(0);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void blank() {
        line("");
    }

    public static void toast(String text, Color color) {
        try {
            if (CFG.toast == null || text == null) {
                return;
            }
            if (color == null) {
                CFG.toast.setInView(text);
            } else {
                CFG.toast.setInView(text, color);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void chooseProvince() {
        String text = "请选择陆地省份";
        try {
            if (CFG.langManager != null) {
                String got = CFG.langManager.get("ChooseAProvince");
                if (got != null && got.length() > 0) {
                    text = got;
                }
            }
        } catch (Throwable ignored) {
        }
        err(text);
    }
}
