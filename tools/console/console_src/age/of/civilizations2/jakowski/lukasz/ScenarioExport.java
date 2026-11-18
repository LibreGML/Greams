package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import java.io.File;

/**
 * Copies user-created scenarios out of app-private storage to public Download
 * so they can be pulled over USB / Files app and packed into the APK — no root.
 *
 * Output:
 *   /sdcard/Download/GemorinScenarios/<tag>/   (full scenario folder)
 *   /sdcard/Download/GemorinScenarios/Age_of_Civilizations
 *   /sdcard/Download/GemorinScenarios/HOW_TO_PACK.txt
 */
public final class ScenarioExport {
    public static final String EXPORT_ROOT = "Download/GemorinScenarios/";

    private ScenarioExport() {}

    /** Export the scenario currently being edited/saved. */
    public static void exportCurrent() {
        try {
            String tag = CFG.CREATE_SCENARIO_GAME_DATA_TAG;
            if (tag == null || tag.length() == 0) {
                return;
            }
            String path = exportTag(tag);
            if (path != null) {
                toast("Exported: Download/GemorinScenarios/" + tag, true);
            }
        } catch (Throwable t) {
            CFG.exceptionStack(t);
            toast("Export failed", false);
        }
    }

    /** Export every scenario listed in the local Age_of_Civilizations index. */
    public static int exportAllLocal() {
        int ok = 0;
        try {
            String mapPath = activeMapPath();
            FileHandle index = Gdx.files.local("map/" + mapPath + "scenarios/Age_of_Civilizations");
            if (!index.exists()) {
                toast("No local scenarios", false);
                return 0;
            }
            String[] tags = index.readString().split(";");
            for (int i = 0; i < tags.length; i++) {
                String tag = tags[i] != null ? tags[i].trim() : "";
                if (tag.length() == 0) {
                    continue;
                }
                if (exportTag(tag) != null) {
                    ok++;
                }
            }
            writePackHelp();
            toast("Exported " + ok + " scenarios to Download/GemorinScenarios", true);
        } catch (Throwable t) {
            CFG.exceptionStack(t);
            toast("Export all failed", false);
        }
        return ok;
    }

    /**
     * @return absolute path of exported folder, or null on failure
     */
    public static String exportTag(String tag) {
        if (tag == null || tag.length() == 0 || Gdx.files == null) {
            return null;
        }
        String mapPath = activeMapPath();
        String rel = "map/" + mapPath + "scenarios/" + tag + "/";
        FileHandle src = Gdx.files.local(rel);
        if (!src.exists()) {
            return null;
        }
        FileHandle dest = Gdx.files.external(EXPORT_ROOT + tag + "/");
        // wipe previous export of same tag so stale files do not linger
        try {
            if (dest.exists()) {
                dest.deleteDirectory();
            }
        } catch (Throwable ignored) {
        }
        dest.mkdirs();
        src.copyTo(dest);
        appendExportIndex(tag);
        writePackHelp();

        try {
            File f = dest.file();
            return f != null ? f.getAbsolutePath() : EXPORT_ROOT + tag;
        } catch (Throwable t) {
            return EXPORT_ROOT + tag;
        }
    }

    private static String activeMapPath() {
        try {
            if (CFG.map != null) {
                String p = CFG.map.getFile_ActiveMap_Path();
                if (p != null && p.length() > 0) {
                    return p;
                }
            }
        } catch (Throwable ignored) {
        }
        return "TZ/";
    }

    private static void appendExportIndex(String tag) {
        try {
            FileHandle idx = Gdx.files.external(EXPORT_ROOT + "Age_of_Civilizations");
            String cur = "";
            if (idx.exists()) {
                cur = idx.readString();
                if (cur == null) {
                    cur = "";
                }
            }
            if ((";" + cur).indexOf(";" + tag + ";") >= 0 || cur.startsWith(tag + ";")) {
                return;
            }
            if (cur.length() > 0 && !cur.endsWith(";")) {
                cur = cur + ";";
            }
            idx.writeString(cur + tag + ";", false);
        } catch (Throwable ignored) {
        }
    }

    private static void writePackHelp() {
        try {
            FileHandle help = Gdx.files.external(EXPORT_ROOT + "HOW_TO_PACK.txt");
            String text =
                "Gemorin scenario export (no root needed)\r\n"
                    + "=====================================\r\n"
                    + "1. Connect phone by USB, or use Files app.\r\n"
                    + "2. Open: Download / GemorinScenarios /\r\n"
                    + "3. Copy each <tag> folder to PC:\r\n"
                    + "   AOE_unpacked/assets/map/TZ/scenarios/<tag>/\r\n"
                    + "4. Append <tag>; to:\r\n"
                    + "   AOE_unpacked/assets/map/TZ/scenarios/Age_of_Civilizations\r\n"
                    + "5. Or run on PC:\r\n"
                    + "   python tools/import_exported_scenarios.py\r\n"
                    + "   (pulls via adb from Download/GemorinScenarios)\r\n"
                    + "6. Rebuild APK.\r\n";
            help.writeString(text, false);
        } catch (Throwable ignored) {
        }
    }

    private static void toast(String msg, boolean ok) {
        try {
            if (CFG.toast != null) {
                CFG.toast.setInView(msg);
                CFG.toast.setTimeInView(ok ? 4500 : 3500);
            }
        } catch (Throwable ignored) {
        }
    }
}
