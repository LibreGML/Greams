package age.of.civilizations2.jakowski.lukasz;

/**
 * Sole money engine. Ledgers are {@code long}; ratios use {@code double}.
 * Never use float subtraction for surplus. Never saturate values for on-screen money.
 */
public final class BudgetCore {
    private static final double INTEREST_RATE = 0.01274;
    private static final double INTEREST_BUDGET_CAP = 0.075;
    private static final double INFLATION_PEAK_MULT = 1.1275;
    private static final double INFLATION_INCOME_FRAC = 0.4;
    private static final double INFLATION_SCALE = Float.intBitsToFloat(0x4191050a);
    private static final double INFLATION_TRIGGER = 0.235;
    private static final double INFLATION_COST_FACTOR = Float.intBitsToFloat(0x3d8b1c28);

    private BudgetCore() {}

    public static long clampAdd(long a, long b) {
        long r = a + b;
        if (((a ^ r) & (b ^ r)) < 0L) {
            return a > 0L ? Long.MAX_VALUE : Long.MIN_VALUE;
        }
        return r;
    }

    public static long clampSub(long a, long b) {
        long r = a - b;
        if (((a ^ b) & (a ^ r)) < 0L) {
            return a >= 0L ? Long.MAX_VALUE : Long.MIN_VALUE;
        }
        return r;
    }

    public static long fromDouble(double d) {
        if (Double.isNaN(d)) {
            return 0L;
        }
        if (d >= (double) Long.MAX_VALUE) {
            return Long.MAX_VALUE;
        }
        if (d <= (double) Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return Math.round(d);
    }

    public static long fromFloat(float f) {
        if (Float.isNaN(f)) {
            return 0L;
        }
        if (Float.isInfinite(f)) {
            return f > 0f ? Long.MAX_VALUE : Long.MIN_VALUE;
        }
        return fromDouble((double) f);
    }

    /** AI / legacy int-only APIs — NOT for player-facing money text. */
    public static int toIntSaturated(long v) {
        if (v > (long) Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        if (v < (long) Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        return (int) v;
    }

    public static float toFloatDisplay(long v) {
        if (v >= (long) Float.MAX_VALUE) {
            return Float.MAX_VALUE;
        }
        if (v <= (long) -Float.MAX_VALUE) {
            return -Float.MAX_VALUE;
        }
        return (float) v;
    }

    public static long spend(long budget, float percent) {
        if (percent == 0f || budget == 0L) {
            return 0L;
        }
        return fromDouble((double) budget * (double) percent);
    }

    public static long budgetOf(Civilization c) {
        return c.lBudget;
    }

    public static long taxOf(Civilization c) {
        return c.lIncomeTaxation;
    }

    public static long prodOf(Civilization c) {
        return c.lIncomeProduction;
    }

    public static long adminOf(Civilization c) {
        return c.lAdministrationCosts;
    }

    public static long militaryOf(Civilization c) {
        return c.lMilitaryUpkeep_Total;
    }

    public static int budgetInt(Civilization c) {
        return toIntSaturated(c.lBudget);
    }

    public static int taxInt(Civilization c) {
        return toIntSaturated(c.lIncomeTaxation);
    }

    public static int prodInt(Civilization c) {
        return toIntSaturated(c.lIncomeProduction);
    }

    public static int adminInt(Civilization c) {
        return toIntSaturated(c.lAdministrationCosts);
    }

    public static int militaryInt(Civilization c) {
        return toIntSaturated(c.lMilitaryUpkeep_Total);
    }

    public static void resetLedgers(Civilization c) {
        c.lIncomeTaxation = 0L;
        c.lIncomeProduction = 0L;
        c.lAdministrationCosts = 0L;
        c.lBudget = 0L;
        c.lMilitaryUpkeep_Total = 0L;
        syncInts(c);
    }

    public static void addTax(Civilization c, float amount) {
        addTaxD(c, (double) amount);
    }

    public static void addProduction(Civilization c, float amount) {
        addProductionD(c, (double) amount);
    }

    public static void addAdministration(Civilization c, float amount) {
        addAdministrationD(c, (double) amount);
    }

    public static void addTaxD(Civilization c, double amount) {
        c.lIncomeTaxation = clampAdd(c.lIncomeTaxation, fromDouble(amount));
        c.iIncomeTaxation = toIntSaturated(c.lIncomeTaxation);
    }

    public static void addProductionD(Civilization c, double amount) {
        c.lIncomeProduction = clampAdd(c.lIncomeProduction, fromDouble(amount));
        c.iIncomeProduction = toIntSaturated(c.lIncomeProduction);
    }

    public static void addAdministrationD(Civilization c, double amount) {
        c.lAdministrationCosts = clampAdd(c.lAdministrationCosts, fromDouble(amount));
        c.iAdministrationCosts = toIntSaturated(c.lAdministrationCosts);
    }

    public static void setMilitaryUpkeep(Civilization c, double total) {
        if (Double.isNaN(total) || Double.isInfinite(total)) {
            total = Double.isInfinite(total) && total > 0 ? (double) Long.MAX_VALUE : 0.0;
        }
        c.lMilitaryUpkeep_Total = fromDouble(Math.ceil(total));
        c.iMilitaryUpkeep_Total = toIntSaturated(c.lMilitaryUpkeep_Total);
    }

    public static void syncInts(Civilization c) {
        c.iIncomeTaxation = toIntSaturated(c.lIncomeTaxation);
        c.iIncomeProduction = toIntSaturated(c.lIncomeProduction);
        c.iAdministrationCosts = toIntSaturated(c.lAdministrationCosts);
        c.iBudget = toIntSaturated(c.lBudget);
        c.iMilitaryUpkeep_Total = toIntSaturated(c.lMilitaryUpkeep_Total);
    }

    public static long incomeExtras(Game_NextTurnUpdate ntu, int civId) {
        long v = 0L;
        v = clampAdd(v, fromFloat(ntu.getIncome_FromVassalsOfCiv(civId)));
        v = clampAdd(v, fromFloat(ntu.getIncome_Debuff_IsVassal(civId)));
        v = clampAdd(v, fromFloat(ntu.getIncome_Buff_WarReparations(civId)));
        v = clampAdd(v, fromFloat(ntu.getIncome_Debuff_WarReparations(civId)));
        return v;
    }

    public static long incomeLong(Game_NextTurnUpdate ntu, int civId) {
        Civilization c = CFG.game.getCiv(civId);
        long v = clampAdd(c.lIncomeTaxation, c.lIncomeProduction);
        return clampAdd(v, incomeExtras(ntu, civId));
    }

    public static void finalizeBudget(Game_NextTurnUpdate ntu, int civId) {
        Civilization c = CFG.game.getCiv(civId);
        long income = incomeLong(ntu, civId);
        c.lBudget = clampSub(income, c.lAdministrationCosts);
        syncInts(c);
    }

    /** Interest on debt — double throughout, capped vs long budget. */
    public static long interestLong(int civId) {
        Civilization c = CFG.game.getCiv(civId);
        long money = c.getMoney();
        if (money >= 0L) {
            return 0L;
        }
        double debt = Math.abs((double) money);
        double raw = debt * INTEREST_RATE;
        double cap = Math.abs((double) c.lBudget * INTEREST_BUDGET_CAP);
        return fromDouble(Math.min(raw, cap));
    }

    /**
     * Inflation cost — same formula as vanilla, all double (treasury & income peaks).
     * {@code peak} is max observed tax+prod (long), not int.
     */
    public static long inflationLong(int civId, long peakIncomeHint) {
        Civilization c = CFG.game.getCiv(civId);
        long money = c.getMoney();
        if (money < 0L) {
            return 0L;
        }
        try {
            double peak = Math.max(100.0, (double) peakIncomeHint);
            double denom = peak * INFLATION_PEAK_MULT;
            denom += (double) (c.lIncomeTaxation + c.lIncomeProduction) * INFLATION_INCOME_FRAC;
            denom *= INFLATION_SCALE;
            if (denom <= 0.0 || Double.isNaN(denom) || Double.isInfinite(denom)) {
                return 0L;
            }
            double ratio = (double) money / denom;
            if (ratio <= INFLATION_TRIGGER) {
                return 0L;
            }
            double over = ratio - INFLATION_TRIGGER;
            double cost = 1.0 + (double) money * over * INFLATION_COST_FACTOR;
            if (cost < 0.0 || Double.isNaN(cost)) {
                return 0L;
            }
            if (Double.isInfinite(cost)) {
                return Long.MAX_VALUE;
            }
            return fromDouble(cost);
        } catch (ArithmeticException ex) {
            return 0L;
        }
    }

    public static long inflationLong(Game_NextTurnUpdate ntu, int civId) {
        Civilization c = CFG.game.getCiv(civId);
        long fromPeak = Math.max(100L, (long) ntu.getInflationPeakValue());
        long fromNow = clampAdd(c.lIncomeTaxation, c.lIncomeProduction);
        return inflationLong(civId, Math.max(fromPeak, fromNow));
    }

    public static long expensesLong(Game_NextTurnUpdate ntu, int civId) {
        ntu.getMilitaryUpkeep_Total(civId);
        Civilization civ = CFG.game.getCiv(civId);
        long e = civ.lAdministrationCosts;
        e = clampAdd(e, civ.lMilitaryUpkeep_Total);
        e = clampAdd(e, spend(civ.lBudget, civ.getSpendings_Investments()));
        e = clampAdd(e, spend(civ.lBudget, civ.getSpendings_Research()));
        e = clampAdd(e, spend(civ.lBudget, civ.getSpendings_Goods()));
        e = clampAdd(e, interestLong(civId));
        e = clampAdd(e, inflationLong(ntu, civId));
        e = clampAdd(e, (long) civ.getLoans_GoldTotalPerTurn());
        return e;
    }

    public static long balanceLong(Game_NextTurnUpdate ntu, int civId) {
        return clampSub(incomeLong(ntu, civId), expensesLong(ntu, civId));
    }

    public static int incomeInt(Game_NextTurnUpdate ntu, int civId) {
        return toIntSaturated(incomeLong(ntu, civId));
    }

    public static float incomeFloat(Game_NextTurnUpdate ntu, int civId) {
        return toFloatDisplay(incomeLong(ntu, civId));
    }

    public static float expensesFloat(Game_NextTurnUpdate ntu, int civId) {
        return toFloatDisplay(expensesLong(ntu, civId));
    }

    public static float inflationFloat(Game_NextTurnUpdate ntu, int civId) {
        return toFloatDisplay(inflationLong(ntu, civId));
    }

    public static float interestFloat(int civId) {
        return toFloatDisplay(interestLong(civId));
    }

    public static int balanceInt(Game_NextTurnUpdate ntu, int civId) {
        return toIntSaturated(balanceLong(ntu, civId));
    }

    public static float goodsSpendings(int civId, int ignored) {
        return toFloatDisplay(goodsSpendingsLong(CFG.game.getCiv(civId)));
    }

    public static float investmentsSpendings(int civId, int ignored) {
        return toFloatDisplay(investmentsSpendingsLong(CFG.game.getCiv(civId)));
    }

    public static float researchSpendings(int civId, int ignored) {
        return toFloatDisplay(researchSpendingsLong(CFG.game.getCiv(civId)));
    }

    public static float investmentsTotal(int civId, int ignored) {
        Civilization c = CFG.game.getCiv(civId);
        long v = spend(c.lBudget, c.getSpendings_Research());
        v = clampAdd(v, spend(c.lBudget, c.getSpendings_Investments()));
        return toFloatDisplay(v);
    }

    public static long goodsSpendingsLong(Civilization c) {
        return spend(c.lBudget, c.getSpendings_Goods());
    }

    public static long investmentsSpendingsLong(Civilization c) {
        return spend(c.lBudget, c.getSpendings_Investments());
    }

    public static long researchSpendingsLong(Civilization c) {
        return spend(c.lBudget, c.getSpendings_Research());
    }

    /**
     * Raw decimal digits for UI that still calls {@link CFG#getNumberWithSpaces}.
     * Never clamps to int — full {@code long} range.
     */
    public static String formatMoney(long value) {
        return Long.toString(value);
    }

    /** Spaced + signed text for the top-bar surplus (no second spacing pass). */
    public static String formatBalance(long balance) {
        String core = CFG.getNumberWithSpaces(Long.toString(balance));
        if (balance > 0L) {
            return "+" + core;
        }
        return core;
    }

    public static String formatMoneyOfBudget(Civilization c) {
        return formatMoney(c.lBudget);
    }

    public static String formatMoneyOfTax(Civilization c) {
        return formatMoney(c.lIncomeTaxation);
    }

    public static String formatMoneyOfProd(Civilization c) {
        return formatMoney(c.lIncomeProduction);
    }

    public static String formatMoneyOfAdmin(Civilization c) {
        return formatMoney(c.lAdministrationCosts);
    }

    public static String formatMoneyOfMilitary(Civilization c) {
        return formatMoney(c.lMilitaryUpkeep_Total);
    }

    public static String formatIncome(Game_NextTurnUpdate ntu, int civId) {
        return formatMoney(incomeLong(ntu, civId));
    }

    public static String formatExpenses(Game_NextTurnUpdate ntu, int civId) {
        return formatMoney(expensesLong(ntu, civId));
    }

    public static String formatGoods(Civilization c) {
        return formatMoney(goodsSpendingsLong(c));
    }

    public static String formatInvestments(Civilization c) {
        return formatMoney(investmentsSpendingsLong(c));
    }

    public static String formatResearch(Civilization c) {
        return formatMoney(researchSpendingsLong(c));
    }

    public static String formatInterest(int civId) {
        return formatMoney(interestLong(civId));
    }

    public static String formatInflation(Game_NextTurnUpdate ntu, int civId) {
        return formatMoney(inflationLong(ntu, civId));
    }

    /** Province float → ledger double (avoids float→int truncation on add). */
    public static double provinceAmount(float stored) {
        if (Float.isNaN(stored)) {
            return 0.0;
        }
        if (Float.isInfinite(stored)) {
            return stored > 0f ? (double) Long.MAX_VALUE : (double) Long.MIN_VALUE;
        }
        return (double) stored;
    }
}
