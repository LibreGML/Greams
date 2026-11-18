.class Lage/of/civilizations2/jakowski/lukasz/Game_Ages;
.super Ljava/lang/Object;
.source "Game_Ages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;
    }
.end annotation


# instance fields
.field private iAgesSize:I

.field private lAges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Age;",
            ">;"
        }
    .end annotation
.end field

.field private sBC:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->loadAges()V

    return-void
.end method


# virtual methods
.method protected final getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    return-object v0
.end method

.method protected final getAgeOfYear(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v1

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v1

    if-lt v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method protected final getAge_AdministrationCost_Distance(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    return v0
.end method

.method protected final getAge_AssimilateRate(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->AGE_ASSIMILATE_RATE:F

    return v0
.end method

.method protected final getAge_CommerceRange(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->COMMERCE_RANGE:F

    return v0
.end method

.method protected final getAge_ControlRange(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->CONTROL_RANGE:F

    return v0
.end method

.method protected final getAge_DevelopmentLevel_Increase(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    return v0
.end method

.method protected final getAge_DiplomacyRange(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_RANGE:F

    return v0
.end method

.method protected final getAge_DiseaseChance(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    return v0
.end method

.method protected final getAge_DistanceDiplomacy(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    int-to-float v0, v0

    return v0
.end method

.method protected final getAge_Economy_GrowthRate(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEconomyGrowthRate()F

    move-result v0

    return v0
.end method

.method protected final getAge_FogOfWarDiscovery_MetProvinces(I)F
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    return v0
.end method

.method protected final getAge_IncomeModifier(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_MODIFIER:F

    return v0
.end method

.method protected final getAge_IncomeProduction_Base(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    return v0
.end method

.method protected final getAge_IncomeProduction_PerDevelopment(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    return v0
.end method

.method protected final getAge_IncomeTaxation_Base(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    return v0
.end method

.method protected final getAge_IncomeTaxation_PerTechnology(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    return v0
.end method

.method protected final getAge_MaxPopulation(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->MAX_POPULATION:I

    return v0
.end method

.method protected final getAge_MilitaryUpkeep(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    return v0
.end method

.method protected final getAge_MovementPointsModifier(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    return v0
.end method

.method protected final getAge_Population_GrowthRate(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getPopulationGrowthRate()F

    move-result v0

    return v0
.end method

.method protected final getAge_RevolutionaryRiskModifier(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    return v0
.end method

.method protected final getAge_StartEconomy(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_ECONOMY:I

    return v0
.end method

.method protected final getAge_StartPopulation(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_POPULATION:I

    return v0
.end method

.method protected final getAge_StartingDevelopment(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    return v0
.end method

.method protected final getAge_StartingDiplomacyPoints(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    return v0
.end method

.method protected final getAge_StartingMovementPoints(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    return v0
.end method

.method protected final getAge_TechCost(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_COST:I

    return v0
.end method

.method protected final getAge_TechMax(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_MAX:I

    return v0
.end method

.method protected final getAge_TechStandard(I)I
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_STANDARD:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v2, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit16 v2, v2, 0x5b5

    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    sub-int/2addr v3, v2

    div-int/lit8 v2, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit16 v2, v2, 0x5b5

    mul-int/lit16 v3, v3, 0x16d

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_STANDARD:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    add-int/2addr v0, v3

    return v0
.end method

.method protected final getAge_TreasuryModifier(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    return v0
.end method

.method protected final getAge_TreasuryModifier_Administration(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    return v0
.end method

.method protected final getAge_TreasuryModifier_MilitaryUpkeep(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    return v0
.end method

.method protected final getAge_TreasuryModifier_Production(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    return v0
.end method

.method protected final getAge_TurnDays(I)I
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final getAgesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->iAgesSize:I

    return v0
.end method

.method protected final getBC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->sBC:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRebels_Army(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->REBELS_ARMY:I

    return v0
.end method

.method protected final getWar_Score_Rate(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Age;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Age;->WAR_SCORE_RATE:I

    return v0
.end method

.method protected final getYear(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getBC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final loadAges()V
    .locals 99

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "game/Ages.json"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v34

    new-instance v37, Lcom/badlogic/gdx/utils/Json;

    invoke-direct/range {v37 .. v37}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;

    const-string v3, "Age"

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v31, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;

    invoke-direct/range {v31 .. v31}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;-><init>()V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;

    move-object/from16 v0, v31

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$ConfigAgesData;->Age:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v90

    :goto_0
    invoke-interface/range {v90 .. v90}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v90 .. v90}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    move-object/from16 v91, v0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    move-object/from16 v0, v38

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->Name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->AGE_BeginningYear:I

    move-object/from16 v0, v38

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->AGE_EndYear:I

    move-object/from16 v0, v38

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->POPULATION_GROWTH:F

    move-object/from16 v0, v38

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->ECONOMY_GROWTH:F

    move-object/from16 v0, v38

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    move-object/from16 v0, v38

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->DEVELOPMENT_LEVEL_INCREASE:F

    move-object/from16 v0, v38

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->INCOME_TAXATION_MODIFIER:F

    move-object/from16 v0, v38

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->INCOME_PRODUCTION_MODIFIER:F

    move-object/from16 v0, v38

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->EXPENSES_ADMINSTRATION_MODIFIER:F

    move-object/from16 v0, v38

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    move-object/from16 v0, v38

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->BASE_MOVEMENT_POINTS:I

    move-object/from16 v0, v38

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->MOVEMENT_POINTS_MODIFIER:F

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->BASE_DIPLOMACY_POINTS:I

    move/from16 v16, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->EXPENSES_ADMINSTRATION_DISTANCE:F

    move/from16 v17, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    move/from16 v18, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->BASE_INCOME_TAXATION:F

    move/from16 v19, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    move/from16 v20, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->BASE_MILITARY_UPKEEP:F

    move/from16 v21, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->GAME_STARTING_DEVELOPMENT:F

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->GAME_DAYS_PER_TURN:I

    move/from16 v23, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->BASE_INCOME_PRODUCTION:F

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    move/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->REVOLUTIONARY_RISK_MODIFIER:F

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->DISEASE_CHANCE:F

    move/from16 v27, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->COLONIZATION_COST:F

    move/from16 v28, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->COLONIZE_COST_MOVEMENT_POINTS:I

    move/from16 v29, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->COLONIZE_COST_DIPLOMACY_POINTS:I

    move/from16 v30, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->REBELS_ARMY:I

    move/from16 v31, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->WAR_SCORE_RATE:I

    move/from16 v32, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->MAX_POPULATION:I

    move/from16 v33, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->START_POPULATION:I

    move/from16 v34, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->TECH_STANDARD:I

    move/from16 v35, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->TECH_MAX:I

    move/from16 v36, v0

    move-object/from16 v0, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->TECH_COST:I

    move/from16 v37, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v38

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->START_ECONOMY:I

    move/from16 v38, v0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->INCOME_MODIFIER:F

    move/from16 v39, v0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->AGE_ASSIMILATE_RATE:F

    move/from16 v40, v0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->DIPLOMACY_RANGE:F

    move/from16 v41, v0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->COMMERCE_RANGE:F

    move/from16 v42, v0

    iget v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Ages$Data_Ages;->CONTROL_RANGE:F

    move/from16 v43, v0

    invoke-direct/range {v2 .. v43}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFFFFFFFFIFIFIFFFFIFFFFFIIIIIIIIIIFFFFF)V

    move-object/from16 v0, v91

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v33

    invoke-static/range {v33 .. v33}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofCivilizations"

    const/16 v4, -0x1388

    const/16 v5, -0x12d

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofExpansion"

    const/16 v4, -0x12c

    const/16 v5, 0x1f3

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofDarkness"

    const/16 v4, 0x1f4

    const/16 v5, 0x429

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofFeudalism"

    const/16 v4, 0x42a

    const/16 v5, 0x5d3

    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofDiscovery"

    const/16 v4, 0x5d4

    const/16 v5, 0x6d5

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofRevolution"

    const/16 v4, 0x6d6

    const/16 v5, 0x72b

    const v6, 0x3f0ccccd    # 0.55f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofIndustrialisation"

    const/16 v4, 0x72c

    const/16 v5, 0x744

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofImperialism"

    const/16 v4, 0x745

    const/16 v5, 0x77e

    const v6, 0x3f266666    # 0.65f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofConflict"

    const/16 v4, 0x77f

    const/16 v5, 0x79a

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofBrinkmanship"

    const/16 v4, 0x79b

    const/16 v5, 0x7c6

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofInformation"

    const/16 v4, 0x7c7

    const/16 v5, 0x801

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3e6147ae    # 0.22f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    const-string v3, "AgeofTomorrow"

    const/16 v4, 0x802

    const/16 v5, 0x1388

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Age;-><init>(Ljava/lang/String;IIFF)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "BeforeChrist"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->sBC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->iAgesSize:I

    const/16 v36, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->iAgesSize:I

    move/from16 v0, v36

    if-ge v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    move/from16 v0, v36

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Age;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->lAges:Ljava/util/List;

    move/from16 v0, v36

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Age;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Age;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Age;->setName(Ljava/lang/String;)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final updateLanguage()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->loadAges()V

    return-void
.end method
