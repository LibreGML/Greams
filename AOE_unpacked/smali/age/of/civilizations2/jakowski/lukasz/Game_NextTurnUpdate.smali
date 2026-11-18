.class Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;
.super Ljava/lang/Object;
.source "Game_NextTurnUpdate.java"


# static fields
.field protected static AVERAGE_MANPOWER_PERTURN:F = 250.0f

.field protected static final BUDGET_MAX:I = 0xc8

.field protected static final DEFENSIVE_POSITION_MILITARY_UPKEEP_PER_TUR:F = 0.008f

.field protected static final DEV_MAX:F = 0.3f

.field protected static final EMPLOYEMENT_PER_ECONOMY:F = 1.025f

.field protected static final EMPLOYEMENT_PER_ECONOMY_OLD:F = 1.775f

.field protected static final INFLATION_MODIFIER:F = 18.12746f

.field protected static INFLATION_PEAK_VALUE:I = 0x64

.field protected static final INFLATION_STARTS_AT:F = 0.235f

.field protected static LEAGUE_BUDGET:F = 1.0f

.field protected static LEAGUE_MANPOWER_PERTURN:F = 1.0f

.field protected static final PERCENTAGE_OF_INCOME_FOR_LORD_DEFAULT:I = 0x9

.field protected static final PERCENTAGE_OF_INCOME_FOR_LORD_MAX:I = 0x14

.field protected static final PERCENTAGE_OF_INCOME_FOR_LORD_MIN:I = 0x0

.field protected static final PERCENTAGE_OF_INCOME_FOR_WAR_REPARATIONS:F = 0.08f

.field protected static final PROVINCE_NUM_MAX:I = 0x50

.field protected static final TAXES_INFLUENCE_POP:F = 0.3f

.field protected static final TAXES_INFLUENCE_PRODUCTION:F = 0.175f

.field protected static final TECH_MAX:F = 60.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final buildLevelsOfCities()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->buildLevelsOfCities(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected final buildLevelsOfCities(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v4

    int-to-float v5, v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v6

    invoke-static {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCityLevel_Population(FII)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object p1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected final getAdministrationCost_Update(I)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getAdministration_Capital(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceAdministration(II)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method

.method protected final getAdministration_Capital(I)I
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method protected final getBalance(I)I
    .locals 1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->balanceInt(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)I

    move-result p1

    return p1
.end method

.method protected final getBalanceLong(I)J
    .locals 2

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->balanceLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getBalance_UpdateBudget_Prepare(I)V
    .locals 8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->resetLedgers(Lage/of/civilizations2/jakowski/lukasz/Civilization;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getAdministration_Capital(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->taxIncome_Modifier(I)F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {p0, v5, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Taxation(IIF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {p0, v5, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Production(IIF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    add-float/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {p0, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceAdministration(II)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addTax(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addProduction(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->addAdministration(Lage/of/civilizations2/jakowski/lukasz/Civilization;F)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v4

    if-gez v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v5, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    goto :goto_1

    :cond_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v1, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->finalizeBudget(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)V

    return-void
.end method

.method protected final getDistanceFromAToB_PercOfMax(II)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMaxDistance()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method protected final getDistanceFromCapital(II)F
    .locals 7

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapWorldMap(I)Z

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth_Real()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-double v3, v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-double v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth_Real()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result p2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-double v3, v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY_Real()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float p1, p1

    return p1

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMaxDistance()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method protected final getDistanceFromCapital_PercOfMax(II)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMaxDistance()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method protected final getEmploymentPopulation(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvince_EmploymentPopulation(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getExpenses(I)F
    .locals 1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->expensesFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F

    move-result p1

    return p1
.end method

.method protected final getExpenses_Budget(I)F
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->adminOf(Lage/of/civilizations2/jakowski/lukasz/Civilization;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p1

    return p1
.end method

.method protected final getGoodsSpendings(II)F
    .locals 1

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->goodsSpendings(II)F

    move-result p1

    return p1
.end method

.method protected final getHappinessChange_ByTaxation(I)F
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    mul-float v1, v1, v2

    const v2, 0x41add70a    # 21.73f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p1

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p1

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    const p1, 0x3fb9999a    # 1.45f

    goto :goto_0

    :cond_0
    const p1, 0x3f666666    # 0.9f

    :goto_0
    mul-float v0, v0, p1

    const p1, 0x3d0b4396    # 0.034f

    mul-float v0, v0, p1

    const p1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, p1

    return v0
.end method

.method protected final getHappinessChange_ByTaxation_Occupied(I)F
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    mul-float v1, v1, v2

    const v2, 0x41add70a    # 21.73f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p1

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p1

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    const p1, 0x3fb9999a    # 1.45f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    mul-float v0, v0, p1

    const p1, 0x3cdb22d1    # 0.02675f

    mul-float v0, v0, p1

    const p1, 0x3d0b4396    # 0.034f

    add-float/2addr v0, p1

    return v0
.end method

.method protected final getIncome(I)F
    .locals 1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->incomeFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F

    move-result p1

    return p1
.end method

.method protected final getIncome_Buff_WarReparations(I)F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsGetsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsGets(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getWarReparationsMoney(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getIncome_Debuff_IsVassal(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_Vassals(II)F

    move-result p1

    neg-float p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getIncome_Debuff_WarReparations(I)F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarReparationsPaysSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getWarReparationsMoney(I)F

    move-result v2

    sub-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getIncome_FromVassalsOfCiv(I)F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {p0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_Vassals(II)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getIncome_TaxesLevel(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_TaxesLevel_Taxation(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome_TaxesLevel_Production(I)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method protected final getIncome_TaxesLevel_Production(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Production(I)F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected final getIncome_TaxesLevel_Taxation(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Taxation(I)F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected final getIncome_Vassals(II)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getVassalizationMoney(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getInflation(I)F
    .locals 1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationFloat(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)F

    move-result p1

    return p1
.end method

.method protected final getInflationPeakValue()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->INFLATION_PEAK_VALUE:I

    return v0
.end method

.method protected final getInflationPerc(I)F
    .locals 5

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->inflationLong(Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;I)J

    move-result-wide v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method protected final getInterestCost(I)F
    .locals 1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->interestFloat(I)F

    move-result p1

    return p1
.end method

.method protected final getInvestmentsSpendings(II)F
    .locals 1

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->investmentsSpendings(II)F

    move-result p1

    return p1
.end method

.method protected final getInvestments_Total(II)F
    .locals 1

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->investmentsTotal(II)F

    move-result p1

    return p1
.end method

.method protected getLevelOfCity(III)I
    .locals 0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const p1, 0x3f43d70a    # 0.765f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x3f133333    # 0.575f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const p1, 0x3ea66666    # 0.325f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result p1

    return p1
.end method

.method protected final getMilitarySpendings(II)I
    .locals 0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep_Total(I)F

    move-result p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected final getMilitaryUpkeep(II)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result p1

    return p1
.end method

.method protected final getMilitaryUpkeep(III)F
    .locals 4

    int-to-float p2, p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_MilitaryUpkeep(I)F

    move-result v0

    mul-float p2, p2, v0

    float-to-double v0, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result p2

    const v2, 0x3e028f5c    # 0.1275f

    mul-float p2, p2, v2

    const v2, 0x3f83d70a    # 1.03f

    sub-float/2addr v2, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result p2

    const v3, 0x3dd69c24    # 0.10479f

    mul-float p2, p2, v3

    sub-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getMilitaryUpkeep(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier_MilitaryUpkeep(I)F

    move-result v0

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3ed9999a    # 0.425f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v2

    add-float/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_MilitaryUpkeep()F

    move-result p3

    add-float/2addr v0, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result p3

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Bonus(I)F

    move-result p3

    sub-float/2addr v0, p3

    mul-float p2, p2, v0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float p2, p2, p3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep_DefensivePosition(I)F

    move-result p1

    sub-float/2addr v1, p1

    mul-float p2, p2, v1

    return p2
.end method

.method protected final getMilitaryUpkeep_DefensivePosition(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDefensivePosition()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3c03126f    # 0.008f

    mul-float p1, p1, v0

    return p1
.end method

.method protected final getMilitaryUpkeep_Total(I)F
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(II)F

    move-result v3

    float-to-double v4, v3

    add-double/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(II)F

    move-result v3

    float-to-double v4, v3

    add-double/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v4

    invoke-virtual {p0, v3, v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result v3

    float-to-double v4, v3

    add-double/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v3

    invoke-virtual {p0, v1, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v6, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->setMilitaryUpkeep(Lage/of/civilizations2/jakowski/lukasz/Civilization;D)V

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->toFloatDisplay(J)F

    move-result p1

    return p1
.end method

.method protected final getMilitaryUpkeep_WithAllRecruitmentsInProcess(III)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    if-eq v2, p1, :cond_0

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method protected final getMilitaryUpkeep_WithAllRecruitmentsInProcess_Disband(III)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    if-eq v2, p1, :cond_0

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep(III)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected final getMilitaryUpkeep_WithoutDefensivePosition(III)F
    .locals 4

    int-to-float p2, p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_MilitaryUpkeep(I)F

    move-result v0

    mul-float p2, p2, v0

    float-to-double v0, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result p2

    const v2, 0x3e028f5c    # 0.1275f

    mul-float p2, p2, v2

    const v2, 0x3f83d70a    # 1.03f

    sub-float/2addr v2, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result p2

    const v3, 0x3dd69c24    # 0.10479f

    mul-float p2, p2, v3

    sub-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getMilitaryUpkeep(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier_MilitaryUpkeep(I)F

    move-result v0

    mul-float p2, p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3ed9999a    # 0.425f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getWarWeariness()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_MilitaryUpkeep()F

    move-result p3

    add-float/2addr v0, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Bonus(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float p2, p2, p1

    return p2
.end method

.method protected final getProvinceAdministration(II)F
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    const v1, 0x3b54dc66    # 0.003248f

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v3

    const v4, 0x3a3e0ded    # 7.25E-4f

    mul-float v3, v3, v4

    const v4, 0x3b1d4952    # 0.0024f

    add-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v3, 0x3fede9b7bf1e8e61L    # 0.93478

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital_PercOfMax(II)F

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    const v4, 0x3fc3851f    # 1.5275f

    add-float/2addr v3, v4

    div-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_AdministrationCost_Distance(I)F

    move-result v3

    mul-float v1, v1, v3

    const v3, 0x3e09e98e    # 0.13468f

    add-float/2addr v1, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v4

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v1

    const v3, 0x3d926e98    # 0.0715f

    mul-float v1, v1, v3

    const v3, 0x3f6eb852    # 0.9325f

    add-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v3

    sub-float v3, v2, v3

    const v4, 0x3d051eb8    # 0.0325f

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier_Administration(I)F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_Administation()F

    move-result v3

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    if-ne p1, p2, :cond_0

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p1

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p1

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    :cond_0
    mul-float v0, v0, v2

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v0, v0, p1

    return v0
.end method

.method protected final getProvinceIncomeAndExpenses_Total(I)F
    .locals 3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Taxation(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Production(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceAdministration(II)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float/2addr v0, p1

    return v0
.end method

.method protected final getProvinceIncome_Production(I)F
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->taxIncome_Modifier(I)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Production(IIF)F

    move-result p1

    return p1
.end method

.method protected final getProvinceIncome_Production(IIF)F
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    const v3, 0x3f800000    # 1.0f

    const v4, 0x3f533333    # 0.825f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const v7, 0x3ed9999a    # 0.425f

    const v8, 0x3f5ccccd    # 0.8625f

    const v9, 0x3d8c49ba    # 0.0685f

    const v10, 0x3d2e147b    # 0.0425f

    const v11, 0x3e30a3d7    # 0.1725f

    const v12, 0x3f833333    # 1.025f

    const v13, 0x3f133333    # 0.575f

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v14

    mul-float v14, v14, v11

    add-float/2addr v14, v12

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v11

    mul-float v11, v11, v10

    add-float/2addr v14, v11

    mul-float v2, v2, v14

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeProduction_Base(I)F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeProduction_PerDevelopment(I)F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    mul-float v2, v2, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v10

    mul-float v10, v10, v13

    add-float/2addr v10, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v9

    mul-float v9, v9, v8

    add-float/2addr v10, v9

    mul-float v2, v2, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v8

    mul-float v8, v8, v13

    add-float/2addr v8, v7

    mul-float v2, v2, v8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier_Production(I)F

    move-result v7

    mul-float v2, v2, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_IncomeProduction(I)F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeProduction()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-float/2addr v7, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_IncomeProduction(I)F

    move-result v0

    add-float/2addr v7, v0

    mul-float v2, v2, v7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v0

    mul-float v0, v0, v3

    add-float/2addr v0, v4

    mul-float v2, v2, v0

    mul-float v2, v2, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v2, v2, v0

    const v0, 0x3dcccccd    # 0.1f

    :goto_1
    mul-float v2, v2, v0

    return v2

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v14

    mul-float v14, v14, v11

    add-float/2addr v14, v12

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v11

    mul-float v11, v11, v10

    add-float/2addr v14, v11

    mul-float v2, v2, v14

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeProduction_Base(I)F

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeProduction_PerDevelopment(I)F

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    mul-float v2, v2, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v10

    mul-float v10, v10, v13

    add-float/2addr v10, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v9

    mul-float v9, v9, v8

    add-float/2addr v10, v9

    mul-float v2, v2, v10

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v8

    mul-float v8, v8, v13

    add-float/2addr v8, v7

    mul-float v2, v2, v8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier_Production(I)F

    move-result v7

    mul-float v2, v2, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_IncomeProduction(I)F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeProduction()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    add-float/2addr v7, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_IncomeProduction(I)F

    move-result v0

    add-float/2addr v7, v0

    mul-float v2, v2, v7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result v0

    mul-float v0, v0, v3

    add-float/2addr v0, v4

    mul-float v2, v2, v0

    mul-float v2, v2, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    goto/16 :goto_1
.end method

.method protected final getProvinceIncome_Taxation(I)F
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->taxIncome_Modifier(I)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Taxation(IIF)F

    move-result p1

    return p1
.end method

.method protected final getProvinceIncome_Taxation(IIF)F
    .locals 8

    move v7, p1

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvince_EmploymentPopulation(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeTaxation_Base(I)F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeTaxation_PerTechnology(I)F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    mul-float v2, v2, v3

    const v3, 0x41af63f8

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide v4, 0x3fead5cfaacd9e84L    # 0.8386

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvince_UnemploymentPopulation(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeTaxation_Base(I)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_IncomeTaxation_PerTechnology(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v6

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    mul-float v2, v2, v4

    float-to-double v2, v2

    const-wide v4, 0x3fe9652bd3c36113L    # 0.7936

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TreasuryModifier(I)F

    move-result v1

    mul-float v0, v0, v1

    const v1, 0x3f2ccccd    # 0.675f

    const v2, 0x3ea66666    # 0.325f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    mul-float v0, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getModifier_IncomeTaxation()F

    move-result v2

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    const v2, -0x41d62e0a    # -0.16584f

    add-float/2addr v1, v2

    const v2, 0x3ebc2628

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result p1

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    mul-float v0, v0, v1

    const p1, 0x3f133333    # 0.575f

    const v1, 0x3fc00000    # 1.5f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTaxationLevel()F

    move-result p2

    mul-float p2, p2, v1

    add-float/2addr p2, p1

    mul-float v0, v0, p2

    mul-float v0, v0, p3

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v0, v0, p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result p1

    if-eqz p1, :cond_occupy_tax_done

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    :cond_occupy_tax_done
    return v0
.end method

.method protected final getProvince_EmploymentPopulation(I)I
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v2

    const v3, 0x3e30a3d7    # 0.1725f

    mul-float v2, v2, v3

    const v3, 0x3fe33333    # 1.775f

    add-float/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result p1

    const v3, 0x3dbd70a4    # 0.0925f

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected final getProvince_UnemploymentPopulation(I)I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvince_EmploymentPopulation(I)I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected final getResearchSpendings(II)F
    .locals 1

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->researchSpendings(II)F

    move-result p1

    return p1
.end method

.method protected final getUnemploymentPopulation(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvince_UnemploymentPopulation(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getVassalizationMoney(I)F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getVassal_Tribute(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    return v0
.end method

.method protected final getWarReparationsMoney(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result p1

    int-to-float p1, p1

    const v0, 0x3fe33333    # 1.775f

    mul-float p1, p1, v0

    return p1
.end method

.method protected final runCommerce()V
    .locals 1

    const/4 p0, 0x1

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runCommerce()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final runCountNumOfProvince()V
    .locals 1

    const/4 p0, 0x1

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countNumOfProvinces()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected taxIncome_Modifier(I)F
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result p1

    const v0, 0x3f833333    # 1.025f

    const v1, 0x3faccccd    # 1.35f

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_4

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    const p1, 0x3f666666    # 0.9f

    return p1

    :cond_1
    const p1, 0x3f733333    # 0.95f

    return p1

    :cond_2
    const p1, 0x3f79999a    # 0.975f

    return v1

    :cond_3
    const/high16 p1, 0x3fc00000    # 1.5f

    return p1

    :cond_4
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    return v1

    :cond_5
    const p1, 0x40400000    # 3.0f

    return p1

    :cond_6
    const p1, 0x3fc00000    # 1.5f

    return p1

    :cond_7
    const p1, 0x3faccccd    # 1.35f

    return v1

    :cond_8
    const p1, 0x3f933333    # 1.15f

    return p1
.end method

.method protected final updateCities()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->updateCities(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final updateCities(I)V
    .locals 11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v4, v6, :cond_3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v7

    if-gtz v7, :cond_1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v6

    if-ge v5, v6, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_3
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v4, v6, :cond_6

    const/4 v6, 0x0

    :goto_4
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v7

    if-ge v6, v7, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v7

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v8

    if-eq v7, v8, :cond_4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v8

    invoke-virtual {p0, v5, v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getLevelOfCity(III)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_9

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v8, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_6
    if-ge v5, v6, :cond_8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v9

    if-ge v8, v9, :cond_7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v7

    move v8, v7

    move v7, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final updateCivRecruitableArmy(I)V
    .locals 7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithMoreRecruitableArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v4, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRecruitableArmyPoints()I

    move-result p0

    if-le p0, v4, :cond_1

    move v4, p0

    move v5, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithMoreRecruitableArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final updateCivsNumOfProvinceWithoutOccupied()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countNumOfProvinces_WithoutOccupied()I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateCivs_ChangeGoverment()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateChangeGoverment()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateCivs_ManPower()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateManPowerIncreasing()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateCivs_Money()V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "updateCivs_Money 0000"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance_UpdateBudget_Prepare(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "updateCivs_Money 11111"

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalanceLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateLoansNextTurn()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "updateCivs_Money END"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final updateCivs_SupportRate()V
    .locals 6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->updateCivsNumOfProvinceWithoutOccupied()V

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvincesWithoutOccupied()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSupport_Rate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateInflationPeakValue()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->INFLATION_PEAK_VALUE:I

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    move v2, v1

    int-to-float v2, v2

    if-lez v1, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->PROVINCE_NUM_MAX:I

    int-to-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->PROVINCE_NUM_MAX:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->INFLATION_PEAK_VALUE:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->INFLATION_PEAK_VALUE:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->DEV_MAX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fAverageDevelopment:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->DEV_MAX:F

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->TECH_MAX:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->TECH_MAX:F

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->LEAGUE_BUDGET:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->adminInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->LEAGUE_BUDGET:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPowerIncreasing()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    sput v3, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->LEAGUE_MANPOWER_PERTURN:F

    int-to-float v6, v6

    div-float/2addr v5, v6

    sput v5, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->AVERAGE_MANPOWER_PERTURN:F

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->adminInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->LEAGUE_BUDGET:F

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getInflationPerc(I)F

    move-result v1

    const v2, 0x3ba0902e    # 0.0049f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_HighInflation;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method protected final updatePlayableProvinces()V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    add-int/2addr v4, v3

    iput v4, v2, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/AI;->updateMinRivals()V

    return-void
.end method

.method protected final updateProvinceStability()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceStability()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_3
    if-ltz v2, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAssimilateOrganized(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setStability(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected final updateSpendingsOfCiv(II)V
    .locals 7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    const-wide/16 v2, -0x1f4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Research(F)V

    :cond_0
    if-gtz p2, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Goods(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Research(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Investments(F)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitarySpendings(II)I

    move-result p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Goods()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p2

    const/16 v2, 0xc8

    if-le v0, v2, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    rsub-int v3, p2, 0xc8

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Goods(F)V

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Goods()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v0, v3

    if-le v0, v2, :cond_5

    if-le p2, v2, :cond_3

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Research(F)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Investments(F)V

    return-void

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v0, v3

    add-int/2addr v0, p2

    sub-int/2addr v0, v2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result v3

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Research(F)V

    int-to-float p2, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result v2

    mul-float v2, v2, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result p1

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Investments(F)V

    goto :goto_0

    :cond_4
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Investments()F

    move-result p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    sub-int/2addr v0, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Investments(F)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSpendings_Research()F

    move-result p1

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSpendings_Research(F)V

    :cond_5
    :goto_0
    return-void
.end method
