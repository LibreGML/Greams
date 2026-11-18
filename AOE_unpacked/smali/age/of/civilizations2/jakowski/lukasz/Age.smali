.class Lage/of/civilizations2/jakowski/lukasz/Age;
.super Ljava/lang/Object;
.source "Age.java"


# instance fields
.field protected AGE_ASSIMILATE_RATE:F

.field protected BASE_DIPLOMACY_POINTS:I

.field protected BASE_INCOME_PRODUCTION:F

.field protected BASE_INCOME_TAXATION:F

.field protected BASE_MILITARY_UPKEEP:F

.field protected BASE_MOVEMENT_POINTS:I

.field protected COLONIZE_COST_DIPLOMACY_POINTS:I

.field protected COLONIZE_COST_GOLD_PERC:F

.field protected COLONIZE_COST_MOVEMENT_POINTS:I

.field protected COMMERCE_RANGE:F

.field protected CONTROL_RANGE:F

.field protected DEVELOPMENT_LEVEL_INCREASE:F

.field protected DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

.field protected DIPLOMACY_RANGE:F

.field protected DISEASE_CHANCE:F

.field protected EXPENSES_ADMINSTRATION_DISTANCE:F

.field protected EXPENSES_ADMINSTRATION_MODIFIER:F

.field protected EXPENSES_MILITARY_UPKEEP_MODIFIER:F

.field protected FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

.field protected GAME_DAYS_PER_TURN:I

.field protected GAME_STARTING_DEVELOPMENT:F

.field protected INCOME_MODIFIER:F

.field protected INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

.field protected INCOME_PRODUCTION_MODIFIER:F

.field protected INCOME_TAXATION_MODIFIER:F

.field protected INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

.field protected MAX_POPULATION:I

.field protected MOVEMENT_POINTS_MODIFIER:F

.field protected REBELS_ARMY:I

.field protected REVOLUTIONARY_RISK_MODIFIER:F

.field protected START_ECONOMY:I

.field protected START_POPULATION:I

.field protected TECH_COST:I

.field protected TECH_MAX:I

.field protected TECH_STANDARD:I

.field protected WAR_SCORE_RATE:I

.field private fEconomyGrowthRate:F

.field private fPopulationGrowthRate:F

.field private iAgeBeginningYear:I

.field private iAgeEndYear:I

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIFF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    const/16 v0, 0x14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    const v0, 0x3b988095    # 0.004654f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_RANGE:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COMMERCE_RANGE:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->CONTROL_RANGE:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->AGE_ASSIMILATE_RATE:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    const/16 v0, 0xa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    const/16 v0, 0x15e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    const v0, 0x39d84a2e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    const v0, 0x3ddf9e7c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    const v0, 0x3ee2617c    # 0.44215f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    const/16 v0, 0x22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    const v0, 0x3c82b1f7    # 0.015954f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    const v0, 0x3aca95bb    # 0.0015456f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_POPULATION:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_ECONOMY:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MAX_POPULATION:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_STANDARD:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_MAX:I

    const/16 v0, 0x10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_COST:I

    const/16 v0, 0xe

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    const v0, 0x3e2b851f    # 0.1675f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIFFFFFFFFIFIFIFFFFIFFFFFIIIIIIIIIIFFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    const/16 v1, 0x14

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    const v1, 0x3b988095    # 0.004654f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->AGE_ASSIMILATE_RATE:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    const/high16 v1, 0x40600000    # 3.5f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    const/16 v1, 0x15e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    const v1, 0x39d84a2e

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    const v1, 0x3ddf9e7c

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    const v1, 0x3ee2617c    # 0.44215f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MAX_POPULATION:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_STANDARD:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_MAX:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_COST:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_POPULATION:I

    const/16 v1, 0x22

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_ECONOMY:I

    const v1, 0x3c82b1f7    # 0.015954f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    const v1, 0x3aca95bb    # 0.0015456f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    const/16 v1, 0x10

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    const/16 v1, 0xe

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    const v1, 0x3e2b851f    # 0.1675f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->FOG_OF_WAR_DISCOVERY_MET_PROVINCES:F

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DEVELOPMENT_LEVEL_INCREASE:F

    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_MODIFIER:F

    iput p9, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTION_MODIFIER:F

    iput p10, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_MODIFIER:F

    iput p11, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_MILITARY_UPKEEP_MODIFIER:F

    iput p12, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MOVEMENT_POINTS:I

    iput p13, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MOVEMENT_POINTS_MODIFIER:F

    move/from16 v0, p14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_DIPLOMACY_POINTS:I

    move/from16 v0, p15

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->EXPENSES_ADMINSTRATION_DISTANCE:F

    move/from16 v0, p16

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_ALLIANCE_PROPOSAL_NAGATIVE_DISTANCE:I

    move/from16 v0, p17

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_TAXATION:F

    move/from16 v0, p18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_TAXATION_PER_TECHNOLOGY_MODIFIER:F

    move/from16 v0, p19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_MILITARY_UPKEEP:F

    move/from16 v0, p20

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_STARTING_DEVELOPMENT:F

    move/from16 v0, p21

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->GAME_DAYS_PER_TURN:I

    move/from16 v0, p22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->BASE_INCOME_PRODUCTION:F

    move/from16 v0, p23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_PRODUCTIONN_PER_DEVELOPMENT_MODIFIER:F

    move/from16 v0, p24

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->REVOLUTIONARY_RISK_MODIFIER:F

    move/from16 v0, p26

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_GOLD_PERC:F

    move/from16 v0, p27

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_MOVEMENT_POINTS:I

    move/from16 v0, p28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COLONIZE_COST_DIPLOMACY_POINTS:I

    move/from16 v0, p29

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->REBELS_ARMY:I

    move/from16 v0, p30

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->WAR_SCORE_RATE:I

    move/from16 v0, p31

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->MAX_POPULATION:I

    move/from16 v0, p32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_POPULATION:I

    move/from16 v0, p33

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_STANDARD:I

    move/from16 v0, p34

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_MAX:I

    move/from16 v0, p35

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->TECH_COST:I

    move/from16 v0, p36

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->START_ECONOMY:I

    move/from16 v0, p37

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->INCOME_MODIFIER:F

    move/from16 v0, p38

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->AGE_ASSIMILATE_RATE:F

    move/from16 v0, p39

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DIPLOMACY_RANGE:F

    move/from16 v0, p40

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->COMMERCE_RANGE:F

    move/from16 v0, p41

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->CONTROL_RANGE:F

    move/from16 v0, p25

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->DISEASE_CHANCE:F

    return-void
.end method


# virtual methods
.method protected final getBeginningYear()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeBeginningYear:I

    return v0
.end method

.method protected final getEconomyGrowthRate()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    return v0
.end method

.method protected final getEndYear()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->iAgeEndYear:I

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPopulationGrowthRate()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    return v0
.end method

.method protected final setEconomyGrowthRate(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fEconomyGrowthRate:F

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->sName:Ljava/lang/String;

    return-void
.end method

.method protected final setPopulationGrowthRate(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Age;->fPopulationGrowthRate:F

    return-void
.end method
