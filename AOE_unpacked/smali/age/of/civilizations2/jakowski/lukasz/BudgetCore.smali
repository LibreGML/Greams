.class public final Lage/of/civilizations2/jakowski/lukasz/BudgetCore;
.super Ljava/lang/Object;
.source "BudgetCore.java"


# static fields
.field private static final INFLATION_COST_FACTOR:D

.field private static final INFLATION_INCOME_FRAC:D = 0.4

.field private static final INFLATION_PEAK_MULT:D = 1.1275

.field private static final INFLATION_SCALE:D

.field private static final INFLATION_TRIGGER:D = 0.235

.field private static final INTEREST_BUDGET_CAP:D = 0.075

.field private static final INTEREST_RATE:D = 0.01274


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const v0, 0x4191050a

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->INFLATION_SCALE:D

    .line 14
    const v0, 0x3d8b1c28

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->INFLATION_COST_FACTOR:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdministration(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V
    .registers 4

    .line 143
    float-to-double v0, p1

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addAdministrationD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V

    .line 144
    return-void
.end method

.method public static addAdministrationD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V
    .registers 5

    .line 157
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    .line 158
    iget-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    .line 159
    return-void
.end method

.method public static addProduction(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V
    .registers 4

    .line 139
    float-to-double v0, p1

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addProductionD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V

    .line 140
    return-void
.end method

.method public static addProductionD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V
    .registers 5

    .line 152
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    .line 153
    iget-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    .line 154
    return-void
.end method

.method public static addTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V
    .registers 4

    .line 135
    float-to-double v0, p1

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addTaxD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V

    .line 136
    return-void
.end method

.method public static addTaxD(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V
    .registers 5

    .line 147
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    .line 148
    iget-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    .line 149
    return-void
.end method

.method public static adminInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 3

    .line 118
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static adminOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 98
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    return-wide v0
.end method

.method public static balanceInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    .registers 2

    .line 294
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->balanceLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static balanceLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J
    .registers 4

    .line 270
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->expensesLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampSub(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 3

    .line 106
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static budgetOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 86
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    return-wide v0
.end method

.method public static clampAdd(JJ)J
    .registers 9

    .line 19
    add-long v0, p0, p2

    .line 20
    xor-long v2, p0, v0

    xor-long/2addr p2, v0

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_19

    .line 21
    cmp-long p2, p0, v2

    if-lez p2, :cond_16

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_18

    :cond_16
    const-wide/high16 p0, -0x8000000000000000L

    :goto_18
    return-wide p0

    .line 23
    :cond_19
    return-wide v0
.end method

.method public static clampSub(JJ)J
    .registers 9

    .line 27
    sub-long v0, p0, p2

    .line 28
    xor-long/2addr p2, p0

    xor-long v2, p0, v0

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_19

    .line 29
    cmp-long p2, p0, v2

    if-ltz p2, :cond_16

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_18

    :cond_16
    const-wide/high16 p0, -0x8000000000000000L

    :goto_18
    return-wide p0

    .line 31
    :cond_19
    return-wide v0
.end method

.method public static expensesFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F
    .registers 2

    .line 282
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->expensesLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static expensesLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J
    .registers 8

    .line 256
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep_Total(I)F

    .line 257
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 258
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    .line 259
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v1

    .line 260
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result v5

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v1

    .line 261
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result v5

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v1

    .line 262
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Goods()F

    move-result v5

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v1

    .line 263
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->interestLong(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v1

    .line 264
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p0

    .line 265
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getLoans_GoldTotalPerTurn()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p0

    .line 266
    return-wide p0
.end method

.method public static finalizeBudget(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)V
    .registers 5

    .line 193
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 194
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    .line 195
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {p0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampSub(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    .line 196
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->syncInts(Lage/of/civilizations2/jakowski/lukasz/Civilization;)V

    .line 197
    return-void
.end method

.method public static formatBalance(J)Ljava/lang/String;
    .registers 6

    .line 338
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_22

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :cond_22
    return-object v0
.end method

.method public static formatExpenses(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    .registers 2

    .line 370
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->expensesLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatGoods(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 374
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->goodsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatIncome(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    .registers 2

    .line 366
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInflation(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)Ljava/lang/String;
    .registers 2

    .line 390
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInterest(I)Ljava/lang/String;
    .registers 3

    .line 386
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->interestLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInvestments(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 378
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->investmentsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoney(J)Ljava/lang/String;
    .registers 2

    .line 333
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoneyOfAdmin(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 358
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoneyOfBudget(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 346
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoneyOfMilitary(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 362
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoneyOfProd(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 354
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMoneyOfTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 350
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatResearch(Lage/of/civilizations2/jakowski/lukasz/Civilization;)Ljava/lang/String;
    .registers 3

    .line 382
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->researchSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->formatMoney(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromDouble(D)J
    .registers 5

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    const-wide/16 p0, 0x0

    return-wide p0

    .line 38
    :cond_9
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_15

    .line 39
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 41
    :cond_15
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1e

    .line 42
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    .line 44
    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static fromFloat(F)J
    .registers 3

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    const-wide/16 v0, 0x0

    return-wide v0

    .line 51
    :cond_9
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 52
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1c

    :cond_1a
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1c
    return-wide v0

    .line 54
    :cond_1d
    float-to-double v0, p0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static goodsSpendings(II)F
    .registers 2

    .line 298
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->goodsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static goodsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 317
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Goods()F

    move-result p0

    invoke-static {v0, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static incomeExtras(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J
    .registers 6

    .line 178
    nop

    .line 179
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_FromVassalsOfCiv(I)F

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromFloat(F)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v0

    .line 180
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_Debuff_IsVassal(I)F

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromFloat(F)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v0

    .line 181
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_Buff_WarReparations(I)F

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromFloat(F)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v0

    .line 182
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_Debuff_WarReparations(I)F

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromFloat(F)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p0

    .line 183
    return-wide p0
.end method

.method public static incomeFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F
    .registers 2

    .line 278
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static incomeInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I
    .registers 2

    .line 274
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static incomeLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J
    .registers 7

    .line 187
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 188
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v0

    .line 189
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeExtras(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static inflationFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F
    .registers 2

    .line 286
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static inflationLong(IJ)J
    .registers 11

    .line 217
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    .line 219
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 220
    return-wide v2

    .line 223
    :cond_11
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    long-to-double p1, p1

    :try_start_14
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 224
    const-wide v4, 0x3ff20a3d70a3d70aL    # 1.1275

    mul-double p1, p1, v4

    .line 225
    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    add-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, v6

    add-double/2addr p1, v4

    .line 226
    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->INFLATION_SCALE:D

    mul-double p1, p1, v4

    .line 227
    const-wide/16 v4, 0x0

    cmpg-double p0, p1, v4

    if-lez p0, :cond_78

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_78

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_78

    .line 230
    :cond_44
    long-to-double v0, v0

    div-double p0, v0, p1

    .line 231
    const-wide v6, 0x3fce147ae147ae14L    # 0.235

    cmpg-double p2, p0, v6

    if-gtz p2, :cond_51

    .line 232
    return-wide v2

    .line 234
    :cond_51
    sub-double/2addr p0, v6

    .line 235
    mul-double v0, v0, p0

    sget-wide p0, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->INFLATION_COST_FACTOR:D

    mul-double v0, v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    .line 236
    cmpg-double p0, v0, v4

    if-ltz p0, :cond_77

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_66

    goto :goto_77

    .line 239
    :cond_66
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_72

    .line 240
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 242
    :cond_72
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p0
    :try_end_76
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_76} :catch_79

    return-wide p0

    .line 237
    :cond_77
    :goto_77
    return-wide v2

    .line 228
    :cond_78
    :goto_78
    return-wide v2

    .line 243
    :catch_79
    move-exception p0

    .line 244
    return-wide v2
.end method

.method public static inflationLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J
    .registers 9

    .line 249
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getInflationPeakValue()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 251
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    iget-wide v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide v3

    .line 252
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationLong(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static interestFloat(I)F
    .registers 3

    .line 290
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->interestLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static interestLong(I)J
    .registers 7

    .line 201
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_11

    .line 204
    return-wide v2

    .line 206
    :cond_11
    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 207
    const-wide v2, 0x3f8a176ddaceee0fL    # 0.01274

    mul-double v0, v0, v2

    .line 208
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    long-to-double v2, v2

    const-wide v4, 0x3fb3333333333333L    # 0.075

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 209
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static investmentsSpendings(II)F
    .registers 2

    .line 302
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->investmentsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static investmentsSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 321
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result p0

    invoke-static {v0, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static investmentsTotal(II)F
    .registers 6

    .line 310
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 311
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result p1

    invoke-static {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v0

    .line 312
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result p0

    invoke-static {v2, v3, p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->clampAdd(JJ)J

    move-result-wide p0

    .line 313
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static militaryInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 3

    .line 122
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static militaryOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 102
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    return-wide v0
.end method

.method public static prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 3

    .line 114
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static prodOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    return-wide v0
.end method

.method public static provinceAmount(F)D
    .registers 3

    .line 395
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 396
    const-wide/16 v0, 0x0

    return-wide v0

    .line 398
    :cond_9
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 399
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_17

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    goto :goto_19

    :cond_17
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    :goto_19
    return-wide v0

    .line 401
    :cond_1a
    float-to-double v0, p0

    return-wide v0
.end method

.method public static researchSpendings(II)F
    .registers 2

    .line 306
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->researchSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p0

    return p0
.end method

.method public static researchSpendingsLong(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 325
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result p0

    invoke-static {v0, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->spend(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static resetLedgers(Lage/of/civilizations2/jakowski/lukasz/Civilization;)V
    .registers 3

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    .line 127
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    .line 128
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    .line 129
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    .line 130
    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    .line 131
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->syncInts(Lage/of/civilizations2/jakowski/lukasz/Civilization;)V

    .line 132
    return-void
.end method

.method public static setMilitaryUpkeep(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V
    .registers 6

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 163
    :cond_c
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    cmpl-double v0, p1, v1

    if-lez v0, :cond_1b

    const-wide/high16 p1, 0x43e0000000000000L    # 9.223372036854776E18

    goto :goto_1c

    :cond_1b
    move-wide p1, v1

    .line 165
    :cond_1c
    :goto_1c
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    .line 166
    iget-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    .line 167
    return-void
.end method

.method public static spend(JF)J
    .registers 6

    .line 79
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_15

    cmp-long v0, p0, v1

    if-nez v0, :cond_c

    goto :goto_15

    .line 82
    :cond_c
    long-to-double p0, p0

    float-to-double v0, p2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->fromDouble(D)J

    move-result-wide p0

    return-wide p0

    .line 80
    :cond_15
    :goto_15
    return-wide v1
.end method

.method public static syncInts(Lage/of/civilizations2/jakowski/lukasz/Civilization;)V
    .registers 3

    .line 170
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    .line 171
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    .line 172
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    .line 173
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    .line 174
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    .line 175
    return-void
.end method

.method public static taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 3

    .line 110
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toIntSaturated(J)I

    move-result p0

    return p0
.end method

.method public static taxOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J
    .registers 3

    .line 90
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    return-wide v0
.end method

.method public static toFloatDisplay(J)F
    .registers 5

    .line 69
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p0, v0

    if-ltz v2, :cond_d

    .line 70
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    .line 72
    :cond_d
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-gtz v2, :cond_17

    .line 73
    const p0, -0x800001

    return p0

    .line 75
    :cond_17
    long-to-float p0, p0

    return p0
.end method

.method public static toIntSaturated(J)I
    .registers 5

    .line 59
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_b

    .line 60
    const p0, 0x7fffffff

    return p0

    .line 62
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_15

    .line 63
    const/high16 p0, -0x80000000

    return p0

    .line 65
    :cond_15
    long-to-int p1, p0

    return p1
.end method
