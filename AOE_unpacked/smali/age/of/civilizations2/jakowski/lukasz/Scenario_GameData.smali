.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;
.super Ljava/lang/Object;
.source "Scenario_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

.field private COLONIZATION:Z

.field protected COLONIZATION_TECH_LEVEL:F

.field protected ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

.field private iDiseasesDeathRate_Modifier:F

.field private iEconomyGrowthRate_Modifier:F

.field private iNeutralArmy:I

.field private iPopulationGrowthRate_Modifier:F

.field private iStartingArmyInCapitals:I

.field private iStartingEconomy:I

.field private iStartingMoney:I

.field private iStartingPopulation:I

.field protected isPartOfCampaign:Z

.field protected lCampaingCivsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lCivsCapitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lHappiness:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lStartingMoney:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTechnologyByContinents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;",
            ">;>;"
        }
    .end annotation
.end field

.field private lTechnologyLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->isPartOfCampaign:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addCampaingCivsIDs(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCampaingCivsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildData()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getPercentage()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v2, :cond_1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getContinentID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_TechnologyBContinents:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->getPercentage()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_NeutralArmy()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_DiseasesDeathRate_Modifier()F

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getActivePalletID()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getActivePalletID()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->getPalletTag(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    return-void
.end method

.method protected final getActivePalletOfColors_TAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected final getCivCapital(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getCivSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getCivTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getColonization()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    return v0
.end method

.method protected final getDiseasesDeathRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iDiseasesDeathRate_Modifier:F

    return v0
.end method

.method protected final getEconomyGrowthRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iEconomyGrowthRate_Modifier:F

    return v0
.end method

.method protected final getHappiness(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lHappiness:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getNeutralArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    return v0
.end method

.method protected final getPopulationGrowthRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iPopulationGrowthRate_Modifier:F

    return v0
.end method

.method protected final getStartingArmyInCapitals()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    return v0
.end method

.method protected final getStartingEconomy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    return v0
.end method

.method protected final getStartingMoney()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    return v0
.end method

.method protected final getStartingMoneyCiv(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lStartingMoney:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getStartingPopulation()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    return v0
.end method

.method protected final getTechnologyByContinents(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyByContinents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected final getTechnologyLevel(I)F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->lTechnologyLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected final setActivePalletOfColors_TAG(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ACTIVE_PALLET_OF_COLORS_TAG:Ljava/lang/String;

    return-void
.end method

.method protected final setColonization(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION:Z

    return-void
.end method

.method protected final setNeutralArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iNeutralArmy:I

    return-void
.end method

.method protected final setStartingArmyInCapitals(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingArmyInCapitals:I

    return-void
.end method

.method protected final setStartingEconomy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingEconomy:I

    return-void
.end method

.method protected final setStartingMoney(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingMoney:I

    return-void
.end method

.method protected final setStartingPopulation(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->iStartingPopulation:I

    return-void
.end method
