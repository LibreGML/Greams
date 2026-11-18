import age.of.civilizations2.jakowski.lukasz.BudgetCore;

/** Offline sanity for late-game surplus math. */
public class test_budget_core {
    public static void main(String[] args) {
        long a = BudgetCore.clampAdd(2_000_000_000L, 2_000_000_000L);
        expect(a == 4_000_000_000L, "clampAdd big");

        long sat = BudgetCore.clampAdd(Long.MAX_VALUE - 10, 100);
        expect(sat == Long.MAX_VALUE, "clampAdd saturate");

        expect(BudgetCore.clampSub(5_000_000_000L, 1_500_000_000L) == 3_500_000_000L, "clampSub");
        expect(BudgetCore.clampSub(Long.MIN_VALUE + 5, 100) == Long.MIN_VALUE, "clampSub saturate");

        expect(BudgetCore.toIntSaturated(5_000_000_000L) == Integer.MAX_VALUE, "toInt hi");
        expect(BudgetCore.toIntSaturated(-5_000_000_000L) == Integer.MIN_VALUE, "toInt lo");

        long spend = BudgetCore.spend(10_000_000_000L, 0.25f);
        expect(spend == 2_500_000_000L, "spend 25% of 10B");

        float fi = (float) Integer.MAX_VALUE;
        float fe = (float) Integer.MAX_VALUE;
        int broken = (int) (fi - fe);
        expect(broken == 0, "vanilla float pair collapses");

        long income = 3_000_000_000L;
        long expenses = 2_100_000_000L;
        long bal = BudgetCore.clampSub(income, expenses);
        expect(bal == 900_000_000L, "long surplus survives");

        long b0 = BudgetCore.spend(8_000_000_000L, 0.10f);
        long b1 = BudgetCore.spend(8_000_000_000L, 0.11f);
        expect(b1 > b0, "1% spend change moves long ledger");

        // Tax change must move spend base when budget is huge
        long taxLo = BudgetCore.spend(9_000_000_000L, 0.20f);
        long taxHi = BudgetCore.spend(9_900_000_000L, 0.20f);
        expect(taxHi > taxLo, "budget growth moves goods spend");

        String fmt = BudgetCore.formatBalance(1234567L);
        expect(fmt.startsWith("+"), "format +");
        expect(BudgetCore.formatBalance(0L).contains("0"), "format 0");
        expect(BudgetCore.formatBalance(-42L).contains("-"), "format -");

        System.out.println("BudgetCore OK");
    }

    private static void expect(boolean ok, String msg) {
        if (!ok) {
            throw new AssertionError(msg);
        }
    }
}
