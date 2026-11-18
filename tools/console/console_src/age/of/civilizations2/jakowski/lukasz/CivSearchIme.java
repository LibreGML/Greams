package age.of.civilizations2.jakowski.lukasz;

/**
 * System IME for Create-Scenario civilization Search.
 * Never shows the in-game Latin keyboard panel.
 */
public final class CivSearchIme {
    public static boolean active;

    private CivSearchIme() {}

    public static void open() {
        try {
            // Must not use Keyboard.commandsMode (that steals handlers for console).
            if (Keyboard.commandsMode) {
                Keyboard.commandsMode = false;
            }
            active = true;
            CFG.updateKeyboard_Actions();

            if (CFG.sSearch != null) {
                CFG.keyboardMessage = CFG.sSearch;
            } else {
                CFG.keyboardMessage = "";
            }

            if (CFG.menuManager != null && CFG.menuManager.getKeyboard() != null) {
                CFG.menuManager.getKeyboard().setVisible(false);
            }
            ConsoleFloat.showSystemIme();
        } catch (Throwable t) {
            CFG.exceptionStack(t);
        }
    }

    public static void close() {
        if (!active) {
            return;
        }
        active = false;
        try {
            ConsoleFloat.hideSystemIme();
        } catch (Throwable ignored) {
        }
    }

    public static boolean isActive() {
        return active;
    }
}
