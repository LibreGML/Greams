package age.of.civilizations2.jakowski.lukasz;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Map;

/**
 * Safe recursive-descent expression parser/evaluator.
 * Supports assignment, arithmetic, bitwise, comparisons, logic, calls, complex literals.
 */
public final class CalcParser {
    private static final int MAX_LEN = 2048;
    private static final int MAX_DEPTH = 64;
    private static final CalcValue ZERO = CalcValue.ofInt(0);

    private final String src;
    private final Map vars;
    private int pos;
    private int depth;
    private String assignedName;
    /** Walk syntax tree but return dummies (and/or short-circuit). */
    private boolean skipEval;

    private CalcParser(String src, Map vars) {
        this.src = src;
        this.vars = vars;
    }

    public static CalcValue eval(String expr, Map vars) throws CalcValue.CalcException {
        if (expr == null) {
            throw new CalcValue.CalcException("空表达式");
        }
        String s = expr.trim();
        if (s.length() == 0) {
            throw new CalcValue.CalcException("空表达式");
        }
        if (s.length() > MAX_LEN) {
            throw new CalcValue.CalcException("表达式过长");
        }
        CalcParser p = new CalcParser(s, vars);
        CalcValue v = p.parseStatement();
        p.skipWs();
        if (p.pos < p.src.length()) {
            throw new CalcValue.CalcException("多余输入");
        }
        v = v.simplify();
        if (vars != null) {
            vars.put("ans", v);
        }
        return v;
    }

    private CalcValue parseStatement() throws CalcValue.CalcException {
        skipWs();
        int save = pos;
        String name = readIdent();
        if (name != null) {
            skipWs();
            // Single '=' only — never treat '==' as assignment
            if (peek() == '=' && peek2() != '=') {
                pos++;
                if (!isVarName(name)) {
                    throw new CalcValue.CalcException("非法变量名");
                }
                if (isKeyword(name)) {
                    throw new CalcValue.CalcException("不能赋值给 " + name);
                }
                if (vars == null) {
                    throw new CalcValue.CalcException("无法赋值");
                }
                CalcValue rhs = parseOr().simplify();
                assignedName = name;
                vars.put(name, rhs);
                return rhs;
            }
        }
        pos = save;
        assignedName = null;
        return parseOr();
    }

    private CalcValue parseOr() throws CalcValue.CalcException {
        CalcValue v = parseAnd();
        while (true) {
            skipWs();
            if (matchWord("or")) {
                // Python-style: return first truthy operand (short-circuit)
                if (!skipEval && v.truthy()) {
                    boolean prev = skipEval;
                    skipEval = true;
                    parseAnd();
                    skipEval = prev;
                } else {
                    CalcValue r = parseAnd();
                    if (!skipEval) {
                        v = r;
                    }
                }
            } else {
                return v;
            }
        }
    }

    private CalcValue parseAnd() throws CalcValue.CalcException {
        CalcValue v = parseNot();
        while (true) {
            skipWs();
            if (matchWord("and")) {
                // Python-style: return first falsy operand, else last (short-circuit)
                if (!skipEval && !v.truthy()) {
                    boolean prev = skipEval;
                    skipEval = true;
                    parseNot();
                    skipEval = prev;
                } else {
                    CalcValue r = parseNot();
                    if (!skipEval) {
                        v = r;
                    }
                }
            } else {
                return v;
            }
        }
    }

    private CalcValue parseNot() throws CalcValue.CalcException {
        skipWs();
        if (matchWord("not")) {
            CalcValue v = parseNot();
            return skipEval ? ZERO : CalcValue.ofBool(!v.truthy());
        }
        return parseCompare();
    }

    private CalcValue parseCompare() throws CalcValue.CalcException {
        CalcValue v = parseBitor();
        skipWs();
        int op = -1;
        if (matchStr("==")) {
            op = 0;
        } else if (matchStr("!=")) {
            op = 1;
        } else if (matchStr("<=")) {
            op = 3;
        } else if (matchStr(">=")) {
            op = 5;
        } else if (match('<')) {
            op = 2;
        } else if (match('>')) {
            op = 4;
        }
        if (op < 0) {
            return v;
        }
        CalcValue r = parseBitor();
        return skipEval ? ZERO : CalcValue.cmp(v, r, op);
    }

    private CalcValue parseBitor() throws CalcValue.CalcException {
        CalcValue v = parseBitxor();
        while (true) {
            skipWs();
            if (peek() == '|' && peek2() != '|') {
                pos++;
                CalcValue r = parseBitxor();
                v = skipEval ? ZERO : CalcValue.bitOr(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseBitxor() throws CalcValue.CalcException {
        CalcValue v = parseBitand();
        while (true) {
            skipWs();
            if (match('^')) {
                CalcValue r = parseBitand();
                v = skipEval ? ZERO : CalcValue.bitXor(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseBitand() throws CalcValue.CalcException {
        CalcValue v = parseShift();
        while (true) {
            skipWs();
            if (peek() == '&' && peek2() != '&') {
                pos++;
                CalcValue r = parseShift();
                v = skipEval ? ZERO : CalcValue.bitAnd(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseShift() throws CalcValue.CalcException {
        CalcValue v = parseAdd();
        while (true) {
            skipWs();
            if (matchStr("<<")) {
                CalcValue r = parseAdd();
                v = skipEval ? ZERO : CalcValue.shiftLeft(v, r);
            } else if (matchStr(">>")) {
                CalcValue r = parseAdd();
                v = skipEval ? ZERO : CalcValue.shiftRight(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseAdd() throws CalcValue.CalcException {
        CalcValue v = parseMul();
        while (true) {
            skipWs();
            if (match('+')) {
                CalcValue r = parseMul();
                v = skipEval ? ZERO : CalcValue.add(v, r);
            } else if (match('-')) {
                CalcValue r = parseMul();
                v = skipEval ? ZERO : CalcValue.sub(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseMul() throws CalcValue.CalcException {
        CalcValue v = parseUnary();
        while (true) {
            skipWs();
            if (matchStr("//")) {
                CalcValue r = parseUnary();
                v = skipEval ? ZERO : CalcValue.floordiv(v, r);
            } else if (match('*')) {
                CalcValue r = parseUnary();
                v = skipEval ? ZERO : CalcValue.mul(v, r);
            } else if (match('/')) {
                CalcValue r = parseUnary();
                v = skipEval ? ZERO : CalcValue.div(v, r);
            } else if (match('%')) {
                CalcValue r = parseUnary();
                v = skipEval ? ZERO : CalcValue.mod(v, r);
            } else {
                return v;
            }
        }
    }

    private CalcValue parseUnary() throws CalcValue.CalcException {
        skipWs();
        if (match('+')) {
            return parseUnary();
        }
        if (match('-')) {
            CalcValue v = parseUnary();
            return skipEval ? ZERO : CalcValue.neg(v);
        }
        if (match('~')) {
            CalcValue v = parseUnary();
            return skipEval ? ZERO : CalcValue.bitNot(v);
        }
        return parsePower();
    }

    private CalcValue parsePower() throws CalcValue.CalcException {
        CalcValue base = parsePrimary();
        skipWs();
        if (matchStr("**")) {
            CalcValue exp = parseUnary();
            return skipEval ? ZERO : CalcValue.pow(base, exp);
        }
        return base;
    }

    private CalcValue parsePrimary() throws CalcValue.CalcException {
        enter();
        try {
            skipWs();
            char c = peek();
            if (c == '(') {
                pos++;
                CalcValue v = parseOr();
                skipWs();
                if (!match(')')) {
                    throw new CalcValue.CalcException("缺少 )");
                }
                return v;
            }
            if (c == '"' || c == '\'') {
                String s = readString();
                return skipEval ? ZERO : CalcValue.ofStr(s);
            }
            if (isDigit(c) || (c == '.' && isDigit(peek2()))) {
                CalcValue n = readNumber();
                return skipEval ? ZERO : n;
            }
            String id = readIdent();
            if (id == null) {
                throw new CalcValue.CalcException("意外字符");
            }
            skipWs();
            if (match('(')) {
                ArrayList args = new ArrayList();
                skipWs();
                if (!match(')')) {
                    while (true) {
                        args.add(parseOr());
                        skipWs();
                        if (match(')')) {
                            break;
                        }
                        if (!match(',')) {
                            throw new CalcValue.CalcException("缺少 , 或 )");
                        }
                        skipWs();
                        if (peek() == ')') {
                            throw new CalcValue.CalcException("多余的逗号");
                        }
                    }
                }
                if (skipEval) {
                    return ZERO;
                }
                CalcValue[] arr = new CalcValue[args.size()];
                for (int i = 0; i < args.size(); i++) {
                    arr[i] = (CalcValue) args.get(i);
                }
                return CalcFns.call(id, arr);
            }
            return skipEval ? ZERO : resolveName(id);
        } finally {
            leave();
        }
    }

    private CalcValue resolveName(String id) throws CalcValue.CalcException {
        if ("pi".equals(id)) {
            return CalcValue.ofReal(Math.PI);
        }
        if ("e".equals(id)) {
            return CalcValue.ofReal(Math.E);
        }
        if ("tau".equals(id)) {
            return CalcValue.ofReal(Math.PI * 2.0);
        }
        if ("inf".equals(id)) {
            return CalcValue.ofReal(Double.POSITIVE_INFINITY);
        }
        if ("nan".equals(id)) {
            return CalcValue.ofReal(Double.NaN);
        }
        if ("true".equals(id) || "True".equals(id)) {
            return CalcValue.ofBool(true);
        }
        if ("false".equals(id) || "False".equals(id)) {
            return CalcValue.ofBool(false);
        }
        if ("j".equals(id) || "i".equals(id)) {
            return CalcValue.ofComplex(0, 1);
        }
        if (vars != null && vars.containsKey(id)) {
            return (CalcValue) vars.get(id);
        }
        throw new CalcValue.CalcException("未定义: " + id);
    }

    private CalcValue readNumber() throws CalcValue.CalcException {
        int start = pos;
        if (peek() == '0' && (peek2() == 'x' || peek2() == 'X' || peek2() == 'b' || peek2() == 'B'
                || peek2() == 'o' || peek2() == 'O')) {
            char baseCh = peek2();
            int radix = (baseCh == 'x' || baseCh == 'X') ? 16 : ((baseCh == 'b' || baseCh == 'B') ? 2 : 8);
            pos += 2;
            int digitsStart = pos;
            while (isDigitForRadix(peek(), radix) || peek() == '_') {
                pos++;
            }
            if (pos == digitsStart) {
                throw new CalcValue.CalcException("坏的进制字面量");
            }
            boolean imag = false;
            if (peek() == 'j' || peek() == 'i') {
                imag = true;
                pos++;
            }
            String cleaned = stripUnderscore(src.substring(digitsStart, imag ? pos - 1 : pos));
            try {
                BigInteger bi = new BigInteger(cleaned, radix);
                if (imag) {
                    return CalcValue.ofComplex(0, bi.doubleValue());
                }
                return CalcValue.ofInt(bi);
            } catch (NumberFormatException ex) {
                throw new CalcValue.CalcException("坏的数字");
            }
        }
        boolean isFloat = false;
        while (isDigit(peek()) || peek() == '_') {
            pos++;
        }
        if (peek() == '.') {
            isFloat = true;
            pos++;
            while (isDigit(peek()) || peek() == '_') {
                pos++;
            }
        }
        if (peek() == 'e' || peek() == 'E') {
            isFloat = true;
            pos++;
            if (peek() == '+' || peek() == '-') {
                pos++;
            }
            if (!isDigit(peek())) {
                throw new CalcValue.CalcException("坏的指数");
            }
            while (isDigit(peek()) || peek() == '_') {
                pos++;
            }
        }
        boolean imag = false;
        if (peek() == 'j' || peek() == 'i') {
            imag = true;
            pos++;
        }
        String raw = src.substring(start, pos);
        if (imag && (raw.endsWith("j") || raw.endsWith("i"))) {
            raw = raw.substring(0, raw.length() - 1);
        }
        String cleaned = stripUnderscore(raw);
        if (cleaned.length() == 0) {
            cleaned = "0";
        }
        try {
            if (imag) {
                return CalcValue.ofComplex(0, Double.parseDouble(cleaned));
            }
            if (isFloat || cleaned.indexOf('.') >= 0 || cleaned.indexOf('e') >= 0 || cleaned.indexOf('E') >= 0) {
                return CalcValue.ofReal(Double.parseDouble(cleaned));
            }
            return CalcValue.ofInt(new BigInteger(cleaned));
        } catch (NumberFormatException ex) {
            throw new CalcValue.CalcException("坏的数字: " + cleaned);
        }
    }

    private static boolean isDigitForRadix(char c, int radix) {
        if (c >= '0' && c <= '9') {
            return (c - '0') < radix;
        }
        if (c >= 'a' && c <= 'z') {
            return (c - 'a' + 10) < radix;
        }
        if (c >= 'A' && c <= 'Z') {
            return (c - 'A' + 10) < radix;
        }
        return false;
    }

    private static String stripUnderscore(String s) {
        if (s.indexOf('_') < 0) {
            return s;
        }
        StringBuilder sb = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c != '_') {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private String readString() throws CalcValue.CalcException {
        char q = src.charAt(pos++);
        StringBuilder sb = new StringBuilder();
        while (pos < src.length()) {
            char c = src.charAt(pos++);
            if (c == q) {
                if (sb.length() > 65536) {
                    throw new CalcValue.CalcException("字符串过长");
                }
                return sb.toString();
            }
            if (c == '\\') {
                if (pos >= src.length()) {
                    throw new CalcValue.CalcException("未结束的字符串");
                }
                char e = src.charAt(pos++);
                if (e == 'n') {
                    sb.append('\n');
                } else if (e == 'r') {
                    sb.append('\r');
                } else if (e == 't') {
                    sb.append('\t');
                } else if (e == '0') {
                    sb.append('\0');
                } else {
                    sb.append(e);
                }
            } else {
                sb.append(c);
            }
            if (sb.length() > 65536) {
                throw new CalcValue.CalcException("字符串过长");
            }
        }
        throw new CalcValue.CalcException("未结束的字符串");
    }

    private String readIdent() {
        skipWs();
        if (pos >= src.length()) {
            return null;
        }
        char c = src.charAt(pos);
        if (!(isLetter(c) || c == '_')) {
            return null;
        }
        int start = pos++;
        while (pos < src.length()) {
            c = src.charAt(pos);
            if (isLetter(c) || isDigit(c) || c == '_') {
                pos++;
            } else {
                break;
            }
        }
        return src.substring(start, pos);
    }

    private void enter() throws CalcValue.CalcException {
        depth++;
        if (depth > MAX_DEPTH) {
            throw new CalcValue.CalcException("表达式嵌套过深");
        }
    }

    private void leave() {
        depth--;
    }

    private void skipWs() {
        while (pos < src.length()) {
            char c = src.charAt(pos);
            if (c == ' ' || c == '\t' || c == '\r' || c == '\n') {
                pos++;
            } else {
                break;
            }
        }
    }

    private char peek() {
        return pos < src.length() ? src.charAt(pos) : '\0';
    }

    private char peek2() {
        return pos + 1 < src.length() ? src.charAt(pos + 1) : '\0';
    }

    private boolean match(char c) {
        if (peek() == c) {
            pos++;
            return true;
        }
        return false;
    }

    private boolean matchStr(String s) {
        skipWs();
        if (src.startsWith(s, pos)) {
            // For "**" do not require more; for single-char already handled
            pos += s.length();
            return true;
        }
        return false;
    }

    private boolean matchWord(String w) {
        skipWs();
        int start = pos;
        String id = readIdent();
        if (id != null && id.equals(w)) {
            return true;
        }
        pos = start;
        return false;
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isLetter(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    private static boolean isVarName(String name) {
        if (name == null || name.length() == 0 || name.length() > 64) {
            return false;
        }
        char c = name.charAt(0);
        if (!(isLetter(c) || c == '_')) {
            return false;
        }
        for (int i = 1; i < name.length(); i++) {
            c = name.charAt(i);
            if (!(isLetter(c) || isDigit(c) || c == '_')) {
                return false;
            }
        }
        return true;
    }

    private static boolean isKeyword(String name) {
        return "pi".equals(name) || "e".equals(name) || "tau".equals(name) || "inf".equals(name)
                || "nan".equals(name) || "true".equals(name) || "false".equals(name)
                || "True".equals(name) || "False".equals(name)
                || "and".equals(name) || "or".equals(name) || "not".equals(name)
                || "j".equals(name) || "i".equals(name);
    }
}
