import age.of.civilizations2.jakowski.lukasz.*;
public class CalcSmoke {
  public static void main(String[] a) throws Exception {
    String[] yes = {"2+3","sin(pi/2)","x=10","(1+2j)","= 1+1","hex(255)","ans"};
    String[] no = {"set army 5","add money","who","boost","fog 0"};
    // ans needs var - looksLike may false without VARS; ok
    for (String s: yes) System.out.println("Y? "+s+" -> "+ConsoleCalc.looksLikeExpression(s));
    for (String s: no) System.out.println("N? "+s+" -> "+ConsoleCalc.looksLikeExpression(s));
  }
}
