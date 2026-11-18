package age.of.civilizations2.jakowski.lukasz;

import java.math.BigInteger;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

/** Whitelisted calculator builtins. */
public final class CalcFns {
    private static final int FACT_MAX = 200;
    private static final int COMB_MAX_N = 1000;
    private static final Map HELP = new LinkedHashMap();
    private static final Random RNG = new Random();
    private static final Charset UTF8 = Charset.forName("UTF-8");

    static {
        String[] names = new String[]{
                "abs", "round", "floor", "ceil", "trunc", "min", "max", "sum", "pow", "sqrt", "cbrt", "hypot",
                "exp", "expm1", "log", "log10", "log2", "log1p",
                "sin", "cos", "tan", "asin", "acos", "atan", "atan2",
                "sinh", "cosh", "tanh", "asinh", "acosh", "atanh",
                "degrees", "radians", "clamp", "sign", "frac",
                "complex", "real", "imag", "conj", "phase", "arg", "polar", "rect",
                "int", "float", "bool", "gcd", "lcm", "factorial", "comb", "perm", "isqrt", "bit_length", "bit_count",
                "bin", "oct", "hex", "tobase",
                "rand", "randint",
                "len", "ord", "chr", "hexencode", "hexdecode", "b64encode", "b64decode", "urlencode", "urldecode",
                "repr", "str"
        };
        for (int i = 0; i < names.length; i++) {
            HELP.put(names[i], names[i]);
        }
    }

    private CalcFns() {
    }

    public static String[] names() {
        return (String[]) HELP.keySet().toArray(new String[HELP.size()]);
    }

    public static CalcValue call(String name, CalcValue[] args) throws CalcValue.CalcException {
        if (name == null) {
            throw new CalcValue.CalcException("空函数名");
        }
        String n = name.toLowerCase();
        // aliases
        if ("arg".equals(n)) {
            n = "phase";
        }
        if (!HELP.containsKey(n) && !"int".equals(name)) {
            // keep case-sensitive int only via lower
        }
        if (!HELP.containsKey(n)) {
            throw new CalcValue.CalcException("未知函数: " + name);
        }
        if (args == null) {
            args = new CalcValue[0];
        }
        try {
            return dispatch(n, args).simplify();
        } catch (CalcValue.CalcException ex) {
            throw ex;
        } catch (ArithmeticException ex) {
            throw new CalcValue.CalcException("数值超出范围");
        } catch (NumberFormatException ex) {
            throw new CalcValue.CalcException("数字格式错误");
        }
    }

    private static CalcValue dispatch(String n, CalcValue[] a) throws CalcValue.CalcException {
        if ("abs".equals(n)) {
            need(a, 1);
            if (a[0].isComplex()) {
                return CalcValue.ofReal(Math.hypot(a[0].re, a[0].im));
            }
            if (a[0].isInt()) {
                return CalcValue.ofInt(a[0].i.abs());
            }
            return CalcValue.ofReal(Math.abs(a[0].asReal()));
        }
        if ("round".equals(n)) {
            if (a.length == 1) {
                return CalcValue.ofInt(Math.round(a[0].asReal()));
            }
            need(a, 2);
            double p = Math.pow(10, a[1].asInt().intValueExact());
            return CalcValue.ofReal(Math.rint(a[0].asReal() * p) / p);
        }
        if ("floor".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.floor(a[0].asReal()));
        }
        if ("ceil".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.ceil(a[0].asReal()));
        }
        if ("trunc".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            return CalcValue.ofReal(x < 0 ? Math.ceil(x) : Math.floor(x));
        }
        if ("min".equals(n)) {
            if (a.length < 1) {
                throw new CalcValue.CalcException("min 需要参数");
            }
            CalcValue best = a[0];
            for (int i = 1; i < a.length; i++) {
                if (CalcValue.cmp(a[i], best, 2).truthy()) {
                    best = a[i];
                }
            }
            return best;
        }
        if ("max".equals(n)) {
            if (a.length < 1) {
                throw new CalcValue.CalcException("max 需要参数");
            }
            CalcValue best = a[0];
            for (int i = 1; i < a.length; i++) {
                if (CalcValue.cmp(a[i], best, 4).truthy()) {
                    best = a[i];
                }
            }
            return best;
        }
        if ("sum".equals(n)) {
            CalcValue s = CalcValue.ofInt(0);
            for (int i = 0; i < a.length; i++) {
                s = CalcValue.add(s, a[i]);
            }
            return s;
        }
        if ("pow".equals(n)) {
            need(a, 2);
            return CalcValue.pow(a[0], a[1]);
        }
        if ("sqrt".equals(n)) {
            need(a, 1);
            return sqrtVal(a[0]);
        }
        if ("cbrt".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.cbrt(a[0].asReal()));
        }
        if ("hypot".equals(n)) {
            need(a, 2);
            return CalcValue.ofReal(Math.hypot(a[0].asReal(), a[1].asReal()));
        }
        if ("exp".equals(n)) {
            need(a, 1);
            return expVal(a[0]);
        }
        if ("expm1".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.expm1(a[0].asReal()));
        }
        if ("log".equals(n)) {
            if (a.length == 1) {
                return logVal(a[0], Math.E);
            }
            need(a, 2);
            return logVal(a[0], a[1].asReal());
        }
        if ("log10".equals(n)) {
            need(a, 1);
            return logVal(a[0], 10);
        }
        if ("log2".equals(n)) {
            need(a, 1);
            return logVal(a[0], 2);
        }
        if ("log1p".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            if (x < -1.0) {
                throw new CalcValue.CalcException("log1p 定义域 [-1,+inf)");
            }
            if (x == -1.0) {
                throw new CalcValue.CalcException("log1p(-1)");
            }
            return CalcValue.ofReal(Math.log1p(x));
        }
        if ("sin".equals(n)) {
            need(a, 1);
            return trig(a[0], 0);
        }
        if ("cos".equals(n)) {
            need(a, 1);
            return trig(a[0], 1);
        }
        if ("tan".equals(n)) {
            need(a, 1);
            return trig(a[0], 2);
        }
        if ("asin".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            if (x < -1.0 || x > 1.0) {
                throw new CalcValue.CalcException("asin 定义域 [-1,1]");
            }
            return CalcValue.ofReal(Math.asin(x));
        }
        if ("acos".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            if (x < -1.0 || x > 1.0) {
                throw new CalcValue.CalcException("acos 定义域 [-1,1]");
            }
            return CalcValue.ofReal(Math.acos(x));
        }
        if ("atan".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.atan(a[0].asReal()));
        }
        if ("atan2".equals(n)) {
            need(a, 2);
            return CalcValue.ofReal(Math.atan2(a[0].asReal(), a[1].asReal()));
        }
        if ("sinh".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.sinh(a[0].asReal()));
        }
        if ("cosh".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.cosh(a[0].asReal()));
        }
        if ("tanh".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.tanh(a[0].asReal()));
        }
        if ("asinh".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            return CalcValue.ofReal(Math.log(x + Math.sqrt(x * x + 1)));
        }
        if ("acosh".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            if (x < 1.0) {
                throw new CalcValue.CalcException("acosh 定义域 [1,+inf)");
            }
            return CalcValue.ofReal(Math.log(x + Math.sqrt(x * x - 1)));
        }
        if ("atanh".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            if (!(x > -1.0 && x < 1.0)) {
                throw new CalcValue.CalcException("atanh 定义域 (-1,1)");
            }
            return CalcValue.ofReal(0.5 * Math.log((1 + x) / (1 - x)));
        }
        if ("degrees".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.toDegrees(a[0].asReal()));
        }
        if ("radians".equals(n)) {
            need(a, 1);
            return CalcValue.ofReal(Math.toRadians(a[0].asReal()));
        }
        if ("clamp".equals(n)) {
            need(a, 3);
            double x = a[0].asReal();
            double lo = a[1].asReal();
            double hi = a[2].asReal();
            return CalcValue.ofReal(Math.min(hi, Math.max(lo, x)));
        }
        if ("sign".equals(n)) {
            need(a, 1);
            if (a[0].isInt()) {
                return CalcValue.ofInt(a[0].i.signum());
            }
            double x = a[0].asReal();
            return CalcValue.ofInt(x < 0 ? -1 : (x > 0 ? 1 : 0));
        }
        if ("frac".equals(n)) {
            need(a, 1);
            double x = a[0].asReal();
            return CalcValue.ofReal(x - Math.floor(x));
        }
        if ("complex".equals(n)) {
            if (a.length == 0) {
                return CalcValue.ofComplex(0, 0);
            }
            if (a.length == 1) {
                CalcValue c = a[0].toComplex();
                return CalcValue.ofComplex(c.re, c.im);
            }
            need(a, 2);
            return CalcValue.ofComplex(a[0].asReal(), a[1].asReal());
        }
        if ("real".equals(n)) {
            need(a, 1);
            CalcValue c = a[0].toComplex();
            return CalcValue.ofReal(c.re);
        }
        if ("imag".equals(n)) {
            need(a, 1);
            CalcValue c = a[0].toComplex();
            return CalcValue.ofReal(c.im);
        }
        if ("conj".equals(n)) {
            need(a, 1);
            CalcValue c = a[0].toComplex();
            return CalcValue.ofComplex(c.re, -c.im);
        }
        if ("phase".equals(n)) {
            need(a, 1);
            CalcValue c = a[0].toComplex();
            return CalcValue.ofReal(Math.atan2(c.im, c.re));
        }
        if ("polar".equals(n)) {
            need(a, 1);
            CalcValue c = a[0].toComplex();
            double r = Math.hypot(c.re, c.im);
            double th = Math.atan2(c.im, c.re);
            return CalcValue.ofStr("(" + CalcValue.formatDouble(r) + ", " + CalcValue.formatDouble(th) + ")");
        }
        if ("rect".equals(n)) {
            need(a, 2);
            double r = a[0].asReal();
            double th = a[1].asReal();
            return CalcValue.ofComplex(r * Math.cos(th), r * Math.sin(th));
        }
        if ("int".equals(n)) {
            if (a.length == 1) {
                if (a[0].isStr()) {
                    return CalcValue.ofInt(new BigInteger(a[0].s.trim()));
                }
                return CalcValue.ofInt(a[0].asInt());
            }
            need(a, 2);
            int base = a[1].asInt().intValueExact();
            if (base < 2 || base > 36) {
                throw new CalcValue.CalcException("进制须在 2..36");
            }
            String s = a[0].isStr() ? a[0].s.trim() : a[0].toDisplay();
            return CalcValue.ofInt(new BigInteger(s, base));
        }
        if ("float".equals(n)) {
            need(a, 1);
            if (a[0].isStr()) {
                return CalcValue.ofReal(Double.parseDouble(a[0].s.trim()));
            }
            return CalcValue.ofReal(a[0].asReal());
        }
        if ("bool".equals(n)) {
            need(a, 1);
            return CalcValue.ofBool(a[0].truthy());
        }
        if ("gcd".equals(n)) {
            need(a, 2);
            return CalcValue.ofInt(a[0].asInt().gcd(a[1].asInt()));
        }
        if ("lcm".equals(n)) {
            need(a, 2);
            BigInteger x = a[0].asInt().abs();
            BigInteger y = a[1].asInt().abs();
            if (x.signum() == 0 || y.signum() == 0) {
                return CalcValue.ofInt(0);
            }
            BigInteger r = x.divide(x.gcd(y)).multiply(y);
            CalcValue.guardBits(r);
            return CalcValue.ofInt(r);
        }
        if ("factorial".equals(n)) {
            need(a, 1);
            int k = a[0].asInt().intValueExact();
            if (k < 0 || k > FACT_MAX) {
                throw new CalcValue.CalcException("factorial 范围 0.." + FACT_MAX);
            }
            BigInteger r = BigInteger.ONE;
            for (int i = 2; i <= k; i++) {
                r = r.multiply(BigInteger.valueOf(i));
            }
            return CalcValue.ofInt(r);
        }
        if ("comb".equals(n)) {
            need(a, 2);
            return CalcValue.ofInt(comb(a[0].asInt().intValueExact(), a[1].asInt().intValueExact()));
        }
        if ("perm".equals(n)) {
            need(a, 2);
            int nn = a[0].asInt().intValueExact();
            int kk = a[1].asInt().intValueExact();
            if (nn < 0 || kk < 0 || kk > nn || nn > COMB_MAX_N) {
                throw new CalcValue.CalcException("perm 参数非法");
            }
            BigInteger r = BigInteger.ONE;
            for (int i = 0; i < kk; i++) {
                r = r.multiply(BigInteger.valueOf(nn - i));
            }
            return CalcValue.ofInt(r);
        }
        if ("isqrt".equals(n)) {
            need(a, 1);
            BigInteger x = a[0].asInt();
            if (x.signum() < 0) {
                throw new CalcValue.CalcException("isqrt 需要非负");
            }
            return CalcValue.ofInt(sqrtBig(x));
        }
        if ("bit_length".equals(n)) {
            need(a, 1);
            return CalcValue.ofInt(a[0].asInt().abs().bitLength());
        }
        if ("bit_count".equals(n)) {
            need(a, 1);
            return CalcValue.ofInt(a[0].asInt().bitCount());
        }
        if ("bin".equals(n)) {
            need(a, 1);
            BigInteger x = a[0].asInt();
            String sign = x.signum() < 0 ? "-" : "";
            return CalcValue.ofStr(sign + "0b" + x.abs().toString(2));
        }
        if ("oct".equals(n)) {
            need(a, 1);
            BigInteger x = a[0].asInt();
            String sign = x.signum() < 0 ? "-" : "";
            return CalcValue.ofStr(sign + "0o" + x.abs().toString(8));
        }
        if ("hex".equals(n)) {
            need(a, 1);
            BigInteger x = a[0].asInt();
            String sign = x.signum() < 0 ? "-" : "";
            return CalcValue.ofStr(sign + "0x" + x.abs().toString(16));
        }
        if ("tobase".equals(n)) {
            need(a, 2);
            int base = a[1].asInt().intValueExact();
            if (base < 2 || base > 36) {
                throw new CalcValue.CalcException("进制须在 2..36");
            }
            BigInteger x = a[0].asInt();
            String sign = x.signum() < 0 ? "-" : "";
            return CalcValue.ofStr(sign + x.abs().toString(base));
        }
        if ("rand".equals(n)) {
            need(a, 0);
            return CalcValue.ofReal(RNG.nextDouble());
        }
        if ("randint".equals(n)) {
            need(a, 2);
            long lo = a[0].asInt().longValue();
            long hi = a[1].asInt().longValue();
            if (hi < lo) {
                long t = lo;
                lo = hi;
                hi = t;
            }
            if (hi - lo > Integer.MAX_VALUE) {
                throw new CalcValue.CalcException("randint 区间过大");
            }
            int span = (int) (hi - lo + 1);
            return CalcValue.ofInt(lo + RNG.nextInt(span));
        }
        if ("len".equals(n)) {
            need(a, 1);
            if (!a[0].isStr()) {
                throw new CalcValue.CalcException("len 需要字符串");
            }
            return CalcValue.ofInt(a[0].s.length());
        }
        if ("ord".equals(n)) {
            need(a, 1);
            if (!a[0].isStr() || a[0].s.length() != 1) {
                throw new CalcValue.CalcException("ord 需要单字符");
            }
            return CalcValue.ofInt(a[0].s.charAt(0));
        }
        if ("chr".equals(n)) {
            need(a, 1);
            int cp = a[0].asInt().intValueExact();
            if (cp < 0 || cp > 0x10FFFF) {
                throw new CalcValue.CalcException("chr 超出范围");
            }
            if (cp <= 0xFFFF) {
                return CalcValue.ofStr(String.valueOf((char) cp));
            }
            int u = cp - 0x10000;
            char hi = (char) (0xD800 + (u >> 10));
            char lo = (char) (0xDC00 + (u & 0x3FF));
            return CalcValue.ofStr(new String(new char[]{hi, lo}));
        }
        if ("hexencode".equals(n)) {
            need(a, 1);
            byte[] bytes = strBytes(a[0]);
            StringBuilder sb = new StringBuilder(bytes.length * 2);
            for (int i = 0; i < bytes.length; i++) {
                sb.append(String.format("%02x", bytes[i] & 0xff));
            }
            return CalcValue.ofStr(sb.toString());
        }
        if ("hexdecode".equals(n)) {
            need(a, 1);
            String hex = a[0].isStr() ? a[0].s : a[0].toDisplay();
            hex = hex.trim();
            if (hex.startsWith("0x") || hex.startsWith("0X")) {
                hex = hex.substring(2);
            }
            if ((hex.length() & 1) != 0) {
                throw new CalcValue.CalcException("hex 长度须为偶数");
            }
            byte[] out = new byte[hex.length() / 2];
            for (int i = 0; i < out.length; i++) {
                String pair = hex.substring(i * 2, i * 2 + 2);
                try {
                    out[i] = (byte) Integer.parseInt(pair, 16);
                } catch (NumberFormatException ex) {
                    throw new CalcValue.CalcException("坏的 hex");
                }
            }
            return CalcValue.ofStr(new String(out, UTF8));
        }
        if ("b64encode".equals(n)) {
            need(a, 1);
            byte[] bytes = strBytes(a[0]);
            return CalcValue.ofStr(base64Encode(bytes));
        }
        if ("b64decode".equals(n)) {
            need(a, 1);
            String s = a[0].isStr() ? a[0].s : a[0].toDisplay();
            s = s.trim();
            if (s.length() == 0) {
                return CalcValue.ofStr("");
            }
            return CalcValue.ofStr(new String(base64Decode(s), UTF8));
        }
        if ("urlencode".equals(n)) {
            need(a, 1);
            String s = a[0].isStr() ? a[0].s : a[0].toDisplay();
            try {
                return CalcValue.ofStr(URLEncoder.encode(s, "UTF-8"));
            } catch (Exception ex) {
                throw new CalcValue.CalcException("urlencode 失败");
            }
        }
        if ("urldecode".equals(n)) {
            need(a, 1);
            String s = a[0].isStr() ? a[0].s : a[0].toDisplay();
            try {
                return CalcValue.ofStr(URLDecoder.decode(s, "UTF-8"));
            } catch (Exception ex) {
                throw new CalcValue.CalcException("urldecode 失败");
            }
        }
        if ("repr".equals(n)) {
            need(a, 1);
            return CalcValue.ofStr(a[0].toRepr());
        }
        if ("str".equals(n)) {
            need(a, 1);
            return CalcValue.ofStr(a[0].toDisplay());
        }
        throw new CalcValue.CalcException("未知函数: " + n);
    }

    private static byte[] strBytes(CalcValue v) throws CalcValue.CalcException {
        String s = v.isStr() ? v.s : v.toDisplay();
        return s.getBytes(UTF8);
    }

    private static CalcValue sqrtVal(CalcValue v) throws CalcValue.CalcException {
        CalcValue c = v.toComplex();
        if (c.im == 0.0 && c.re >= 0) {
            return CalcValue.ofReal(Math.sqrt(c.re));
        }
        // principal square root
        double r = Math.hypot(c.re, c.im);
        double t = Math.atan2(c.im, c.re) / 2.0;
        double sr = Math.sqrt(r);
        return CalcValue.ofComplex(sr * Math.cos(t), sr * Math.sin(t));
    }

    private static CalcValue expVal(CalcValue v) throws CalcValue.CalcException {
        CalcValue c = v.toComplex();
        if (c.im == 0.0) {
            if (c.re > 700) {
                throw new CalcValue.CalcException("结果溢出");
            }
            return CalcValue.ofReal(Math.exp(c.re));
        }
        if (c.re > 700) {
            throw new CalcValue.CalcException("结果溢出");
        }
        double er = Math.exp(c.re);
        return CalcValue.ofComplex(er * Math.cos(c.im), er * Math.sin(c.im));
    }

    private static CalcValue logVal(CalcValue v, double base) throws CalcValue.CalcException {
        if (base <= 0 || base == 1.0) {
            throw new CalcValue.CalcException("非法底数");
        }
        CalcValue c = v.toComplex();
        if (c.im == 0.0 && c.re > 0) {
            return CalcValue.ofReal(Math.log(c.re) / Math.log(base));
        }
        double r = Math.hypot(c.re, c.im);
        if (r == 0.0) {
            throw new CalcValue.CalcException("log(0)");
        }
        double re = Math.log(r);
        double im = Math.atan2(c.im, c.re);
        double lb = Math.log(base);
        return CalcValue.ofComplex(re / lb, im / lb);
    }

    private static CalcValue trig(CalcValue v, int kind) throws CalcValue.CalcException {
        CalcValue c = v.toComplex();
        if (c.im == 0.0) {
            if (kind == 0) {
                return CalcValue.ofReal(Math.sin(c.re));
            }
            if (kind == 1) {
                return CalcValue.ofReal(Math.cos(c.re));
            }
            return CalcValue.ofReal(Math.tan(c.re));
        }
        // complex sin/cos via identities
        double x = c.re;
        double y = c.im;
        if (kind == 0) {
            return CalcValue.ofComplex(Math.sin(x) * Math.cosh(y), Math.cos(x) * Math.sinh(y));
        }
        if (kind == 1) {
            return CalcValue.ofComplex(Math.cos(x) * Math.cosh(y), -Math.sin(x) * Math.sinh(y));
        }
        CalcValue s = trig(v, 0);
        CalcValue co = trig(v, 1);
        return CalcValue.div(s, co);
    }

    private static BigInteger comb(int n, int k) throws CalcValue.CalcException {
        if (n < 0 || k < 0 || k > n || n > COMB_MAX_N) {
            throw new CalcValue.CalcException("comb 参数非法");
        }
        if (k > n - k) {
            k = n - k;
        }
        BigInteger r = BigInteger.ONE;
        for (int i = 0; i < k; i++) {
            r = r.multiply(BigInteger.valueOf(n - i)).divide(BigInteger.valueOf(i + 1));
        }
        return r;
    }

    private static BigInteger sqrtBig(BigInteger x) {
        if (x.signum() == 0) {
            return BigInteger.ZERO;
        }
        BigInteger r = BigInteger.ZERO.setBit(x.bitLength() / 2);
        while (true) {
            BigInteger next = r.add(x.divide(r)).shiftRight(1);
            if (next.equals(r) || next.equals(r.subtract(BigInteger.ONE))) {
                return next.multiply(next).compareTo(x) > 0 ? next.subtract(BigInteger.ONE) : next;
            }
            r = next;
        }
    }

    private static void need(CalcValue[] a, int n) throws CalcValue.CalcException {
        if (a.length != n) {
            throw new CalcValue.CalcException("参数个数应为 " + n);
        }
    }

    // Minimal Base64 without depending on java.util.Base64 API quirks in older Android desugar
    private static final char[] B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    private static String base64Encode(byte[] data) {
        StringBuilder sb = new StringBuilder((data.length + 2) / 3 * 4);
        int i = 0;
        while (i + 2 < data.length) {
            int n = ((data[i] & 0xff) << 16) | ((data[i + 1] & 0xff) << 8) | (data[i + 2] & 0xff);
            sb.append(B64[(n >> 18) & 63]);
            sb.append(B64[(n >> 12) & 63]);
            sb.append(B64[(n >> 6) & 63]);
            sb.append(B64[n & 63]);
            i += 3;
        }
        int rem = data.length - i;
        if (rem == 1) {
            int n = (data[i] & 0xff) << 16;
            sb.append(B64[(n >> 18) & 63]);
            sb.append(B64[(n >> 12) & 63]);
            sb.append("==");
        } else if (rem == 2) {
            int n = ((data[i] & 0xff) << 16) | ((data[i + 1] & 0xff) << 8);
            sb.append(B64[(n >> 18) & 63]);
            sb.append(B64[(n >> 12) & 63]);
            sb.append(B64[(n >> 6) & 63]);
            sb.append('=');
        }
        return sb.toString();
    }

    private static byte[] base64Decode(String s) throws CalcValue.CalcException {
        String t = s.replace("\r", "").replace("\n", "").replace(" ", "");
        if (t.length() % 4 != 0) {
            throw new CalcValue.CalcException("坏的 base64");
        }
        int pad = 0;
        if (t.endsWith("==")) {
            pad = 2;
        } else if (t.endsWith("=")) {
            pad = 1;
        }
        int outLen = t.length() / 4 * 3 - pad;
        byte[] out = new byte[outLen];
        int[] map = new int[128];
        for (int i = 0; i < map.length; i++) {
            map[i] = -1;
        }
        for (int i = 0; i < B64.length; i++) {
            map[B64[i]] = i;
        }
        int o = 0;
        for (int i = 0; i < t.length(); i += 4) {
            int a = dec64(map, t.charAt(i));
            int b = dec64(map, t.charAt(i + 1));
            int c = t.charAt(i + 2) == '=' ? 0 : dec64(map, t.charAt(i + 2));
            int d = t.charAt(i + 3) == '=' ? 0 : dec64(map, t.charAt(i + 3));
            int n = (a << 18) | (b << 12) | (c << 6) | d;
            if (o < outLen) {
                out[o++] = (byte) ((n >> 16) & 0xff);
            }
            if (o < outLen) {
                out[o++] = (byte) ((n >> 8) & 0xff);
            }
            if (o < outLen) {
                out[o++] = (byte) (n & 0xff);
            }
        }
        return out;
    }

    private static int dec64(int[] map, char c) throws CalcValue.CalcException {
        if (c >= 128 || map[c] < 0) {
            throw new CalcValue.CalcException("坏的 base64");
        }
        return map[c];
    }

    public static void printHelp() {
        ConsoleOut.usage("--- 计算函数 ---");
        String[] ns = names();
        StringBuilder line = new StringBuilder();
        for (int i = 0; i < ns.length; i++) {
            if (line.length() > 0) {
                line.append(' ');
            }
            line.append(ns[i]);
            if (line.length() > 56) {
                ConsoleOut.usage(line.toString());
                line.setLength(0);
            }
        }
        if (line.length() > 0) {
            ConsoleOut.usage(line.toString());
        }
    }
}
