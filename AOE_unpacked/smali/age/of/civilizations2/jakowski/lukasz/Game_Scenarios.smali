.class Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;
.super Ljava/lang/Object;
.source "Game_Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;
    }
.end annotation


# static fields
.field protected static final PERC_OF_POPULATION_REQUIRED_TO_GET_A_CORE:F = 0.18f

.field protected static SCENARIOS_SIZE:I


# instance fields
.field private iScenario_DiseasesDeathRate_Modifier:F

.field private iScenario_EconomyGrowthRate_Modifier:F

.field private iScenario_NeutralArmy:I

.field private iScenario_PopulationGrowthRate_Modifier:F

.field private iScenario_StartingArmyInCapitals:I

.field private iScenario_StartingEconomy:I

.field private iScenario_StartingMoney:I

.field private iScenario_StartingPopulation:I

.field private isInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Age:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_CivNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Month:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_TagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Wikis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lScenarios_Year:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected sActiveScenarioTag:Ljava/lang/String;

.field private sScenario_ActivePallet_TAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    const/16 v0, 0x2ee

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    const/16 v0, 0x96

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    const v0, 0xfde8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    const/16 v0, 0x7d00

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    const/16 v0, 0x1194

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final buildDiplomacy()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildAlliances()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildWars()V

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

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildDiplomacy(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final buildProvincePopulationAndEconomy(ZZ)V
    .locals 16

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->resetData()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadCoresData()V

    const/4 v3, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getProvincesSize()I

    move-result v6

    if-ge v3, v6, :cond_4

    :try_start_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v6

    if-gez v6, :cond_3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    :goto_3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    invoke-virtual {v7, v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_0
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    if-nez v3, :cond_5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    :cond_5
    const/4 v3, 0x0

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v6

    const/16 v7, 0xa

    if-ge v3, v6, :cond_18

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v6

    if-nez v6, :cond_17

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_StartingDevelopment(I)F

    move-result v8

    sub-float v8, v5, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v9

    if-eqz v9, :cond_6

    const v9, 0x3f43c256

    goto :goto_5

    :cond_6
    const v9, 0x3f131f71

    :goto_5
    mul-float v8, v8, v9

    mul-float v8, v8, v6

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_StartingDevelopment(I)F

    move-result v9

    mul-float v6, v6, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v9

    mul-float v6, v6, v9

    add-float/2addr v8, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    const/high16 v9, 0x42c80000    # 100.0f

    if-lez v6, :cond_7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    sub-int/2addr v6, v1

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v10

    invoke-static {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v6

    int-to-float v6, v6

    mul-float v8, v8, v6

    div-float/2addr v8, v9

    :cond_7
    const/high16 v6, 0x3f600000    # 0.875f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x7d0

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x461c4000    # 10000.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v12

    invoke-virtual {v6, v12}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBaseDevelopmentModifier(I)F

    move-result v6

    add-float/2addr v10, v6

    mul-float v8, v8, v10

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevelopmentLevel(F)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v10, v10

    const v12, 0x3e3b22d1    # 0.18275f

    mul-float v10, v10, v12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v13

    add-float/2addr v13, v5

    mul-float v12, v12, v13

    mul-float v10, v10, v12

    float-to-int v10, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v12

    int-to-float v12, v12

    const/16 v13, 0x19

    invoke-virtual {v0, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    mul-float v12, v12, v13

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v14

    add-float/2addr v14, v5

    mul-float v13, v13, v14

    mul-float v12, v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/2addr v12, v1

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    add-int/2addr v10, v12

    invoke-virtual {v6, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3d581062    # 0.05275f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3ac49ba6    # 0.0015f

    mul-float v12, v12, v13

    add-float/2addr v12, v10

    mul-float v8, v8, v12

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v12

    add-float/2addr v12, v5

    mul-float v10, v10, v12

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    mul-float v10, v10, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v9

    add-float/2addr v9, v5

    mul-float v7, v7, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v9

    mul-float v7, v7, v9

    mul-float v10, v10, v7

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const v7, 0x3ef5c28f    # 0.48f

    const/16 v8, 0x960

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    add-float/2addr v8, v7

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    goto/16 :goto_e

    :cond_8
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v6

    const v8, 0x3e19999a    # 0.15f

    const v10, 0x3f59999a    # 0.85f

    const v12, 0x3f39999a    # 0.725f

    const v13, 0x3e8ccccd    # 0.275f

    if-lt v6, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v6

    int-to-float v6, v6

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v14

    if-eqz v14, :cond_9

    const v14, 0x3d947ae1    # 0.0725f

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    add-float/2addr v14, v10

    mul-float v6, v6, v14

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v10

    if-eqz v10, :cond_a

    const v10, 0x3e88f5c3    # 0.2675f

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_7

    :cond_a
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v10

    :goto_7
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v14

    add-float/2addr v14, v5

    mul-float v10, v10, v14

    mul-float v6, v6, v10

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v8

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v14

    add-float/2addr v14, v5

    mul-float v8, v8, v14

    mul-float v10, v10, v8

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    add-int/2addr v8, v1

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v14

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v8, :cond_c

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v8

    if-ne v8, v3, :cond_b

    const v7, 0x3ecccccd    # 0.4f

    goto :goto_8

    :cond_b
    const v7, 0x3e8ccccd    # 0.275f

    goto :goto_8

    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_8
    mul-float v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sub-int/2addr v7, v1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v8

    invoke-static {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v13

    div-float/2addr v7, v9

    add-float/2addr v7, v12

    mul-float v6, v6, v7

    float-to-int v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    const/4 v7, 0x0

    :goto_9
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v8

    if-ge v7, v8, :cond_d

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v10

    int-to-float v13, v6

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v15

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v14

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-virtual {v8, v10, v13}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_a
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_13

    if-ge v6, v1, :cond_13

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v7

    const v8, 0x3e3851ec    # 0.18f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->removeCore(I)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v15

    int-to-float v15, v15

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x3d4ccccd    # 0.05f

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    add-float/2addr v4, v10

    mul-float v15, v15, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v4

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v7

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v7

    add-float/2addr v7, v5

    mul-float v4, v4, v7

    mul-float v15, v15, v4

    float-to-int v4, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v15

    invoke-virtual {v10, v15}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v10

    add-float/2addr v10, v5

    mul-float v8, v8, v10

    mul-float v7, v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v7, :cond_12

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v7

    if-ne v7, v3, :cond_11

    const v7, 0x3ecccccd    # 0.4f

    goto :goto_c

    :cond_11
    const v7, 0x3e8ccccd    # 0.275f

    goto :goto_c

    :cond_12
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_c
    mul-float v4, v4, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sub-int/2addr v7, v1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v8

    invoke-static {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCreateScenario_TechnologyLevelsByContinents_Continent(II)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v13

    div-float/2addr v7, v9

    add-float/2addr v7, v12

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v6, v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    :cond_13
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v7

    const v8, 0x3f884178

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3d0f5c29    # 0.035f

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    mul-float v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v8

    add-float/2addr v8, v5

    mul-float v7, v7, v8

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v8

    sub-float v8, v5, v8

    mul-float v7, v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v13

    invoke-virtual {v10, v13}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getEconomyGrowth(I)F

    move-result v10

    add-float/2addr v10, v5

    mul-float v8, v8, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v10

    mul-float v8, v8, v10

    mul-float v7, v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v10, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v8, :cond_15

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v8

    if-ne v8, v3, :cond_14

    const v8, 0x3f733333    # 0.95f

    goto :goto_d

    :cond_14
    const v8, 0x3f39999a    # 0.725f

    goto :goto_d

    :cond_15
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_d
    mul-float v7, v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    :goto_e
    const/4 v4, 0x0

    :goto_f
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v4, v6, :cond_17

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3c0f3238    # 0.00874f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v12, 0x159

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_17
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_18
    if-nez p2, :cond_1d

    const/4 v0, 0x1

    :goto_10
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_1d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_1c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v3, :cond_1c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    if-ltz v3, :cond_1c

    const/4 v3, 0x0

    :goto_11
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_1b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_1a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v4, :cond_1a

    :cond_19
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_1b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_1d
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->updateCities()V

    return-void
.end method

.method protected final disableFillTheMap()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearProvinces_FillTheMap(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLandSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildCivilizationsRegions()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    return-void
.end method

.method protected final disposeScenarios()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    return-void
.end method

.method protected final editScenario(I)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setScenarioID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadScenario(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadCoresData_Editor()V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioName(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAuthor(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AUTHOR:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAge(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioWiki(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_WIKI:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioYear(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioMonth(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioDay(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    return-void
.end method

.method protected final enableFillTheMap()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearProvinces_FillTheMap(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "scenarios/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_PD"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivCapital(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCapitalProvinceID(I)V

    move v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addProvince_Just(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLandSize()I

    move-result v4

    if-ge v2, v4, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildCivilizationsRegions()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    return-void
.end method

.method protected final getNumOfCivs(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getScenarioAge(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getScenarioAuthor(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getScenarioDay(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getScenarioIsInternal(I)Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected final getScenarioMonth(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getScenarioName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getScenarioTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getScenarioWiki(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getScenarioYear(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getScenario_ActivePallet_TAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected final getScenario_DiseasesDeathRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    return v0
.end method

.method protected final getScenario_EconomyGrowthRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    return v0
.end method

.method protected final getScenario_NeutralArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    return v0
.end method

.method protected final getScenario_PopulationGrowthRate_Modifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    return v0
.end method

.method protected final getScenario_StartingArmyInCapitals()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    return v0
.end method

.method protected final getScenario_StartingEconomy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    return v0
.end method

.method protected final getScenario_StartingMoney()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    return v0
.end method

.method protected final getScenario_StartingPopulation()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    return v0
.end method

.method protected final loadArmiesData()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmies_NewGame(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_NeutralArmy()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(I)V

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(I)V

    goto :goto_1

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingArmyInCapitals()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "_A"

    const-string v3, "/"

    const-string v4, "scenarios/"

    const-string v5, "map/"

    if-eqz v1, :cond_4

    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;

    iget-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    :try_start_3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    if-lez v4, :cond_7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    if-lez v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-eq v4, v5, :cond_8

    :cond_7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    if-eq v4, v5, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getMilitaryAccess(II)I

    move-result v4

    if-lez v4, :cond_9

    :cond_8
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getCivID()I

    move-result v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Armies;->lArmies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->getArmy()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :catch_1
    :cond_a
    return-void
.end method

.method protected final loadCivilizations(Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "ran"

    const-string v2, "game/civilizations/"

    const/4 v3, 0x1

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioAge(I)I

    move-result v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "_PD"

    const-string v8, "scenarios/"

    const-string v9, "map/"

    const-string v10, "/"

    if-eqz v6, :cond_0

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    goto/16 :goto_0

    :cond_0
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingArmyInCapitals()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingArmyInCapitals(I)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getNeutralArmy()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_NeutralArmy(I)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingPopulation()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingPopulation(I)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingEconomy()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingEconomy(I)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingMoney(I)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getPopulationGrowthRate_Modifier()F

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_PopulationGrowthRate_Modifier(F)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getEconomyGrowthRate_Modifier()F

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_EconomyGrowthRate_Modifier(F)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getDiseasesDeathRate_Modifier()F

    move-result v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_DiseasesDeathRate_Modifier(F)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getActivePalletOfColors_TAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_ActivePallet_TAG(Ljava/lang/String;)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getColonization()Z

    move-result v8

    sput-boolean v8, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    iget-boolean v8, v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    sput-boolean v8, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->COLONIZATION_TECH_LEVEL:F

    sput v8, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    if-ge v8, v9, :cond_7

    :try_start_1
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v9

    goto/16 :goto_2

    :catch_0
    const v11, 0x3f466666    # 0.775f

    const/high16 v12, 0x437f0000    # 255.0f

    :try_start_2
    sget-object v13, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v12

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v12

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    invoke-direct {v14, v15, v5, v9, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v9, v13}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v15, v13}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    iget v15, v15, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v13, 0x3e666666    # 0.225f

    invoke-direct {v5, v9, v15, v11, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v5, v12

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_2

    :catch_1
    :try_start_3
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_2

    :catch_2
    :try_start_4
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v5

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    const v15, 0x3f466666    # 0.775f

    invoke-direct {v9, v11, v13, v14, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    iget v14, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v15, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v15, 0x3e666666    # 0.225f

    invoke-direct {v11, v13, v14, v5, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v12

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v5, v12

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_2

    :catch_3
    :try_start_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v3
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    const-string v5, "game/civilizations_editor/"

    if-eqz v3, :cond_1

    :try_start_6
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_4
    :try_start_7
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    :catch_5
    :try_start_8
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget v9, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v9, v9, v12

    float-to-int v9, v9

    iget v11, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-direct {v5, v1, v9, v11, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;-><init>(Ljava/lang/String;III)V

    move-object v3, v5

    :goto_2
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivTag(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v19

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v20

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v21

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivCapital(I)I

    move-result v22

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v17, v5

    move/from16 v23, v3

    invoke-direct/range {v17 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getTechnologyLevel(I)F

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getHappiness(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    const v5, -0xf423f

    if-eqz p1, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v11

    if-ne v5, v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v5

    :goto_3
    int-to-long v11, v5

    invoke-virtual {v9, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    goto :goto_5

    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v11

    if-ne v5, v11, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v5, :cond_4

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoney()I

    move-result v5

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getStartingMoneyCiv(I)I

    move-result v5

    :goto_4
    int-to-long v11, v5

    invoke-virtual {v9, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    :goto_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v5

    if-ltz v5, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    :cond_6
    move v8, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->initCreateScenario_TechnologyLevelsByContinents_Civ()V

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getCivSize()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData;->getTechnologyByContinents(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->addCreateScenario_TechnologyLevelsByContinents_Civ(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v5, :cond_9

    :try_start_9
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Province2;->getProvinceOwners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catch_6
    nop

    :cond_9
    if-nez p1, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    :goto_8
    if-ge v5, v3, :cond_b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v16, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_9
    if-eqz v16, :cond_f

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    :goto_a
    if-ge v7, v6, :cond_f

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_c
    :goto_b
    array-length v8, v3

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v9, v3, v8

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_b

    :cond_d
    aget-object v9, v3, v8

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    :try_start_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    invoke-virtual {v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    :try_start_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    :catch_8
    const-string v1, ""

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    :goto_c
    return-object v4
.end method

.method protected final loadCivilizationsChangeGoverment()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateNextElection_Start()V

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateNextReformation_Start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final loadCivilizationsLoadGame(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->updateAge(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    return-object v1
.end method

.method protected final loadCivilizationsManPower()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateStartingManPower()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final loadCivilizationsSupportRate()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateSupport_Rate_Start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final loadCivilizations_RandomGame()Ljava/util/List;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization;",
            ">;"
        }
    .end annotation

    new-instance v39, Ljava/util/Random;

    invoke-direct/range {v39 .. v39}, Ljava/util/Random;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getNeutralCivilization()Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACMENT:Z

    if-eqz v4, :cond_13

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v52

    const-string v4, ";"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v50, 0x0

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v50

    :goto_0
    invoke-virtual/range {v50 .. v50}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v53

    const-string v4, ";"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_20

    move-result-object v44

    :goto_1
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v24, v0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v5, v43, v22

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v43, v22

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_20

    move-result-object v50

    goto :goto_0

    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v24, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v5, v44, v22

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v43, v22

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_5
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v35

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    const/16 v35, 0x0

    :goto_6
    :try_start_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getCivilizationsSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v35

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    :catch_0
    move-exception v4

    :cond_7
    const/16 v54, 0x0

    const/4 v11, 0x1

    const/16 v22, 0x0

    :try_start_3
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v24

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v36

    const/16 v33, 0x0

    move/from16 v34, v33

    :goto_8
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v4, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    if-nez v4, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v4, :cond_9

    :cond_8
    add-int/lit8 v33, v34, 0x1

    const/16 v4, 0x64

    move/from16 v0, v34

    if-ge v0, v4, :cond_a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v36

    move/from16 v34, v33

    goto :goto_8

    :cond_9
    move/from16 v33, v34

    :cond_a
    const/4 v11, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    add-int/lit8 v25, v22, 0x1

    :goto_9
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v11, 0x0

    :cond_b
    if-eqz v11, :cond_d

    add-int/lit8 v25, v22, -0x1

    :goto_a
    if-ltz v25, :cond_c

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v11, 0x0

    :cond_c
    if-eqz v11, :cond_d

    move-object/from16 v0, v30

    move/from16 v1, v22

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1e

    :cond_d
    :try_start_4
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1e

    :goto_b
    const/4 v9, 0x0

    :try_start_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v4

    if-ltz v4, :cond_12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v9

    :goto_c
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    add-int/lit8 v10, v22, 0x1

    invoke-direct/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TechStandard(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v5, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    if-ltz v9, :cond_e

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    :cond_e
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1e

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_9

    :cond_10
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_a

    :catch_1
    move-exception v13

    :try_start_6
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1e

    goto/16 :goto_b

    :catch_2
    move-exception v16

    :try_start_7
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1e

    goto/16 :goto_b

    :catch_3
    move-exception v13

    :try_start_8
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1e

    goto/16 :goto_b

    :catch_4
    move-exception v14

    :try_start_9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z
    :try_end_9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1e

    move-result v4

    if-eqz v4, :cond_11

    :try_start_a
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1e

    goto/16 :goto_b

    :catch_5
    move-exception v15

    :try_start_b
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    goto/16 :goto_b

    :cond_11
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1e

    goto/16 :goto_b

    :catch_6
    move-exception v17

    :try_start_c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v45

    new-instance v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    const-string v4, "ran"

    move-object/from16 v0, v45

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v45

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v45

    iget v7, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;-><init>(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1e

    goto/16 :goto_b

    :cond_12
    const/4 v9, -0x1

    goto/16 :goto_c

    :cond_13
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v52

    const-string v4, ";"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v50, 0x0

    :try_start_d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v50

    :goto_d
    invoke-virtual/range {v50 .. v50}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v53

    const-string v4, ";"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d .. :try_end_d} :catch_1d

    move-result-object v44

    :goto_e
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v24, v0

    :goto_f
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v5, v43, v22

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    aget-object v4, v43, v22

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_15
    :try_start_e
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e .. :try_end_e} :catch_1d

    move-result-object v50

    goto :goto_d

    :cond_16
    const/16 v22, 0x0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v24, v0

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    aget-object v5, v44, v22

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->isTagTaken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    aget-object v4, v43, v22

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    :cond_18
    const/16 v22, 0x0

    :goto_11
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_1b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    :cond_1a
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v4

    if-ltz v4, :cond_19

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v35

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_1b
    const/16 v38, 0x0

    :goto_13
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_1e

    :try_start_f
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b

    :goto_14
    :try_start_10
    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget v9, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->iCapitalID:I

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    add-int/lit8 v10, v38, 0x1

    invoke-direct/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v38, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    add-int/lit8 v5, v38, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    add-int/lit8 v4, v38, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    mul-int/lit8 v5, v5, 0x5

    const/16 v6, 0x19

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    const/16 v6, 0xa

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    add-int/lit8 v4, v38, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v5, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    if-ltz v9, :cond_1c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v4, v38, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    add-int/lit8 v5, v38, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    :cond_1c
    add-int/lit8 v4, v38, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    :goto_15
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_13

    :catch_7
    move-exception v13

    :try_start_11
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_11
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b

    goto/16 :goto_14

    :catch_8
    move-exception v16

    :try_start_12
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_12
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b

    goto/16 :goto_14

    :catch_9
    move-exception v13

    :try_start_13
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_13
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_14

    :catch_a
    move-exception v14

    :try_start_14
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z
    :try_end_14
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1b

    move-result v4

    if-eqz v4, :cond_1d

    :try_start_15
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_15
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1b

    goto/16 :goto_14

    :catch_b
    move-exception v15

    :try_start_16
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    goto/16 :goto_14

    :cond_1d
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_16
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b

    goto/16 :goto_14

    :catch_c
    move-exception v17

    :try_start_17
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v45

    new-instance v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    const-string v4, "ran"

    move-object/from16 v0, v45

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v45

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v45

    iget v7, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;-><init>(Ljava/lang/String;III)V
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1b

    goto/16 :goto_14

    :cond_1e
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_16
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_20

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_1f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    :cond_20
    const/16 v22, 0x0

    :goto_17
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_22

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v4

    if-ltz v4, :cond_21

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    :cond_22
    const/16 v22, 0x0

    :goto_18
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_24

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_23

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_23

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v4

    if-nez v4, :cond_23

    :try_start_18
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "suggested_owners/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_18 .. :try_end_18} :catch_d

    :cond_23
    :goto_19
    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    :catch_d
    move-exception v16

    goto :goto_19

    :cond_24
    :try_start_19
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v5

    sub-int v18, v4, v5

    const/16 v22, 0x0

    const/16 v35, 0x0

    :goto_1a
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getCivilizationsSize()I

    move-result v4

    add-int v4, v4, v18

    move/from16 v0, v22

    if-ge v0, v4, :cond_2f

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_1a

    move-result v4

    if-lez v4, :cond_2f

    const/16 v46, 0x0

    const/16 v23, 0x0

    :cond_25
    :goto_1b
    :try_start_1a
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v42

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v46

    add-int/lit8 v23, v23, 0x1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v4

    if-nez v4, :cond_33

    const/16 v21, 0x1

    const/16 v38, 0x0

    :goto_1c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_26

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital_Just()Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v21, 0x0

    :cond_26
    if-nez v21, :cond_27

    const/16 v4, 0x12

    move/from16 v0, v23

    if-le v0, v4, :cond_25

    :cond_27
    const/16 v21, 0x0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/StackOverflowError; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_1a

    :try_start_1b
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "suggested_owners/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v40

    const-string v4, ";"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    const/16 v25, 0x0

    :goto_1d
    move-object/from16 v0, v41

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_2b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    aget-object v5, v41, v25

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v32

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    if-ltz v4, :cond_29

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    aget-object v5, v41, v25

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/lit8 v25, v25, 0x2

    goto :goto_1d

    :cond_28
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1c

    :cond_29
    aget-object v4, v41, v25

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1a

    goto :goto_1e

    :catch_e
    move-exception v16

    :try_start_1c
    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1a

    goto/16 :goto_1b

    :catch_f
    move-exception v16

    :try_start_1d
    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_1a

    :cond_2a
    :goto_1f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1a

    :cond_2b
    :try_start_1e
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    :goto_20
    if-ltz v25, :cond_2e

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    :goto_21
    if-ltz v26, :cond_2c

    move/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;->sTag:Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v25, v25, -0x1

    goto :goto_20

    :cond_2d
    add-int/lit8 v26, v26, -0x1

    goto :goto_21

    :cond_2e
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_30

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_1a

    goto/16 :goto_1b

    :catch_10
    move-exception v16

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_22
    return-object v27

    :cond_30
    const/16 v21, 0x1

    if-eqz v21, :cond_2a

    :try_start_1f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_1f} :catch_11
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_1a

    move-result v37

    :try_start_20
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_20
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_20 .. :try_end_20} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_20 .. :try_end_20} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1a

    :goto_23
    :try_start_21
    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios$RandomGame_AoCMode;-><init>(Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;Ljava/lang/String;I)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v10

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v8

    invoke-direct/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    mul-int/lit8 v5, v5, 0x5

    const/16 v6, 0x19

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    const/16 v6, 0xa

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    const/16 v5, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness(I)V

    if-ltz v9, :cond_31

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID_LoadScenario(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    :cond_31
    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingMoney()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_1a

    goto/16 :goto_1f

    :catch_11
    move-exception v13

    :try_start_22
    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/StackOverflowError; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_1a

    goto/16 :goto_1b

    :catch_12
    move-exception v16

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :catch_13
    move-exception v13

    :try_start_23
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_23
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_23 .. :try_end_23} :catch_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_23} :catch_11
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_23 .. :try_end_23} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1a

    goto/16 :goto_23

    :catch_14
    move-exception v16

    :try_start_24
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_24
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_24 .. :try_end_24} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_24} :catch_11
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_24 .. :try_end_24} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_24} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_1a

    goto/16 :goto_23

    :catch_15
    move-exception v13

    :try_start_25
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v51

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v47 .. v47}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    const v8, 0x3f466666    # 0.775f

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v55, 0x3e666666    # 0.225f

    move/from16 v0, v55

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v48

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setR(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setG(I)V

    move-object/from16 v0, v48

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setB(I)V
    :try_end_25
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_25 .. :try_end_25} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_1a

    goto/16 :goto_23

    :catch_16
    move-exception v14

    :try_start_26
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z
    :try_end_26
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_26 .. :try_end_26} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_26} :catch_11
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_26} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_1a

    move-result v4

    if-eqz v4, :cond_32

    :try_start_27
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_27
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_27 .. :try_end_27} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_11
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_1a

    goto/16 :goto_23

    :catch_17
    move-exception v15

    :try_start_28
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    goto/16 :goto_23

    :cond_32
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game/civilizations_editor/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;
    :try_end_28
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_28 .. :try_end_28} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_11
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_28 .. :try_end_28} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_1a

    goto/16 :goto_23

    :catch_18
    move-exception v17

    :try_start_29
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v45

    new-instance v47, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    const-string v4, "ran"

    move-object/from16 v0, v45

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v45

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v45

    iget v7, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;-><init>(Ljava/lang/String;III)V
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_29} :catch_11
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_19
    .catch Ljava/lang/StackOverflowError; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_29} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_1a

    goto/16 :goto_23

    :catch_19
    move-exception v13

    :try_start_2a
    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/StackOverflowError; {:try_start_2a .. :try_end_2a} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_1a

    goto/16 :goto_1b

    :catch_1a
    move-exception v16

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :cond_33
    :try_start_2b
    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/StackOverflowError; {:try_start_2b .. :try_end_2b} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_2b} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_1a

    goto/16 :goto_1b

    :catch_1b
    move-exception v4

    goto/16 :goto_15

    :catch_1c
    move-exception v4

    goto/16 :goto_15

    :catch_1d
    move-exception v4

    goto/16 :goto_e

    :catch_1e
    move-exception v4

    goto/16 :goto_22

    :catch_1f
    move-exception v4

    goto/16 :goto_22

    :catch_20
    move-exception v4

    goto/16 :goto_1
.end method

.method protected final loadCoresData()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_C"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    :catch_1
    :goto_1
    return-void
.end method

.method protected final loadCoresData_Editor()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_C"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Provinces_GameData;->lCores:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_Civs_GameData;->iCivID:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    :catch_1
    :cond_2
    return-void
.end method

.method protected final loadDiplomacyData(Z)V
    .locals 9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->buildDiplomacy()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "_D"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivLordID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getVassals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->getCivLordID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AoC"

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->addAlliance(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->addCivilization(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getCivs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAllianceID(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v3

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v6

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v7

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getAlliances()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    invoke-direct {v5, v6, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->setColorOfAlliance(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    move v2, v4

    goto/16 :goto_2

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_a

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x1

    const/4 v2, 0x1

    :goto_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_a

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_9

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x14

    if-nez v5, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, -0xa

    int-to-float v7, v7

    invoke-virtual {v5, v2, v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v5

    float-to-int v5, v5

    if-nez v5, :cond_8

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    int-to-float v6, v6

    invoke-virtual {v5, v4, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    move v2, v3

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getMilitaryAccess()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setMilitaryAccess(III)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_b
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getGuarantee()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setGuarantee(III)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_c
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_d

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getPacts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivNonAggressionPact(III)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_d
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_e

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getDefensivePacts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->setDefensivePact(III)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    :goto_c
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_f

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivA()I

    move-result v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getCivB()I

    move-result v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->getTruces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->getValue()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivTruce(III)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const-string v0, "Error - Diplomacy Data"

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :catch_1
    :cond_f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->buildFriendlyCivs()V

    return-void
.end method

.method protected final loadEventsData()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_E"

    const-string v2, "events/"

    const-string v3, "/"

    const-string v4, "scenarios/"

    const-string v5, "map/"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    :catch_1
    :goto_1
    return-void
.end method

.method protected final loadGame_Scenarios(Z)V
    .locals 25

    move-object/from16 v1, p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-gtz v0, :cond_0

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->disposeScenarios()V

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    const-string v3, ";"

    const-string v4, "Age_of_Civilizations"

    const-string v5, "scenarios/"

    const-string v6, "map/"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v8

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_3
    const/16 v17, 0x1

    if-ge v3, v0, :cond_6

    move/from16 v18, v0

    aget-object v0, v8, v3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, ".json"

    move-object/from16 v18, v10

    const-string v10, "_INFO"

    move-object/from16 v19, v4

    const-string v4, "/"

    move-object/from16 v20, v7

    const-string v7, "Data_Scenario_Info"

    if-ge v3, v0, :cond_9

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v21, v2

    :try_start_1
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v22, v15

    :try_start_2
    const-class v15, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    invoke-virtual {v0, v2, v7, v15}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v24, v6

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    const-string v6, "UTF8"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;->Data_Scenario_Info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Civs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Name:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Author:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Wiki:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Age:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v6, v22

    :try_start_4
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v15, v21

    :try_start_5
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v2, v20

    :try_start_6
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_7
    move-object/from16 v2, v20

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v24, v6

    :goto_5
    move-object/from16 v2, v20

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v15

    :goto_6
    move-object/from16 v2, v20

    move-object/from16 v15, v21

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v15

    move-object v15, v2

    :goto_7
    move-object/from16 v2, v20

    :goto_8
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v4, :cond_8

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ERROR"

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object v7, v2

    move-object v2, v15

    move-object/from16 v10, v18

    move-object/from16 v4, v19

    move-object v15, v6

    move-object/from16 v6, v24

    goto/16 :goto_4

    :cond_9
    move-object/from16 v24, v6

    move-object v6, v15

    move-object v15, v2

    move-object/from16 v2, v20

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_7
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    move-object/from16 v20, v2

    move-object/from16 v2, v24

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v22, v15

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v19

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    array-length v15, v0

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v15, :cond_a

    move/from16 v19, v15

    aget-object v15, v0, v3

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_9} :catch_9

    move-object/from16 v15, v18

    :try_start_a
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v15

    move/from16 v15, v19

    move-object/from16 v0, v21

    goto :goto_a

    :cond_a
    move-object/from16 v15, v18

    move/from16 v0, v16

    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v18, v15

    :try_start_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    move-object/from16 v24, v2

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v15, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    move-object/from16 v16, v4

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    invoke-virtual {v3, v15, v7, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;-><init>()V

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigScenarioInfo;->Data_Scenario_Info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Civs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Name:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Author:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Wiki:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Age:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v4, v22

    :try_start_c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Scenario_Info;->Day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_c .. :try_end_c} :catch_b

    move-object/from16 v3, v20

    :try_start_d
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_c

    :catch_7
    nop

    goto :goto_d

    :cond_b
    move-object/from16 v3, v20

    move-object/from16 v4, v22

    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v4, v16

    move-object/from16 v15, v18

    move-object/from16 v2, v24

    goto/16 :goto_b

    :catch_8
    :cond_c
    move-object/from16 v18, v15

    :catch_9
    move-object/from16 v3, v20

    move-object/from16 v4, v22

    goto :goto_d

    :catch_a
    move-object v4, v15

    :catch_b
    move-object/from16 v3, v20

    goto :goto_d

    :catch_c
    :cond_d
    move-object v3, v2

    move-object v4, v15

    :goto_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setScenarioID(I)V

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v8, v10, :cond_f

    move v7, v5

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_10
    move-object v5, v1

    move-object/from16 v1, p0

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    move-object/from16 v10, v18

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Wikis:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v1, v5

    goto/16 :goto_e

    :cond_11
    move-object/from16 v1, p0

    if-eqz v0, :cond_13

    :goto_10
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setScenarioID(I)V

    goto :goto_11

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_13
    :goto_11
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-eqz p1, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateDaultScenarioID_ForMap()V

    :cond_14
    return-void
.end method

.method protected final loadProvincesData(Z)V
    .locals 6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->isInternal:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "_W"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_TagsList:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->getWastelandProvincesSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Scenario_WastelandProvinces_GameData;->getWastelandProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->buildProvincePopulationAndEconomy(ZZ)V

    return-void
.end method

.method protected final setNumOfCivs(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_CivNum:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioAge(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Age:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioAuthor(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Authors:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioDay(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Day:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioMonth(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Month:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioName(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Names:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setScenarioYear(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->lScenarios_Year:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setScenario_ActivePallet_TAG(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sScenario_ActivePallet_TAG:Ljava/lang/String;

    return-void
.end method

.method protected final setScenario_DiseasesDeathRate_Modifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_DiseasesDeathRate_Modifier:F

    return-void
.end method

.method protected final setScenario_EconomyGrowthRate_Modifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_EconomyGrowthRate_Modifier:F

    return-void
.end method

.method protected final setScenario_NeutralArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_NeutralArmy:I

    return-void
.end method

.method protected final setScenario_PopulationGrowthRate_Modifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_PopulationGrowthRate_Modifier:F

    return-void
.end method

.method protected final setScenario_StartingArmyInCapitals(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingArmyInCapitals:I

    return-void
.end method

.method protected final setScenario_StartingEconomy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingEconomy:I

    return-void
.end method

.method protected final setScenario_StartingMoney(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingMoney:I

    return-void
.end method

.method protected final setScenario_StartingPopulation(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->iScenario_StartingPopulation:I

    return-void
.end method
