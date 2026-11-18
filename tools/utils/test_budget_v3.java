import age.of.civilizations2.jakowski.lukasz.BudgetCore;

public class test_budget_v3 {
    public static void main(String[] args) {
        String s = BudgetCore.formatMoney(5_000_000_000L);
        if (!s.equals("5000000000")) {
            throw new AssertionError("raw format: " + s);
        }
        if (BudgetCore.toIntSaturated(5_000_000_000L) != Integer.MAX_VALUE) {
            throw new AssertionError("sat");
        }
        // 0.25f is binary-exact; 0.15f is not (float→double residue)
        long sp = BudgetCore.spend(10_000_000_000L, 0.25f);
        if (sp != 2_500_000_000L) {
            throw new AssertionError("spend " + sp);
        }
        long bal = BudgetCore.clampSub(8_000_000_000L, 2_500_000_000L);
        if (bal != 5_500_000_000L) {
            throw new AssertionError("bal " + bal);
        }
        long b0 = BudgetCore.spend(9_000_000_000L, 0.10f);
        long b1 = BudgetCore.spend(9_000_000_000L, 0.20f);
        if (!(b1 > b0)) {
            throw new AssertionError("spend sensitivity");
        }
        System.out.println("BudgetCore v3 OK");
    }
}
