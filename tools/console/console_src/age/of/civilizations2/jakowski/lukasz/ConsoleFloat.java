package age.of.civilizations2.jakowski.lukasz;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/**
 * Floating console panel on the right. System IME only — game Keyboard is kept hidden.
 * Compact input on top; output clipped below so scroll never covers the input.
 * Click the input band to refocus IME and place the caret precisely.
 */
public final class ConsoleFloat {
    private static boolean applied;
    private static int lastLineCount = -1;
    private static boolean contentLaidOut;
    private static boolean userMoved;
    private static int savedX;
    private static int savedY;
    private static boolean titleReady;
    private static java.lang.reflect.Field cachedTitleField;
    private static java.lang.reflect.Field cachedCloseableField;
    private static java.lang.reflect.Field cachedMoveableField;
    private static java.lang.reflect.Field cachedTitleHeightField;
    private static java.lang.reflect.Field cachedMaxSliderYField;
    private static java.lang.reflect.Field cachedMenusField;
    private static java.lang.reflect.Field cachedIngameField;
    private static java.lang.reflect.Field cachedConsoleIdxField;
    private static boolean menuFieldsResolved;

    /** True while the floating input should accept keys / show a caret. */
    private static boolean inputFocused;
    /** UTF-16 caret index into CFG.keyboardMessage. */
    private static int caret;
    private static boolean caretHandlersInstalled;
    private static CFG.Keyboard_Action_Write ourWriteHandler;
    private static CFG.Keyboard_Action ourDeleteHandler;
    private static long caretBlinkAt;

    /** Selection range [selAnchor, caret) when selAnchor >= 0; -1 = no selection. */
    private static int selAnchor = -1;

    /** Long-press tracking on the input band. */
    private static boolean pressTracking;
    private static boolean longPressFired;
    private static long pressDownAt;
    private static int pressDownX;
    private static int pressDownY;
    private static final int LONG_PRESS_MS = 450;
    private static final int LONG_PRESS_SLOP = 18;

    public static int panelX;
    public static int panelY;
    public static int panelW;
    public static int panelH;
    public static int inputH;
    public static int titleH;

    private ConsoleFloat() {
    }

    /**
     * Row pitch for console log lines.
     * Original TEXT_HEIGHT had zero leading (glyphs kissed). A small fixed gap
     * (~1/4 glyph) separates rows without blowing the list into sparse empty space.
     */
    public static int logLineHeight() {
        int th = Math.max(CFG.TEXT_HEIGHT, 12);
        int gap = Math.max(3, th / 4);
        if (gap > 6) {
            gap = 6;
        }
        return th + gap;
    }

    public static int titleHeight() {
        // Slim title strip — about 2/5 of button height (was 3/5)
        int h = (CFG.BUTTON_HEIGHT * 2) / 5;
        int min = Math.max(CFG.TEXT_HEIGHT + CFG.PADDING, 14);
        if (h < min) {
            h = min;
        }
        try {
            int closeH = ImageManager.getImage(Images.btn_close).getHeight();
            if (closeH > 0 && closeH < h) {
                h = closeH;
            } else if (closeH > h && closeH <= min + CFG.PADDING) {
                h = closeH;
            }
        } catch (Throwable ignored) {
        }
        return h;
    }

    public static void compute() {
        int gw = CFG.GAME_WIDTH;
        int gh = CFG.GAME_HEIGHT;
        int pad = CFG.PADDING;
        titleH = titleHeight();

        panelW = (int) (gw * 0.42f);
        if (panelW < (int) (gw * 0.36f)) {
            panelW = (int) (gw * 0.36f);
        }
        // ~0.5cm taller than 0.62 (≈ +3.5% of screen height)
        panelH = (int) (gh * 0.655f);
        if (panelH < (int) (gh * 0.55f)) {
            panelH = (int) (gh * 0.55f);
        }

        panelX = gw - panelW - pad * 2;

        int top = pad * 8;
        try {
            top = ImageManager.getImage(Images.top_left).getHeight()
                    + pad * 2
                    + ImageManager.getImage(Images.top_flag_frame).getHeight()
                    + pad * 3;
        } catch (Throwable ignored) {
        }
        // Leave room for the moveable title strip above the body
        panelY = top + titleH;

        try {
            int bottom = gh - CFG.map.getMapBG().getMinimapHeight() - pad * 2;
            if (panelY + panelH > bottom) {
                panelH = Math.max(bottom - panelY, (int) (gh * 0.50f));
            }
        } catch (Throwable ignored) {
        }

        // Compact single-line field — output gets the rest of the panel
        int line = Math.max(CFG.TEXT_HEIGHT, 12);
        inputH = line + pad * 3;
        int cap = Math.max(line + pad * 2, (int) (CFG.BUTTON_HEIGHT * 0.55f));
        if (inputH > cap) {
            inputH = cap;
        }
        if (inputH > panelH / 10) {
            inputH = Math.max(panelH / 10, line + pad * 2);
        }
    }

    /** Pixels from panel top reserved for input + gap; output scissor starts below this. */
    public static int outputTopInset() {
        if (inputH <= 0) {
            compute();
        }
        return inputH + CFG.PADDING;
    }

    public static void applyCommandsLayout() {
        try {
            compute();
            if (CFG.menuManager != null) {
                try {
                    // Hide civ FlagAction overlay only — never the main InGame HUD
                    CFG.menuManager.setVisible_InGame_FlagAction(false);
                } catch (Throwable ignored) {
                }
                try {
                    // FlagAction is hidden, so vanilla setOrderOfMenu_InGame_FlagAction used to no-op;
                    // force console to the front explicitly when opening.
                    CFG.menuManager.setOrderOfMenu_InGame_FlagAction();
                } catch (Throwable ignored) {
                }
            }

            SliderMenu keyboard = CFG.menuManager == null ? null : CFG.menuManager.getKeyboard();
            if (keyboard != null) {
                try {
                    keyboard.setVisible(false);
                } catch (Throwable ignored) {
                }
                clearKeyboardAnimation(keyboard);
            }

            SliderMenu console = getConsoleMenu();
            if (console == null) {
                return;
            }

            titleReady = false;
            ensureMoveableTitle(console);

            if (userMoved) {
                panelX = savedX;
                panelY = savedY;
            }

            console.setPosX(panelX);
            console.setPosY(panelY);
            console.setWidth(panelW);
            console.setHeight(panelH);
            try {
                console.setVisible(true);
            } catch (Throwable ignored) {
            }

            contentLaidOut = false;
            lastLineCount = -1;
            // First open: pin to top so the first lines are fully visible
            layoutConsoleContent(console, false);
            applied = true;
            focusInput();
        } catch (Throwable t) {
            try {
                CFG.exceptionStack(t);
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * Screen-space tap handler (MenuManager.actionDown).
     * Returns true if the tap hit the input band and was consumed.
     */
    public static boolean onTouch(int screenX, int screenY) {
        try {
            SliderMenu console = getConsoleMenu();
            if (console == null) {
                return false;
            }
            try {
                if (!console.getVisible()) {
                    return false;
                }
            } catch (Throwable ignored) {
                return false;
            }
            if (!applied) {
                compute();
            }
            int inset = outputTopInset();
            int left = console.getPosX();
            int top = console.getPosY();
            int right = left + console.getWidth();
            int bottom = top + inset;
            if (screenX < left || screenX > right || screenY < top || screenY > bottom) {
                pressTracking = false;
                return false;
            }
            int pad = CFG.PADDING;
            int textLeft = left + pad + pad;
            clearSelection();
            placeCaretFromX(screenX - textLeft);
            pressTracking = true;
            longPressFired = false;
            pressDownAt = System.currentTimeMillis();
            pressDownX = screenX;
            pressDownY = screenY;
            focusInput();
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** Refocus input: keep message, caret at end, force system IME back up. */
    public static void focusInput() {
        try {
            ensureCommandsMode();
            String msg = CFG.keyboardMessage;
            if (msg == null) {
                CFG.keyboardMessage = "";
                msg = "";
            }
            if (caret < 0 || caret > msg.length()) {
                caret = msg.length();
            }
            inputFocused = true;
            caretBlinkAt = System.currentTimeMillis();
            installCaretHandlers();
            // Force IME reopen after Android dismissed it (true alone is often a no-op)
            hideSystemIme();
            showSystemIme();
            try {
                CFG.setRender_3(true);
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
    }

    public static void selectAll() {
        try {
            String msg = CFG.keyboardMessage;
            if (msg == null) {
                msg = "";
                CFG.keyboardMessage = msg;
            }
            selAnchor = 0;
            caret = msg.length();
            inputFocused = true;
            caretBlinkAt = System.currentTimeMillis();
            installCaretHandlers();
            try {
                CFG.setRender_3(true);
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
    }

    private static void clearSelection() {
        selAnchor = -1;
    }

    private static boolean hasSelection() {
        return selAnchor >= 0 && selAnchor != caret;
    }

    private static int selLo() {
        return selAnchor < caret ? selAnchor : caret;
    }

    private static int selHi() {
        return selAnchor < caret ? caret : selAnchor;
    }

    /**
     * Before message draw: only relayout when line count changes.
     * Calling updateScrollable every frame resets scroll to top — that was the jump bug.
     */
    public static void onConsoleDraw(SliderMenu console, SpriteBatch batch, int ox, int oy) {
        if (console == null) {
            return;
        }
        try {
            if (!applied) {
                compute();
            }
            if (!titleReady) {
                ensureMoveableTitle(console);
            }
            rememberDraggedPos(console);
            int lines = 0;
            try {
                if (Commands.sConsole != null) {
                    lines = Commands.sConsole.size();
                }
            } catch (Throwable ignored) {
            }
            if (!contentLaidOut || lines != lastLineCount) {
                boolean grew = contentLaidOut && lines > lastLineCount;
                layoutConsoleContent(console, grew);
            }
            // Reinstall only if game code wiped our handlers — never every frame (GC hitch → HUD flash).
            if (inputFocused && (ourWriteHandler == null || CFG.keyboardWrite != ourWriteHandler
                    || CFG.keyboardDelete != ourDeleteHandler)) {
                installCaretHandlers();
            }
            tickLongPress();
        } catch (Throwable ignored) {
        }
    }

    private static void tickLongPress() {
        try {
            if (!pressTracking || longPressFired) {
                return;
            }
            boolean down = false;
            try {
                if (Gdx.input != null) {
                    down = Gdx.input.isTouched(0) || Gdx.input.isTouched();
                }
            } catch (Throwable ignored) {
            }
            if (!down) {
                pressTracking = false;
                return;
            }
            long held = System.currentTimeMillis() - pressDownAt;
            if (held >= LONG_PRESS_MS) {
                longPressFired = true;
                pressTracking = false;
                selectAll();
                showSystemIme();
            }
        } catch (Throwable ignored) {
        }
    }


    /**
     * Safe log+input draw for the floating console.
     * All scissors / font-scale / text work is caught here so MenuManager.draw never aborts
     * (which previously wiped the entire InGame HUD and left only the map).
     *
     * IMPORTANT: no nested try/finally that reuses a boolean register as Throwable —
     * that pattern produced ART VerifyError (register type Conflict) and crashed on
     * class load when opening a save / entering a game.
     */
    public static void drawLogAndInput(SliderMenu console, SpriteBatch batch, int ox, int oy) {
        if (console == null || batch == null) {
            return;
        }
        try {
            onConsoleDraw(console, batch, ox, oy);
            drawLogClipped(console, batch, ox, oy);
            drawInputOverlay(console, batch, ox, oy);
        } catch (Throwable ignored) {
        } finally {
            try {
                batch.setColor(Color.WHITE);
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * Draw console lines. Never touch shared BitmapFont scale — mutating
     * CFG.fontMain mid-frame previously helped wipe the whole HUD when draw aborted.
     * No ScissorStack (d8 try/finally caused ART VerifyError on class load).
     * Cull by Y so rows cannot paint outside the panel / into the title or map.
     */
    private static void drawLogClipped(SliderMenu console, SpriteBatch batch, int ox, int oy) {
        try {
            drawConsoleLines(console, batch, ox, oy);
        } catch (Throwable ignored) {
        }
    }

    private static void drawConsoleLines(SliderMenu console, SpriteBatch batch, int ox, int oy) {
        if (Commands.sConsole == null || console.getMenuElementsSize() <= 0) {
            return;
        }
        MenuElement el0 = console.getMenuElement(0);
        if (el0 == null) {
            return;
        }
        Color color = CFG.COLOR_TEXT_OPTIONS_NS_HOVER;
        if (color == null) {
            color = Color.WHITE;
        }
        int pad = CFG.PADDING;
        int lineH = logLineHeight();
        int textH = Math.max(CFG.TEXT_HEIGHT, 12);
        int textAdjust = Math.max(0, (lineH - textH) / 2);
        int baseX = console.getPosX() + el0.getPosX() + pad + ox;
        int menuPosY = console.getMenuPosY();
        // Visible log band: below input inset, above panel bottom (keep inside chrome).
        int panelTop = console.getPosY() + oy;
        int clipTop = panelTop + outputTopInset();
        int clipBot = panelTop + console.getHeight() - Math.max(pad, 2);
        int n = Commands.sConsole.size();
        for (int i = 0; i < n; i++) {
            Object row = Commands.sConsole.get(i);
            if (!(row instanceof String)) {
                continue;
            }
            String s = (String) row;
            int ty = el0.getPosY() + menuPosY + lineH * i + textAdjust + oy;
            // Only fully-inside rows — partial rows at the edge still look like bleed.
            if (ty < clipTop || ty + textH > clipBot) {
                continue;
            }
            try {
                CFG.drawText(batch, s, baseX, ty, color);
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * After message scissor pop: opaque input band on top so scrolled text cannot cover it.
     */
    public static void drawInputOverlay(SliderMenu console, SpriteBatch batch, int ox, int oy) {
        if (console == null || batch == null) {
            return;
        }
        try {
            if (!applied) {
                compute();
            }
            drawInputBar(batch, console, ox, oy);
        } catch (Throwable ignored) {
        }
    }

    public static void showSystemIme() {
        try {
            if (Gdx.input != null) {
                Gdx.input.setOnscreenKeyboardVisible(true);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void hideSystemIme() {
        try {
            if (Gdx.input != null) {
                Gdx.input.setOnscreenKeyboardVisible(false);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void submitLine() {
        try {
            if (CFG.keyboardSave != null) {
                CFG.keyboardSave.action();
            }
            caret = 0;
            SliderMenu console = getConsoleMenu();
            if (console != null) {
                layoutConsoleContent(console, true);
            }
            // Stay focused and keep IME for the next command
            focusInput();
        } catch (Throwable ignored) {
        }
    }

    public static void restore() {
        inputFocused = false;
        caretHandlersInstalled = false;
        hideSystemIme();
        applied = false;
        lastLineCount = -1;
        contentLaidOut = false;
        titleReady = false;
        try {
            SliderMenu keyboard = CFG.menuManager == null ? null : CFG.menuManager.getKeyboard();
            if (keyboard != null) {
                keyboard.setVisible(false);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void ensureCommandsMode() {
        try {
            if (!Keyboard.commandsMode) {
                Keyboard.commandsMode = true;
                try {
                    CFG.updateKeyboard_Actions();
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
        installCaretHandlers();
    }

    /** Insert/delete at caret instead of always at end-of-string. */
    private static void installCaretHandlers() {
        try {
            ourWriteHandler = new CFG.Keyboard_Action_Write() {
                public void action(String text) {
                    insertAtCaret(text);
                }
            };
            ourDeleteHandler = new CFG.Keyboard_Action() {
                public void action() {
                    // Single keyTyped('\b') path only — never pair with keyDown delete
                    if (hasSelection()) {
                        deleteSelection();
                    } else {
                        deleteOneBeforeCaret();
                    }
                    requestRedraw();
                }
            };
            CFG.keyboardWrite = ourWriteHandler;
            CFG.keyboardDelete = ourDeleteHandler;
            caretHandlersInstalled = true;
        } catch (Throwable ignored) {
            caretHandlersInstalled = false;
            ourWriteHandler = null;
            ourDeleteHandler = null;
        }
    }

    private static void insertAtCaret(String text) {
        try {
            if (text == null || text.length() == 0) {
                return;
            }
            if (hasSelection()) {
                deleteSelection();
            }
            String msg = CFG.keyboardMessage;
            if (msg == null) {
                msg = "";
            }
            if (caret < 0) {
                caret = 0;
            }
            if (caret > msg.length()) {
                caret = msg.length();
            }
            CFG.keyboardMessage = msg.substring(0, caret) + text + msg.substring(caret);
            caret += text.length();
            clearSelection();
            caretBlinkAt = System.currentTimeMillis();
            try {
                CFG.setRender_3(true);
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
    }

    private static void deleteSelection() {
        String msg = CFG.keyboardMessage;
        if (msg == null) {
            msg = "";
            CFG.keyboardMessage = msg;
        }
        int lo = selLo();
        int hi = selHi();
        if (lo < 0) {
            lo = 0;
        }
        if (hi > msg.length()) {
            hi = msg.length();
        }
        if (lo > hi) {
            int t = lo;
            lo = hi;
            hi = t;
        }
        CFG.keyboardMessage = msg.substring(0, lo) + msg.substring(hi);
        caret = lo;
        clearSelection();
    }

    /** @return false if nothing left to delete */
    private static boolean deleteOneBeforeCaret() {
        try {
            String msg = CFG.keyboardMessage;
            if (msg == null || msg.length() == 0 || caret <= 0) {
                if (msg == null) {
                    CFG.keyboardMessage = "";
                }
                return false;
            }
            if (caret > msg.length()) {
                caret = msg.length();
            }
            CFG.keyboardMessage = msg.substring(0, caret - 1) + msg.substring(caret);
            caret--;
            clearSelection();
            caretBlinkAt = System.currentTimeMillis();
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void requestRedraw() {
        try {
            CFG.setRender_3(true);
        } catch (Throwable ignored) {
        }
    }

    private static void placeCaretFromX(int localX) {
        try {
            String msg = CFG.keyboardMessage;
            if (msg == null) {
                msg = "";
            }
            if (localX <= 0) {
                caret = 0;
                return;
            }
            int best = msg.length();
            float bestDist = Float.MAX_VALUE;
            for (int i = 0; i <= msg.length(); i++) {
                float w = measureTextWidth(msg.substring(0, i));
                float d = Math.abs(w - localX);
                if (d < bestDist) {
                    bestDist = d;
                    best = i;
                }
            }
            caret = best;
        } catch (Throwable ignored) {
            caret = 0;
        }
    }

    private static float measureTextWidth(String s) {
        try {
            if (s == null || s.length() == 0) {
                return 0f;
            }
            if (CFG.glyphLayout != null && CFG.fontMain != null) {
                CFG.glyphLayout.setText(CFG.fontMain, s);
                return CFG.glyphLayout.width;
            }
        } catch (Throwable ignored) {
        }
        return s == null ? 0f : s.length() * (CFG.TEXT_HEIGHT * 0.55f);
    }

    /**
     * @param pinToBottom when true (new output), scroll so latest lines are visible;
     *                    first open pins to top so the first lines are fully visible.
     */
    private static void layoutConsoleContent(SliderMenu console, boolean pinToBottom) {
        int pad = CFG.PADDING;
        int inset = outputTopInset();
        int lines = 0;
        try {
            if (Commands.sConsole != null) {
                lines = Commands.sConsole.size();
            }
        } catch (Throwable ignored) {
        }

        int lineH = logLineHeight();
        int viewH = Math.max(panelH - inset, lineH * 3);
        // Exact line stack + bottom gap — must match drawConsoleLines pitch
        int contentH = Math.max(lines * lineH + pad * 2, viewH);

        try {
            if (console.getMenuElementsSize() > 0) {
                MenuElement el0 = console.getMenuElement(0);
                if (el0 != null) {
                    el0.setPosX(pad * 2);
                    // Content starts exactly at inset (= scissor top)
                    setElPosY(el0, inset);
                    el0.setWidth(panelW - pad * 4);
                    el0.setHeight(contentH);
                }
            }
            // el1 must NOT extend scroll range past real text (was resetting / fighting scroll)
            if (console.getMenuElementsSize() > 1) {
                MenuElement el1 = console.getMenuElement(1);
                if (el1 != null) {
                    el1.setPosX(0);
                    setElPosY(el1, inset);
                    el1.setWidth(panelW);
                    el1.setHeight(contentH);
                }
            }

            // updateScrollable() always snaps menuPosY back to getPosY() — only call on relayout
            console.updateScrollable();

            int maxY = 0;
            try {
                if (cachedMaxSliderYField == null) {
                    cachedMaxSliderYField = findField(SliderMenu.class, "iMaxSliderPositionY");
                    if (cachedMaxSliderYField != null) {
                        cachedMaxSliderYField.setAccessible(true);
                    }
                }
                if (cachedMaxSliderYField != null) {
                    maxY = cachedMaxSliderYField.getInt(console);
                }
            } catch (Throwable ignored) {
            }

            if (pinToBottom && maxY > console.getHeight()) {
                int bottom = console.getPosY() + console.getHeight() - maxY;
                console.setMenuPosY(bottom);
            } else {
                // Top of log fully visible under the input band
                console.setMenuPosY(console.getPosY());
            }

            lastLineCount = lines;
            contentLaidOut = true;
        } catch (Throwable ignored) {
        }
    }

    private static void drawInputBar(SpriteBatch batch, SliderMenu console, int ox, int oy) {
        int pad = CFG.PADDING;
        int inset = outputTopInset();
        int bandX = console.getPosX() + ox;
        int bandY = console.getPosY() + oy;
        int bandW = console.getWidth();

        // Opaque band covering the whole input zone (blocks scrolled output)
        fillRect(batch, bandX, bandY, bandW, inset, 0.04f, 0.08f, 0.14f, 1f);

        int boxH = Math.max(CFG.TEXT_HEIGHT + pad, inputH - pad);
        int x = console.getPosX() + pad + ox;
        int y = console.getPosY() + pad + oy;
        int w = console.getWidth() - pad * 2;

        fillRect(batch, x, y, w, boxH, 0.02f, 0.05f, 0.10f, 1f);
        try {
            CFG.drawRect_NewGameBox_EDGE(batch, x, y, w, boxH);
        } catch (Throwable ignored) {
            try {
                CFG.drawRect(batch, x, y, w, boxH);
            } catch (Throwable ignored2) {
            }
        }

        String raw = CFG.keyboardMessage;
        if (raw == null) {
            raw = "";
        }
        boolean empty = raw.length() == 0;
        String draw = empty && !inputFocused ? "点击输入.." : raw;
        Color color = null;
        try {
            color = CFG.COLOR_TEXT_OPTIONS_NS_HOVER;
        } catch (Throwable ignored) {
        }
        if (color == null) {
            color = Color.WHITE;
        }
        if (empty && !inputFocused) {
            color = new Color(color.r, color.g, color.b, 0.45f);
        }
        int ty = y + Math.max(0, (boxH - CFG.TEXT_HEIGHT) / 2);
        int textX = x + pad;
        int ch = Math.max(CFG.TEXT_HEIGHT, 12);

        // Selection highlight (long-press select-all)
        if (inputFocused && hasSelection() && raw.length() > 0) {
            try {
                int lo = selLo();
                int hi = selHi();
                if (lo < 0) {
                    lo = 0;
                }
                if (hi > raw.length()) {
                    hi = raw.length();
                }
                float x0 = measureTextWidth(raw.substring(0, lo));
                float x1 = measureTextWidth(raw.substring(0, hi));
                int sw = (int) (x1 - x0);
                if (sw < 2) {
                    sw = 2;
                }
                fillRect(batch, textX + (int) x0, ty, sw, ch, 0.15f, 0.45f, 0.85f, 0.55f);
            } catch (Throwable ignored) {
            }
        }

        try {
            CFG.drawText(batch, draw, textX, ty, color);
        } catch (Throwable ignored) {
        }

        // Blinking caret when focused (hidden while selection spans text)
        if (inputFocused && !hasSelection()) {
            try {
                long blink = (System.currentTimeMillis() - caretBlinkAt) % 1000L;
                if (blink < 550L) {
                    if (caret < 0) {
                        caret = 0;
                    }
                    if (caret > raw.length()) {
                        caret = raw.length();
                    }
                    float cw = measureTextWidth(raw.substring(0, caret));
                    int cx = textX + (int) cw;
                    fillRect(batch, cx, ty, Math.max(2, pad / 3), ch, 0.85f, 0.95f, 1f, 0.95f);
                }
            } catch (Throwable ignored) {
            }
        }
        if (inputFocused) {
            // Focus ring
            try {
                fillRect(batch, x, y + boxH - 2, w, 2, 0.20f, 0.70f, 0.95f, 0.90f);
            } catch (Throwable ignored) {
            }
        }

        // Divider under the input band
        int divY = console.getPosY() + inset - Math.max(1, pad / 2) + oy;
        fillRect(batch, x, divY, w, Math.max(1, pad / 2), 0.15f, 0.55f, 0.75f, 0.85f);
    }

    private static void fillRect(SpriteBatch batch, int x, int y, int w, int h, float r, float g, float b, float a) {
        if (w <= 0 || h <= 0) {
            return;
        }
        try {
            batch.setColor(r, g, b, a);
            Image img = ImageManager.getImage(Images.gradient);
            if (img != null) {
                img.draw(batch, x, y - img.getHeight(), w, h);
            }
            batch.setColor(1f, 1f, 1f, 1f);
        } catch (Throwable ignored) {
            try {
                batch.setColor(1f, 1f, 1f, 1f);
            } catch (Throwable ignored2) {
            }
        }
    }

    /** Native AoC title-bar drag: moveable SliderMenuTitle above the panel body. */
    private static void ensureMoveableTitle(SliderMenu console) {
        try {
            int h = titleH > 0 ? titleH : titleHeight();
            SliderMenuTitle title = null;
            try {
                title = console.getTitle();
            } catch (Throwable ignored) {
            }
            if (title == null) {
                title = new SliderMenuTitle("控制台", h, true, false);
                if (cachedTitleField == null) {
                    cachedTitleField = findField(SliderMenu.class, "sliderMenuTitle");
                    if (cachedTitleField != null) {
                        cachedTitleField.setAccessible(true);
                    }
                }
                if (cachedTitleField != null) {
                    cachedTitleField.set(console, title);
                }
            } else {
                if (cachedMoveableField == null) {
                    cachedMoveableField = findField(SliderMenuTitle.class, "moveable");
                    if (cachedMoveableField != null) {
                        cachedMoveableField.setAccessible(true);
                    }
                }
                if (cachedMoveableField != null && !cachedMoveableField.getBoolean(title)) {
                    cachedMoveableField.setBoolean(title, true);
                }
                if (cachedTitleHeightField == null) {
                    cachedTitleHeightField = findField(SliderMenuTitle.class, "iHeight");
                    if (cachedTitleHeightField != null) {
                        cachedTitleHeightField.setAccessible(true);
                    }
                }
                if (cachedTitleHeightField != null && cachedTitleHeightField.getInt(title) != h) {
                    cachedTitleHeightField.setInt(title, h);
                }
            }
            if (cachedCloseableField == null) {
                cachedCloseableField = findField(SliderMenu.class, "closeable");
                if (cachedCloseableField != null) {
                    cachedCloseableField.setAccessible(true);
                }
            }
            if (cachedCloseableField != null && !cachedCloseableField.getBoolean(console)) {
                cachedCloseableField.setBoolean(console, true);
            }
            titleReady = true;
        } catch (Throwable ignored) {
            titleReady = false;
        }
    }

    private static void rememberDraggedPos(SliderMenu console) {
        try {
            int x = console.getPosX();
            int y = console.getPosY();
            if (x != panelX || y != panelY) {
                userMoved = true;
                savedX = x;
                savedY = y;
                panelX = x;
                panelY = y;
            }
        } catch (Throwable ignored) {
        }
    }

    private static void clearKeyboardAnimation(SliderMenu keyboard) {
        try {
            java.lang.reflect.Field f = findField(keyboard.getClass(), "animationChangePosY");
            if (f != null) {
                f.setAccessible(true);
                f.setInt(keyboard, 0);
            }
            f = findField(keyboard.getClass(), "animationStepID");
            if (f != null) {
                f.setAccessible(true);
                f.setInt(keyboard, 13);
            }
            f = findField(keyboard.getClass(), "closeMenu");
            if (f != null) {
                f.setAccessible(true);
                f.setBoolean(keyboard, false);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void setElPosY(MenuElement el, int y) {
        try {
            el.setPosY(y);
            return;
        } catch (Throwable ignored) {
        }
        try {
            java.lang.reflect.Field f = findField(el.getClass(), "iPosY");
            if (f != null) {
                f.setAccessible(true);
                f.setInt(el, y);
            }
        } catch (Throwable ignored) {
        }
    }

    private static java.lang.reflect.Field findField(Class cls, String name) {
        while (cls != null) {
            try {
                return cls.getDeclaredField(name);
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static void resolveMenuFields() {
        if (menuFieldsResolved) {
            return;
        }
        cachedMenusField = findField(MenuManager.class, "menus");
        cachedIngameField = findField(MenuManager.class, "INGAME");
        cachedConsoleIdxField = findField(MenuManager.class, "INGAME_FLAG_ACTION_CONSOLE");
        try {
            if (cachedMenusField != null) {
                cachedMenusField.setAccessible(true);
            }
            if (cachedIngameField != null) {
                cachedIngameField.setAccessible(true);
            }
            if (cachedConsoleIdxField != null) {
                cachedConsoleIdxField.setAccessible(true);
            }
        } catch (Throwable ignored) {
        }
        menuFieldsResolved = true;
    }

    private static SliderMenu getConsoleMenu() {
        try {
            MenuManager mm = CFG.menuManager;
            if (mm == null) {
                return null;
            }
            resolveMenuFields();
            if (cachedMenusField == null || cachedIngameField == null || cachedConsoleIdxField == null) {
                return null;
            }
            java.util.List menus = (java.util.List) cachedMenusField.get(mm);
            if (menus == null) {
                return null;
            }
            int ingame = cachedIngameField.getInt(mm);
            int consoleIdx = cachedConsoleIdxField.getInt(mm);
            java.util.List view = (java.util.List) menus.get(ingame);
            if (view == null || consoleIdx < 0 || consoleIdx >= view.size()) {
                return null;
            }
            return (SliderMenu) view.get(consoleIdx);
        } catch (Throwable ignored) {
            return null;
        }
    }
}
