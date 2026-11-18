package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;

public class CFG {
    public static BitmapFont fontMain;
    public static Game game;
    public static MenuManager menuManager;
    public static Toast toast;
    public static LanguageManager langManager;
    public static String sSearch;
    public static String chosen_AlphabetCharachter;
    public static String CREATE_SCENARIO_GAME_DATA_TAG;
    public static Map map;
    public static Game_Action gameAction;
    public static Ideologies_Manager ideologiesManager;
    public static int PLAYER_TURNID;
    public static int FOG_OF_WAR;
    public static int DIFFICULTY;
    public static boolean SPECTATOR_MODE;
    public static boolean DEBUG_MODE;
    public static boolean NO_LIBERITY;
    public static int activeCivilizationArmyID;
    public static String sVERSION = "";
    public static Color COLOR_TEXT_MODIFIER_NEGATIVE2;
    public static String keyboardMessage;
    public static Keyboard_Action keyboardSave;
    public static Keyboard_Action keyboardDelete;
    public static Keyboard_Action_Write keyboardWrite;
    public static com.badlogic.gdx.graphics.g2d.GlyphLayout glyphLayout;
    public static int GAME_WIDTH = 1;
    public static int GAME_HEIGHT = 1;
    public static int PADDING = 4;
    public static int BUTTON_HEIGHT = 40;
    public static int TEXT_HEIGHT = 16;

    public interface Keyboard_Action {
        void action();
    }

    public interface Keyboard_Action_Write {
        void action(String text);
    }
    public static boolean XHDPI;
    public static boolean XXHDPI;
    public static boolean XXXHDPI;
    public static boolean XXXXHDPI;

    public static Color COLOR_TEXT_OPTIONS_NS_HOVER;

    public static void showKeyboard_Commands() {
    }

    public static void updateKeyboard_Actions() {
    }

    public static void exceptionStack(Throwable throwable) {
    }

    public static void drawRect(com.badlogic.gdx.graphics.g2d.SpriteBatch batch, int x, int y, int w, int h) {
    }

    public static void drawRect_NewGameBox(com.badlogic.gdx.graphics.g2d.SpriteBatch batch, int x, int y, int w, int h) {
    }

    public static void drawRect_NewGameBox_EDGE(com.badlogic.gdx.graphics.g2d.SpriteBatch batch, int x, int y, int w, int h) {
    }

    public static void drawText(com.badlogic.gdx.graphics.g2d.SpriteBatch batch, String text, int x, int y, Color color) {
    }

    public static void setRender_3(boolean v) {
    }

    public static String getNumberWithSpaces(String s) {
        return s;
    }

    public static boolean isDesktop() {
        return false;
    }

    public static boolean isAndroid() {
        return true;
    }

    public static java.util.List getFileNames(String path) {
        return null;
    }

    public static boolean isInTheGame(String tag) {
        return false;
    }

    public static boolean compareAlphabetic_TwoString(String a, String b) {
        return false;
    }
}
