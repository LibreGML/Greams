package age.of.civilizations2.jakowski.lukasz;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Scientific calculator integrated into the normal console.
 * No separate "calc mode" — expressions and whitelisted functions run directly.
 * <p>
 * Examples: {@code 2+3*4}, {@code sin(pi/2)}, {@code x=2**10}, {@code = hex(255)},
 * {@code funcs}, {@code vars}.
 */
public final class ConsoleCalc {
    private static final Map VARS = new LinkedHashMap();

    private ConsoleCalc() {
    }

    /** Always false — calc mode removed; kept so older call sites compile. */
    public static boolean isMode() {
        return false;
    }

    /** No-op (mode removed). */
    public static void enterMode() {
        printTopicHelp();
    }

    /** No-op (mode removed). */
    public static void leaveMode() {
    }

    public static void resetVars() {
        VARS.clear();
        ConsoleOut.usage("变量已清空");
    }

    /**
     * Handle explicit calculator commands that must run before game-command matching:
     * {@code = expr}, {@code calc …}, {@code funcs}, {@code vars}, {@code creset}.
     * Returns true if consumed.
     */
    public static boolean handleExplicit(String original, String lower) {
        try {
            if (original == null) {
                return false;
            }
            String raw = original.trim();
            if (raw.length() == 0) {
                return false;
            }

            if (raw.startsWith("=")) {
                String expr = raw.substring(1).trim();
                if (expr.length() == 0) {
                    ConsoleOut.usage("用法: = 表达式   或直接输入  2+3  /  sin(pi/2)");
                    return true;
                }
                evalAndPrint(expr);
                return true;
            }

            String low = lower == null ? raw.toLowerCase() : lower.trim();
            String[] tok = ConsoleEngine.split(low);
            if (tok.length == 0) {
                return false;
            }

            if ("funcs".equals(tok[0]) || "functions".equals(tok[0])) {
                CalcFns.printHelp();
                return true;
            }
            if ("vars".equals(tok[0])) {
                printVars();
                return true;
            }
            if ("creset".equals(tok[0]) || ("reset".equals(tok[0]) && tok.length == 1)) {
                // bare "reset" clears calc vars; game has no "reset" command
                resetVars();
                return true;
            }
            if ("calc".equals(tok[0])) {
                if (tok.length == 1) {
                    printTopicHelp();
                    return true;
                }
                String rest = ConsoleContext.join(tok, 1);
                if ("off".equals(rest) || "exit".equals(rest) || "q".equals(rest)
                        || "on".equals(rest) || "mode".equals(rest)) {
                    ConsoleOut.usage("已无单独计算器模式，直接输入表达式即可");
                    printTopicHelp();
                    return true;
                }
                if ("reset".equals(rest)) {
                    resetVars();
                    return true;
                }
                if ("funcs".equals(rest) || "functions".equals(rest) || "help".equals(rest)
                        || "h".equals(rest) || "?".equals(rest)) {
                    if ("funcs".equals(rest) || "functions".equals(rest)) {
                        CalcFns.printHelp();
                    } else {
                        printTopicHelp();
                    }
                    return true;
                }
                String expr = raw.length() > 4 ? raw.substring(4).trim() : rest;
                evalAndPrint(expr);
                return true;
            }
            return false;
        } catch (Throwable t) {
            ConsoleOut.err("计算失败");
            return true;
        }
    }

    /**
     * If {@code original} looks like a math/assignment expression, evaluate it.
     * Call only after exact game-command match failed.
     */
    public static boolean tryEval(String original) {
        try {
            if (original == null) {
                return false;
            }
            String raw = original.trim();
            if (raw.length() == 0 || !looksLikeExpression(raw)) {
                return false;
            }
            evalAndPrint(raw);
            return true;
        } catch (Throwable t) {
            ConsoleOut.err("计算失败");
            return true;
        }
    }

    /** @deprecated use {@link #handleExplicit} + {@link #tryEval} */
    public static boolean handleLine(String original, String lower) {
        if (handleExplicit(original, lower)) {
            return true;
        }
        return tryEval(original);
    }

    /**
     * Heuristic: assignment, operators, numeric literal, or {@code name(}.
     * Game commands like {@code set army 5} do not match (matched earlier by Engine).
     */
    public static boolean looksLikeExpression(String raw) {
        if (raw == null) {
            return false;
        }
        String s = raw.trim();
        if (s.length() == 0) {
            return false;
        }
        // x = …  /  ans=1  (not == comparison alone as whole line — still ok to eval)
        int eq = indexOfAssign(s);
        if (eq > 0) {
            return true;
        }
        char c0 = s.charAt(0);
        if ((c0 >= '0' && c0 <= '9') || c0 == '.' || c0 == '(' || c0 == '+' || c0 == '-') {
            // Leading +/-/digit: expression unless it is clearly "cmd args" with only spaces/digits
            if (hasMathSyntax(s)) {
                return true;
            }
            // Pure number or signed number
            if (isNumericLiteral(s)) {
                return true;
            }
        }
        if (hasMathSyntax(s)) {
            return true;
        }
        // known function name alone → show hint rather than eval empty call
        String low = s.toLowerCase();
        if (isFuncName(low)) {
            return true; // eval will fail with useful error, or user typed "sin" mid-edit then enter
        }
        // stored variable
        if (VARS.containsKey(low)) {
            return true;
        }
        return false;
    }

    private static boolean hasMathSyntax(String s) {
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '+' || c == '*' || c == '/' || c == '%' || c == '^'
                    || c == '(' || c == ')' || c == ',' || c == '!' || c == '&' || c == '|'
                    || c == '<' || c == '>' || c == '~') {
                return true;
            }
            if (c == '*' && i + 1 < s.length() && s.charAt(i + 1) == '*') {
                return true;
            }
            // binary minus or complex suffix digit+j
            if (c == 'j' || c == 'J') {
                if (i > 0) {
                    char p = s.charAt(i - 1);
                    if ((p >= '0' && p <= '9') || p == '.') {
                        return true;
                    }
                }
            }
        }
        // function call: ident(
        int paren = s.indexOf('(');
        if (paren > 0) {
            String name = s.substring(0, paren).trim();
            if (name.length() > 0 && isIdent(name)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isNumericLiteral(String s) {
        try {
            String t = s.trim();
            if (t.startsWith("+") || t.startsWith("-")) {
                t = t.substring(1).trim();
            }
            if (t.length() == 0) {
                return false;
            }
            // allow 0x… 0b… 1.5e-2
            for (int i = 0; i < t.length(); i++) {
                char c = t.charAt(i);
                if ((c >= '0' && c <= '9') || c == '.' || c == 'e' || c == 'E'
                        || c == 'x' || c == 'X' || c == 'b' || c == 'B'
                        || c == 'a' || c == 'A' || c == 'c' || c == 'C'
                        || c == 'd' || c == 'D' || c == 'f' || c == 'F'
                        || c == '+' || c == '-') {
                    continue;
                }
                return false;
            }
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static int indexOfAssign(String s) {
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '=') {
                if (i > 0 && (s.charAt(i - 1) == '<' || s.charAt(i - 1) == '>' || s.charAt(i - 1) == '!'
                        || s.charAt(i - 1) == '=')) {
                    continue;
                }
                if (i + 1 < s.length() && s.charAt(i + 1) == '=') {
                    continue;
                }
                return i;
            }
        }
        return -1;
    }

    private static boolean isIdent(String name) {
        if (name == null || name.length() == 0) {
            return false;
        }
        char c0 = name.charAt(0);
        if (!((c0 >= 'a' && c0 <= 'z') || (c0 >= 'A' && c0 <= 'Z') || c0 == '_')) {
            return false;
        }
        for (int i = 1; i < name.length(); i++) {
            char c = name.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_') {
                continue;
            }
            return false;
        }
        return true;
    }

    private static boolean isFuncName(String low) {
        try {
            String[] ns = CalcFns.names();
            for (int i = 0; i < ns.length; i++) {
                if (low.equals(ns[i])) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void evalAndPrint(String expr) {
        try {
            CalcValue v = CalcParser.eval(expr, VARS);
            VARS.put("ans", v);
            ConsoleOut.line("= " + v.toRepr());
        } catch (CalcValue.CalcException ex) {
            ConsoleOut.err(ex.getMessage() == null ? "计算错误" : ex.getMessage());
            ConsoleOut.usage("提示: funcs 函数列表 | vars 变量 | = 表达式");
        } catch (ArithmeticException ex) {
            ConsoleOut.err("数值超出范围");
        } catch (NumberFormatException ex) {
            ConsoleOut.err("数字格式错误");
        } catch (Throwable t) {
            ConsoleOut.err("计算错误");
        }
    }

    private static void printVars() {
        if (VARS.isEmpty()) {
            ConsoleOut.usage("(无变量)");
            return;
        }
        Iterator it = VARS.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry e = (Map.Entry) it.next();
            CalcValue v = (CalcValue) e.getValue();
            ConsoleOut.usage(e.getKey() + " = " + v.toRepr());
        }
    }

    public static void printTopicHelp() {
        ConsoleOut.usage("--- 计算（直接在控制台输入，无需 calc 模式）---");
        ConsoleOut.usage("2+3*4 | (1+2j)*(3-1j) | sin(pi/2)");
        ConsoleOut.usage("x=2**10   上次结果 ans   = hex(255)");
        ConsoleOut.usage("funcs  函数列表   vars  变量   reset  清空变量");
        ConsoleOut.usage("支持复数、进制、编解码；白名单函数，无脚本执行");
    }
}
