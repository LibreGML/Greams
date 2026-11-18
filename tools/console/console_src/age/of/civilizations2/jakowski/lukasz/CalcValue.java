package age.of.civilizations2.jakowski.lukasz;

import java.math.BigInteger;

/** Calculator value: Int / Real / Complex / Str. */
public final class CalcValue {
    public static final int T_INT = 0;
    public static final int T_REAL = 1;
    public static final int T_COMPLEX = 2;
    public static final int T_STR = 3;

    public final int type;
    public final BigInteger i;
    public final double re;
    public final double im;
    public final String s;

    private CalcValue(int type, BigInteger i, double re, double im, String s) {
        this.type = type;
        this.i = i;
        this.re = re;
        this.im = im;
        this.s = s;
    }

    public static CalcValue ofInt(BigInteger v) {
        if (v == null) {
            v = BigInteger.ZERO;
        }
        return new CalcValue(T_INT, v, 0, 0, null);
    }

    public static CalcValue ofInt(long v) {
        return ofInt(BigInteger.valueOf(v));
    }

    public static CalcValue ofReal(double v) {
        return new CalcValue(T_REAL, null, v, 0, null);
    }

    public static CalcValue ofComplex(double re, double im) {
        // Never demote here — callers like toComplex()/add() need .re/.im fields valid.
        return new CalcValue(T_COMPLEX, null, re, im, null);
    }

    private static final double EPS = 1e-12;
    private static final int MAX_BITS = 262144;

    /** Collapse near-zero / near-int noise; demote 0-imag complex to Int/Real. */
    public CalcValue simplify() {
        if (type == T_REAL) {
            return simplifyReal(re);
        }
        if (type != T_COMPLEX) {
            return this;
        }
        double r = scrubNearZero(re);
        double m = scrubNearZero(im);
        if (m == 0.0 && !Double.isNaN(m)) {
            return simplifyReal(r);
        }
        if (r != re || m != im) {
            return ofComplex(r, m);
        }
        return this;
    }

    private static double scrubNearZero(double v) {
        if (!Double.isNaN(v) && !Double.isInfinite(v) && Math.abs(v) < EPS) {
            return 0.0;
        }
        return v;
    }

    private static CalcValue simplifyReal(double r) {
        if (Double.isNaN(r) || Double.isInfinite(r)) {
            return ofReal(r);
        }
        r = scrubNearZero(r);
        if (Math.abs(r) < 1e15) {
            double nearest = Math.rint(r);
            if (Math.abs(r - nearest) < EPS) {
                return ofInt(BigInteger.valueOf((long) nearest));
            }
        }
        return ofReal(r);
    }

    static void guardBits(BigInteger v) throws CalcException {
        if (v != null && v.abs().bitLength() > MAX_BITS) {
            throw new CalcException("结果过大");
        }
    }

    public static CalcValue ofStr(String v) {
        return new CalcValue(T_STR, null, 0, 0, v == null ? "" : v);
    }

    public static CalcValue ofBool(boolean v) {
        return ofInt(v ? 1L : 0L);
    }

    public boolean isInt() {
        return type == T_INT;
    }

    public boolean isStr() {
        return type == T_STR;
    }

    public boolean isComplex() {
        return type == T_COMPLEX;
    }

    public boolean isNumeric() {
        return type != T_STR;
    }

    public boolean truthy() {
        if (type == T_STR) {
            return s != null && s.length() > 0;
        }
        if (type == T_INT) {
            return i != null && i.signum() != 0;
        }
        if (type == T_COMPLEX) {
            return re != 0.0 || im != 0.0;
        }
        return re != 0.0 && !Double.isNaN(re);
    }

    public double asReal() throws CalcException {
        if (type == T_INT) {
            return i.doubleValue();
        }
        if (type == T_REAL) {
            return re;
        }
        if (type == T_COMPLEX) {
            if (scrubNearZero(im) != 0.0) {
                throw new CalcException("需要实数，得到复数");
            }
            return re;
        }
        throw new CalcException("需要数字");
    }

    public BigInteger asInt() throws CalcException {
        if (type == T_INT) {
            return i;
        }
        if (type == T_REAL) {
            return realToInt(re);
        }
        if (type == T_COMPLEX && scrubNearZero(im) == 0.0) {
            return realToInt(re);
        }
        throw new CalcException("需要整数");
    }

    private static BigInteger realToInt(double re) throws CalcException {
        if (Double.isNaN(re) || Double.isInfinite(re)) {
            throw new CalcException("需要整数");
        }
        if (Math.abs(re) >= 1e15) {
            throw new CalcException("需要整数");
        }
        double nearest = Math.rint(re);
        if (Math.abs(re - nearest) > EPS) {
            throw new CalcException("需要整数");
        }
        return BigInteger.valueOf((long) nearest);
    }

    public CalcValue toComplex() throws CalcException {
        if (type == T_STR) {
            throw new CalcException("字符串不能转复数");
        }
        if (type == T_COMPLEX) {
            return this;
        }
        if (type == T_INT) {
            return new CalcValue(T_COMPLEX, null, i.doubleValue(), 0, null);
        }
        return new CalcValue(T_COMPLEX, null, re, 0, null);
    }

    public String toDisplay() {
        if (type == T_STR) {
            return s;
        }
        if (type == T_INT) {
            return i.toString();
        }
        if (type == T_REAL) {
            return formatDouble(re);
        }
        StringBuilder sb = new StringBuilder();
        boolean hasRe = re != 0.0 || im == 0.0;
        if (hasRe) {
            sb.append(formatDouble(re));
        }
        if (im != 0.0) {
            if (im > 0 && hasRe) {
                sb.append('+');
            }
            if (im == -1.0) {
                sb.append('-');
            } else if (im != 1.0) {
                sb.append(formatDouble(im));
            }
            sb.append('j');
        }
        return sb.toString();
    }

    public String toRepr() {
        if (type == T_STR) {
            return "\"" + escape(s) + "\"";
        }
        return toDisplay();
    }

    private static String escape(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '\\' || c == '"') {
                sb.append('\\').append(c);
            } else if (c == '\n') {
                sb.append("\\n");
            } else if (c == '\r') {
                sb.append("\\r");
            } else if (c == '\t') {
                sb.append("\\t");
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    static String formatDouble(double v) {
        if (Double.isNaN(v)) {
            return "nan";
        }
        if (Double.isInfinite(v)) {
            return v > 0 ? "inf" : "-inf";
        }
        if (v == Math.rint(v) && Math.abs(v) < 1e15) {
            return Long.toString((long) v);
        }
        String s = Double.toString(v);
        if (s.indexOf('E') >= 0) {
            s = s.replace('E', 'e');
        }
        return s;
    }

    public static CalcValue add(CalcValue a, CalcValue b) throws CalcException {
        if (a.type == T_STR || b.type == T_STR) {
            String out = a.toDisplay() + b.toDisplay();
            if (out.length() > 65536) {
                throw new CalcException("字符串过长");
            }
            return ofStr(out);
        }
        if (a.type == T_INT && b.type == T_INT) {
            BigInteger r = a.i.add(b.i);
            guardBits(r);
            return ofInt(r);
        }
        CalcValue ca = a.toComplex();
        CalcValue cb = b.toComplex();
        return ofComplex(ca.re + cb.re, ca.im + cb.im);
    }

    public static CalcValue sub(CalcValue a, CalcValue b) throws CalcException {
        needNum(a, b);
        if (a.type == T_INT && b.type == T_INT) {
            BigInteger r = a.i.subtract(b.i);
            guardBits(r);
            return ofInt(r);
        }
        CalcValue ca = a.toComplex();
        CalcValue cb = b.toComplex();
        return ofComplex(ca.re - cb.re, ca.im - cb.im);
    }

    public static CalcValue mul(CalcValue a, CalcValue b) throws CalcException {
        needNum(a, b);
        if (a.type == T_INT && b.type == T_INT) {
            long bits = (long) a.i.abs().bitLength() + (long) b.i.abs().bitLength();
            if (bits > MAX_BITS) {
                throw new CalcException("结果过大");
            }
            BigInteger r = a.i.multiply(b.i);
            guardBits(r);
            return ofInt(r);
        }
        CalcValue ca = a.toComplex();
        CalcValue cb = b.toComplex();
        return ofComplex(ca.re * cb.re - ca.im * cb.im, ca.re * cb.im + ca.im * cb.re);
    }

    public static CalcValue div(CalcValue a, CalcValue b) throws CalcException {
        needNum(a, b);
        CalcValue ca = a.toComplex();
        CalcValue cb = b.toComplex();
        double d = cb.re * cb.re + cb.im * cb.im;
        if (d == 0.0) {
            throw new CalcException("除零");
        }
        return ofComplex((ca.re * cb.re + ca.im * cb.im) / d, (ca.im * cb.re - ca.re * cb.im) / d);
    }

    public static CalcValue mod(CalcValue a, CalcValue b) throws CalcException {
        // Python-style modulo: sign follows divisor; a == b*(a//b) + (a%b)
        if (a.type == T_INT && b.type == T_INT) {
            if (b.i.signum() == 0) {
                throw new CalcException("除零");
            }
            return ofInt(floorModBig(a.i, b.i));
        }
        double x = a.asReal();
        double y = b.asReal();
        if (y == 0.0) {
            throw new CalcException("除零");
        }
        double q = Math.floor(x / y);
        double r = x - y * q;
        // scrub -0.0
        if (r == 0.0) {
            r = 0.0;
        }
        return ofReal(r);
    }

    private static BigInteger floorModBig(BigInteger a, BigInteger b) {
        BigInteger[] dr = a.divideAndRemainder(b);
        BigInteger r = dr[1];
        if (r.signum() != 0 && ((a.signum() < 0) != (b.signum() < 0))) {
            r = r.add(b);
        }
        return r;
    }

    public static CalcValue floordiv(CalcValue a, CalcValue b) throws CalcException {
        if (a.type == T_INT && b.type == T_INT) {
            if (b.i.signum() == 0) {
                throw new CalcException("除零");
            }
            // Python-style floor division (toward -inf), not Java truncate-toward-zero
            return ofInt(floorDivBig(a.i, b.i));
        }
        double x = a.asReal();
        double y = b.asReal();
        if (y == 0.0) {
            throw new CalcException("除零");
        }
        return ofReal(Math.floor(x / y));
    }

    private static BigInteger floorDivBig(BigInteger a, BigInteger b) {
        BigInteger[] dr = a.divideAndRemainder(b);
        BigInteger q = dr[0];
        BigInteger r = dr[1];
        if (r.signum() != 0 && ((a.signum() < 0) != (b.signum() < 0))) {
            q = q.subtract(BigInteger.ONE);
        }
        return q;
    }

    public static CalcValue pow(CalcValue a, CalcValue b) throws CalcException {
        needNum(a, b);
        if (a.type == T_INT && b.type == T_INT) {
            int exp;
            try {
                exp = b.i.intValueExact();
            } catch (ArithmeticException ex) {
                throw new CalcException("指数过大");
            }
            if (exp < 0) {
                return div(ofInt(1), pow(a, ofInt(-exp)));
            }
            if (exp > 4096) {
                throw new CalcException("指数过大");
            }
            // Rough bit-length guard: log2(|a|^exp) ≈ exp * bitLength(a)
            long estBits = (long) exp * (long) Math.max(1, a.i.abs().bitLength());
            if (estBits > MAX_BITS) {
                throw new CalcException("结果过大");
            }
            BigInteger r = a.i.pow(exp);
            guardBits(r);
            return ofInt(r);
        }
        CalcValue ca = a.toComplex();
        if (b.type == T_INT || (b.type == T_REAL && b.im == 0)) {
            double exp = b.asReal();
            if (ca.im == 0.0 && ca.re >= 0 && !Double.isInfinite(exp) && Math.abs(exp) < 1e6) {
                return ofReal(Math.pow(ca.re, exp));
            }
        }
        // Complex power via polar form
        CalcValue cb = b.toComplex();
        double r = Math.hypot(ca.re, ca.im);
        if (r == 0.0) {
            if (cb.re > 0 || cb.im != 0) {
                return ofComplex(0, 0);
            }
            throw new CalcException("0 的非正幂");
        }
        double theta = Math.atan2(ca.im, ca.re);
        // (re+lim j) = exp(b * log(a))
        double logRe = Math.log(r);
        double logIm = theta;
        double mulRe = cb.re * logRe - cb.im * logIm;
        double mulIm = cb.re * logIm + cb.im * logRe;
        if (mulRe > 700 || mulRe < -700) {
            throw new CalcException("结果溢出");
        }
        double er = Math.exp(mulRe);
        return ofComplex(er * Math.cos(mulIm), er * Math.sin(mulIm));
    }

    public static CalcValue neg(CalcValue a) throws CalcException {
        needNum(a);
        if (a.type == T_INT) {
            return ofInt(a.i.negate());
        }
        if (a.type == T_REAL) {
            return ofReal(-a.re);
        }
        return ofComplex(-a.re, -a.im);
    }

    public static CalcValue bitNot(CalcValue a) throws CalcException {
        return ofInt(a.asInt().not());
    }

    public static CalcValue bitAnd(CalcValue a, CalcValue b) throws CalcException {
        return ofInt(a.asInt().and(b.asInt()));
    }

    public static CalcValue bitOr(CalcValue a, CalcValue b) throws CalcException {
        return ofInt(a.asInt().or(b.asInt()));
    }

    public static CalcValue bitXor(CalcValue a, CalcValue b) throws CalcException {
        return ofInt(a.asInt().xor(b.asInt()));
    }

    public static CalcValue shiftLeft(CalcValue a, CalcValue b) throws CalcException {
        int n;
        try {
            n = b.asInt().intValueExact();
        } catch (ArithmeticException ex) {
            throw new CalcException("移位超出范围");
        }
        if (n < 0 || n > 65536) {
            throw new CalcException("移位超出范围");
        }
        BigInteger base = a.asInt();
        if ((long) base.abs().bitLength() + n > MAX_BITS) {
            throw new CalcException("结果过大");
        }
        return ofInt(base.shiftLeft(n));
    }

    public static CalcValue shiftRight(CalcValue a, CalcValue b) throws CalcException {
        int n;
        try {
            n = b.asInt().intValueExact();
        } catch (ArithmeticException ex) {
            throw new CalcException("移位超出范围");
        }
        if (n < 0 || n > 65536) {
            throw new CalcException("移位超出范围");
        }
        return ofInt(a.asInt().shiftRight(n));
    }

    public static CalcValue cmp(CalcValue a, CalcValue b, int op) throws CalcException {
        // op: 0== 1!= 2< 3<= 4> 5>=
        if (op <= 1) {
            boolean eq = equalsValue(a, b);
            return ofBool(op == 0 ? eq : !eq);
        }
        if (a.type == T_COMPLEX || b.type == T_COMPLEX) {
            throw new CalcException("复数不能比大小");
        }
        if (a.type == T_STR || b.type == T_STR) {
            int c = a.toDisplay().compareTo(b.toDisplay());
            return ofBool(cmpInt(c, op));
        }
        if (a.type == T_INT && b.type == T_INT) {
            return ofBool(cmpInt(a.i.compareTo(b.i), op));
        }
        double x = a.asReal();
        double y = b.asReal();
        int c = x < y ? -1 : (x > y ? 1 : 0);
        if (Double.isNaN(x) || Double.isNaN(y)) {
            return ofBool(false);
        }
        return ofBool(cmpInt(c, op));
    }

    private static boolean cmpInt(int c, int op) {
        if (op == 2) {
            return c < 0;
        }
        if (op == 3) {
            return c <= 0;
        }
        if (op == 4) {
            return c > 0;
        }
        return c >= 0;
    }

    public static boolean equalsValue(CalcValue a, CalcValue b) {
        if (a.type == T_STR || b.type == T_STR) {
            return a.type == b.type && a.toDisplay().equals(b.toDisplay());
        }
        try {
            if (a.type == T_INT && b.type == T_INT) {
                return a.i.equals(b.i);
            }
            CalcValue ca = a.toComplex().simplify();
            CalcValue cb = b.toComplex().simplify();
            if (ca.type == T_INT && cb.type == T_INT) {
                return ca.i.equals(cb.i);
            }
            ca = ca.toComplex();
            cb = cb.toComplex();
            return near(ca.re, cb.re) && near(ca.im, cb.im);
        } catch (CalcException ex) {
            return false;
        }
    }

    private static boolean near(double x, double y) {
        if (x == y) {
            return true;
        }
        if (Double.isNaN(x) || Double.isNaN(y)) {
            return Double.isNaN(x) && Double.isNaN(y);
        }
        if (Double.isInfinite(x) || Double.isInfinite(y)) {
            return x == y;
        }
        double scale = Math.max(1.0, Math.max(Math.abs(x), Math.abs(y)));
        return Math.abs(x - y) <= EPS * scale;
    }

    private static void needNum(CalcValue a) throws CalcException {
        if (a.type == T_STR) {
            throw new CalcException("需要数字");
        }
    }

    private static void needNum(CalcValue a, CalcValue b) throws CalcException {
        needNum(a);
        needNum(b);
    }

    public static final class CalcException extends Exception {
        public CalcException(String msg) {
            super(msg == null ? "计算错误" : msg);
        }
    }
}
