import age.of.civilizations2.jakowski.lukasz.CalcParser;
import age.of.civilizations2.jakowski.lukasz.CalcValue;
import java.math.BigInteger;
import java.util.LinkedHashMap;

/** Correctness + hardening suite. Exit 1 on any failure. */
public class CalcHardeningTest {
    static int fails;
    static int passes;

    static void eq(String expr, String expect) {
        try {
            java.util.Map v = new LinkedHashMap();
            String got = CalcParser.eval(expr, v).toDisplay();
            if (!expect.equals(got)) {
                System.out.println("FAIL " + expr + " => " + got + " expected " + expect);
                fails++;
            } else {
                System.out.println("OK " + expr + " => " + got);
                passes++;
            }
        } catch (Exception e) {
            System.out.println("FAIL " + expr + " threw " + e.getMessage());
            fails++;
        }
    }

    static void eqVar(java.util.Map v, String expr, String expect) {
        try {
            String got = CalcParser.eval(expr, v).toDisplay();
            if (!expect.equals(got)) {
                System.out.println("FAIL " + expr + " => " + got + " expected " + expect);
                fails++;
            } else {
                System.out.println("OK " + expr + " => " + got);
                passes++;
            }
        } catch (Exception e) {
            System.out.println("FAIL " + expr + " threw " + e.getMessage());
            fails++;
        }
    }

    static void err(String expr) {
        try {
            java.util.Map v = new LinkedHashMap();
            CalcParser.eval(expr, v);
            System.out.println("FAIL " + expr + " should error");
            fails++;
        } catch (CalcValue.CalcException e) {
            System.out.println("OK err " + expr + " : " + e.getMessage());
            passes++;
        } catch (Exception e) {
            System.out.println("FAIL " + expr + " wrong exception " + e);
            fails++;
        }
    }

    static void near(String expr, double expect, double tol) {
        try {
            java.util.Map v = new LinkedHashMap();
            CalcValue r = CalcParser.eval(expr, v);
            double got = r.asReal();
            if (Math.abs(got - expect) > tol) {
                System.out.println("FAIL near " + expr + " => " + got + " expected ~" + expect);
                fails++;
            } else {
                System.out.println("OK near " + expr + " => " + got);
                passes++;
            }
        } catch (Exception e) {
            System.out.println("FAIL near " + expr + " threw " + e.getMessage());
            fails++;
        }
    }

    /** Verify a == b*(a//b) + (a%b) for integer pairs. */
    static void modIdentity(long a, long b) {
        String expr = "(" + a + ")==(" + b + ")*((" + a + ")//(" + b + "))+(" + a + ")%(" + b + ")";
        eq(expr, "1");
    }

    public static void main(String[] args) throws Exception {
        // Arithmetic / precedence
        eq("2+3*4", "14");
        eq("2**10", "1024");
        eq("2**3**2", "512"); // right-assoc
        eq("-2**2", "-4");
        eq("(-2)**2", "4");
        eq("(1+2j)*(3-1j)", "5+5j");
        eq("10/4", "2.5");
        eq("5//2", "2");
        eq("-5//2", "-3");
        eq("5//-2", "-3");
        eq("-5//-2", "2");

        // Python-style modulo (must match //)
        eq("-5%2", "1");
        eq("-5%3", "1");
        eq("5%-3", "-1");
        eq("-5%-3", "-2");
        eq("10%3", "1");
        modIdentity(-5, 2);
        modIdentity(-5, 3);
        modIdentity(5, -3);
        modIdentity(-5, -3);
        modIdentity(17, 5);
        modIdentity(-17, 5);
        modIdentity(17, -5);
        modIdentity(0, 7);

        // Bitwise
        eq("1<<10", "1024");
        eq("1024>>10", "1");
        eq("15&7", "7");
        eq("1|2", "3");
        eq("1^3", "2");
        eq("~0", "-1");
        eq("~(-1)", "0");

        // Logic (Python value-preserving + short-circuit)
        eq("not 0", "1");
        eq("not 1", "0");
        eq("1 and 0", "0");
        eq("1 and 2", "2");
        eq("0 and 5", "0");
        eq("0 or 5", "5");
        eq("1 or 5", "1");
        eq("0 and (1/0)", "0");
        eq("1 or (1/0)", "1");

        // Compare / equality
        eq("3==3", "1");
        eq("3!=4", "1");
        eq("2<3", "1");
        eq("2<=2", "1");
        eq("3>2", "1");
        eq("1+0j==1", "1");
        eq("sin(pi)==0", "1");

        // Math
        eq("sin(pi/2)", "1");
        eq("cos(0)", "1");
        eq("sqrt(-1)", "j");
        eq("abs(-3)", "3");
        eq("abs(3+4j)", "5");
        eq("floor(3.7)", "3");
        eq("ceil(-1.2)", "-1");
        eq("trunc(-1.8)", "-1");
        eq("round(2.5)", "3"); // Java Math.round half-up away from -inf for +
        eq("gcd(54,24)", "6");
        eq("lcm(4,6)", "12");
        eq("factorial(0)", "1");
        eq("factorial(5)", "120");
        eq("comb(5,2)", "10");
        eq("perm(5,2)", "20");
        eq("isqrt(16)", "4");
        eq("sign(-9)", "-1");
        eq("clamp(5,0,3)", "3");
        near("log(e)", 1.0, 1e-12);
        near("log10(1000)", 3.0, 1e-12);
        near("log2(8)", 3.0, 1e-12);

        // Bases / codec
        eq("0xff", "255");
        eq("0b1010", "10");
        eq("0o17", "15");
        eq("hex(255)", "0xff");
        eq("bin(10)", "0b1010");
        eq("oct(8)", "0o10");
        eq("int(\"ff\",16)", "255");
        eq("int(\"1010\",2)", "10");
        eq("tobase(255,16)", "ff");
        eq("b64encode(\"hi\")", "aGk=");
        eq("b64decode(\"aGk=\")", "hi");
        eq("b64decode(\"\")", "");
        eq("hexencode(\"A\")", "41");
        eq("hexdecode(\"41\")", "A");
        eq("len(\"abc\")", "3");
        eq("ord(\"A\")", "65");
        eq("chr(65)", "A");
        eq("\"a\"+\"b\"", "ab");
        eq("urlencode(\"a b\")", "a+b");
        eq("urldecode(\"a+b\")", "a b");

        // Complex helpers
        eq("real(3+4j)", "3");
        eq("imag(3+4j)", "4");
        eq("conj(1+2j)", "1-2j");
        eq("complex(2,3)", "2+3j");

        // Variables / ans
        java.util.Map v = new LinkedHashMap();
        eqVar(v, "x=2**10", "1024");
        eqVar(v, "x+ans", "2048");
        eqVar(v, "x==1024", "1");
        eqVar(v, "y=1+2j", "1+2j");
        eqVar(v, "y*j", "-2+j");
        eqVar(v, "ans", "-2+j");

        // Underscore literals
        eq("1_000+2", "1002");
        eq("0xFF_FF", "65535");

        // Errors / safety
        err("1/0");
        err("0b2");
        err("0o8");
        err("0xG");
        err("factorial(201)");
        err("1<<100000");
        err("(");
        err("sin(");
        err("\"unterminated");
        err("warx");
        err("pi=1");
        err("2**100000");
        err("asin(2)");
        err("acos(-2)");
        err("acosh(0.5)");
        err("atanh(1)");
        err("log1p(-2)");
        err("1<<(-1)");
        err("(1+2j)<3");

        // Huge multiply should be rejected, not OOM
        err("(1<<200000)*(1<<200000)");

        // Integer pow edge
        eq("0**0", "1");
        eq("(-2)**3", "-8");
        eq("9**0.5", "3");

        if (fails > 0) {
            System.out.println("FAILED " + fails + " / passed " + passes);
            System.exit(1);
        }
        System.out.println("ALL PASS (" + passes + ")");
    }
}
