.class Lage/of/civilizations2/jakowski/lukasz/AI;
.super Ljava/lang/Object;
.source "AI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;,
        Lage/of/civilizations2/jakowski/lukasz/AI$Expand;
    }
.end annotation


# static fields
.field protected static REBUILD_PERSONALITY:I = 0x57

.field protected static final STATUS_QUO_NO_PROGRESS:I = 0x31

.field protected static final STATUS_QUO_TOO_LONG:I = 0x12b

.field protected static final STATUS_QUO_TURNS:I = 0x27

.field protected static final STATUS_QUO_TURNS_NO_ONE_ATTACKED:I = 0x13


# instance fields
.field protected final DANGER_EXTRA_AT_WAR:I

.field protected MIN_NUM_OF_RIVALS:I

.field protected NUM_OF_CIVS_IN_THE_GAME:I

.field protected PLAYABLE_PROVINCES:I

.field protected doneLoadingOrders:Z

.field protected expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI$Expand;

.field protected iLoadingTurnActionsOfCivID:I

.field protected iNeutralProvincesWithSeaAccessSize:I

.field protected iNumOfColonizedProvinces:I

.field private lAI_Styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Style;",
            ">;"
        }
    .end annotation
.end field

.field protected lFrontLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lNeutralProvincesWithSeaAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lWastelandProvincesWithSeaAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->doneLoadingOrders:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->MIN_NUM_OF_RIVALS:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNumOfColonizedProvinces:I

    const/16 v0, 0x1c2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->DANGER_EXTRA_AT_WAR:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->updateExpand()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Communism;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Communism;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Horde;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Horde;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Fascism;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Fascism;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_CityState;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_CityState;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Tribal;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Tribal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Rebels;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style_Rebels;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->build_RebuildPersonality()V

    return-void
.end method


# virtual methods
.method protected final addNeutralProvincesWithSeaAccess(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addWastelandProvincesWithSeaAccess(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildAIData()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->resetNeutralProvincesWithSeaAccess()V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->resetWastelandProvincesWithSeaAccess()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNumOfColonizedProvinces:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    const/4 v4, 0x1

    :goto_0
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v4, v12, :cond_0

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSeaAccess(I)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearSeaAccess_Provinces()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearSeaAccess_PortProvinces()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setBordersWithEnemy(I)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsAtWar(Z)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCanExpandOnContinent(Z)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfNeighboringNeutralProvinces(I)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmiesPositionSize:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithWastelandProvincesID:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->updateObsolateMissions()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->countAvarageDevelopmentLevel_Float(I)F

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms_ProvincesPossibleToBuild:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Workshops:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    move-object/from16 v0, p0

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNumOfColonizedProvinces:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lColonies_Founded:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNumOfColonizedProvinces:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->updateMaxPopulation()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->updateMaxEconomy()V

    const/4 v4, 0x1

    :goto_1
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_4

    add-int/lit8 v5, v4, 0x1

    :goto_2
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v5, v12, :cond_2

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v12

    if-nez v12, :cond_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsAtWar(Z)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsAtWar(Z)V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_4
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v12

    if-ge v5, v12, :cond_3

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_5
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v4, v12, :cond_8

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-gtz v12, :cond_6

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar()Z

    move-result v12

    if-eqz v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    goto :goto_6

    :cond_7
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    add-int/lit8 v13, v13, -0x2

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    if-gez v12, :cond_5

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->updateMinRivals()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    const/4 v4, 0x0

    :goto_7
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v12

    if-ge v4, v12, :cond_d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v12

    if-ltz v12, :cond_c

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getColonizationOfWastelandIsEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v5, 0x0

    :goto_9
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v12

    if-ge v5, v12, :cond_9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v12

    const/4 v13, -0x2

    if-eq v12, v13, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/AI;->addWastelandProvincesWithSeaAccess(I)V

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/AI;->buildProvinceData(I)V

    move-object/from16 v0, p0

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->PLAYABLE_PROVINCES:I

    goto :goto_8

    :cond_d
    const/4 v4, 0x1

    :goto_a
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v4, v12, :cond_1a

    const/4 v5, 0x0

    :goto_b
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v12

    if-ge v5, v12, :cond_f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v12

    if-gtz v12, :cond_e

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_e
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v14

    div-int/2addr v13, v14

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    goto :goto_c

    :cond_f
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmiesPositionSize:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-lez v12, :cond_11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v12, v14, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v15

    div-int/2addr v12, v15

    iput v12, v14, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    :goto_d
    iput v12, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    const/4 v5, 0x0

    :goto_e
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstructionsSize()I

    move-result v12

    if-ge v5, v12, :cond_19

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->FARM:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_12

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    :cond_10
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_11
    const/4 v12, 0x1

    goto :goto_d

    :cond_12
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->ARMOURY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_13

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    goto :goto_f

    :cond_13
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->TOWER:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_14

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    goto :goto_f

    :cond_14
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->LIBRARY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_15

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    goto :goto_f

    :cond_15
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_16

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    goto :goto_f

    :cond_16
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->NUCLEAR_REACTOR:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_17

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    goto/16 :goto_f

    :cond_17
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->FORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_18

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    goto/16 :goto_f

    :cond_18
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->SUPPLY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v12, v13, :cond_10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    goto/16 :goto_f

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    :goto_10
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v4, v12, :cond_25

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-lez v12, :cond_24

    const/4 v6, 0x0

    :goto_11
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v12

    if-ge v6, v12, :cond_24

    const/4 v8, 0x0

    :goto_12
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v12

    if-ge v8, v12, :cond_23

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v12

    if-gtz v12, :cond_1c

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1c
    const/4 v11, 0x0

    :goto_13
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_1b

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    if-lez v12, :cond_1d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    if-eq v12, v4, :cond_1d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied(II)Z

    move-result v12

    if-nez v12, :cond_1d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    if-eq v12, v13, :cond_1d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v12

    if-eq v12, v4, :cond_1d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v13

    if-ne v12, v13, :cond_1e

    :cond_1d
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    :cond_1e
    const/4 v1, 0x1

    const/4 v10, 0x0

    :goto_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_21

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->iRegionID:I

    if-ne v12, v6, :cond_1f

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->iWithCivID:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    if-eq v12, v13, :cond_20

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->lProvinces:Ljava/util/List;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v12

    if-nez v12, :cond_22

    :cond_21
    :goto_16
    if-eqz v1, :cond_1d

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v15

    invoke-direct {v12, v13, v6, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;-><init>(IIIZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_22
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->bordersWithEnemy:Z

    goto :goto_16

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_25
    const/4 v4, 0x1

    :goto_17
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v12

    if-ge v4, v12, :cond_2b

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-gtz v12, :cond_27

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    const/4 v7, 0x0

    :goto_18
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPreparationsSize:I

    if-ge v7, v12, :cond_26

    const/4 v3, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    add-int/lit8 v13, v4, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    add-int/lit8 v13, v4, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->iWithCivID:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-eq v13, v12, :cond_29

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_29
    const/4 v2, 0x0

    :goto_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    add-int/lit8 v13, v4, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_28

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lFrontLines:Ljava/util/List;

    add-int/lit8 v14, v4, -0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    const/high16 v14, 0x43e10000    # 450.0f

    const v15, 0x3f2ccccd    # 0.675f

    const v16, 0x3ea66666    # 0.325f

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iNumOfTurnsLeft:I

    int-to-float v12, v12

    div-float v12, v16, v12

    add-float/2addr v12, v15

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    sget-object v12, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v13, "AI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--------- TURN: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ---------"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method protected final buildProvinceData(I)V
    .locals 14

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBordersWithEnemy(Z)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/16 v7, 0xf5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNumOfNeighboringNeutralProvinces(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildRecruitableArmyPoints()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v6

    const v7, 0x3f0f5c29    # 0.56f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_a

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms_ProvincesPossibleToBuild:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms_ProvincesPossibleToBuild:I

    :cond_1
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Workshops:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Workshops:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v6

    if-lez v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addSeaAccess_PortProvinces(I)V

    :cond_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v6

    if-lez v6, :cond_3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addSeaAccess_PortProvinces(I)V

    :cond_3
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-lez v6, :cond_4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addSeaAccess_Provinces(I)V

    :cond_4
    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v3, v6, :cond_6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v6

    if-gtz v6, :cond_5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v1, v6, :cond_c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_8

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addBordersWithCivID(I)V

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v6

    if-ltz v6, :cond_9

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithWastelandProvincesID:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x1

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v3, v6, :cond_c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v6

    if-gtz v6, :cond_b

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v6

    if-lez v6, :cond_d

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_e

    const/high16 v6, 0x42340000    # 45.0f

    :goto_6
    float-to-int v6, v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setArmyWasRecruited(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasAttacked(I)V

    :cond_d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v7

    mul-int/lit16 v7, v7, 0xeb

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/high16 v7, 0x43390000    # 185.0f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population_WithFarm()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v7

    mul-int/lit16 v7, v7, 0xaf

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/high16 v7, 0x42e60000    # 115.0f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const v7, 0x43bb8000    # 375.0f

    const v8, 0x43898000    # 275.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3dcccccd    # 0.1f

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population_WithFarm()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit16 v7, v7, 0xe1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    const/4 v1, 0x0

    :goto_7
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-ge v1, v6, :cond_10

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v8, 0x42c80000    # 100.0f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x23

    int-to-float v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    goto/16 :goto_6

    :cond_f
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/AI;->addNeutralProvincesWithSeaAccess(I)V

    :cond_10
    :goto_8
    const/4 v1, 0x0

    :goto_9
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-ge v1, v6, :cond_25

    const/4 v4, 0x1

    :goto_a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v6

    if-ge v4, v6, :cond_24

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_21

    const/high16 v6, 0x41e60000    # 28.75f

    :goto_b
    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :cond_12
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v6

    if-lez v6, :cond_13

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    :cond_13
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-lez v6, :cond_14

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSeaAccess()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSeaAccess(I)V

    :cond_14
    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v2, v6, :cond_1e

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_1d

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_1c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    if-eq v6, v7, :cond_1c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBordersWithEnemy(Z)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v6, 0x40

    :goto_e
    int-to-float v8, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasAttacked()I

    move-result v6

    if-lez v6, :cond_18

    const v6, 0x3fe33333    # 1.775f

    :goto_f
    mul-float/2addr v6, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    :cond_15
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied(II)Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    if-eq v6, v7, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDefensivePact(II)I

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGuarantee(II)I

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivTruce(II)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCanExpandOnContinent(Z)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v6, 0xe

    :goto_10
    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/high16 v6, 0x42430000    # 48.75f

    :goto_11
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/high16 v7, 0x409c0000    # 4.875f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v7, v9

    :goto_12
    mul-float/2addr v6, v7

    const/high16 v7, 0x3f200000    # 0.625f

    const v9, 0x3fb5c28f    # 1.42f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v7, v9

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    :cond_16
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    const v8, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/16 v7, -0x18

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    :goto_13
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_17
    const/16 v6, 0x18

    goto/16 :goto_e

    :cond_18
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_f

    :cond_19
    const/4 v6, 0x6

    goto/16 :goto_10

    :cond_1a
    const v6, 0x4205cccd    # 33.45f

    goto/16 :goto_11

    :cond_1b
    const/high16 v7, 0x3f400000    # 0.75f

    const v9, 0x3fc66666    # 1.55f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v10

    const/high16 v11, 0x41c80000    # 25.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto/16 :goto_12

    :cond_1c
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    :cond_1d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNumOfNeighboringNeutralProvinces(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x42380000    # 46.0f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    goto/16 :goto_13

    :cond_1e
    if-lez v5, :cond_1f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE:F

    int-to-float v9, v5

    mul-float/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel(I)V

    :cond_1f
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/16 v7, 0x1c2

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    :cond_20
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addPotential(I)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-lez v6, :cond_10

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v7

    mul-int/lit8 v7, v7, 0x19

    add-int/lit8 v7, v7, 0x7d

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    goto/16 :goto_8

    :cond_21
    const v6, 0x416deb85    # 14.87f

    goto/16 :goto_b

    :cond_22
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v6

    if-eqz v6, :cond_23

    const/high16 v6, 0x410c0000    # 8.75f

    :goto_14
    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v6, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v8

    neg-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    goto/16 :goto_c

    :cond_23
    const v6, 0x409bd70a    # 4.87f

    goto :goto_14

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_25
    :try_start_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v6

    if-lez v6, :cond_2e

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_PERC_OF_UNITS:F

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_26
    :goto_15
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v6

    if-lez v6, :cond_27

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f74e3bd    # 0.9566f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setPotential(I)V

    :cond_27
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_28

    :try_start_1
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_28
    :goto_16
    :try_start_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_29

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    if-eqz v6, :cond_29

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_KEY_REGION:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_29
    :goto_17
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighbooringProvinceOfCivWasLost()I

    move-result v6

    if-lez v6, :cond_2a

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighbooringProvinceOfCivWasLost()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->addDangerLevel(I)V

    :cond_2a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyWasRecruited()I

    move-result v6

    if-lez v6, :cond_2b

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyWasRecruited()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setArmyWasRecruited(I)V

    :cond_2b
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getBordersWithEnemy()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setBordersWithEnemy(I)V

    :cond_2c
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v6

    if-lez v6, :cond_2d

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfNeighboringNeutralProvinces()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNumOfNeighboringNeutralProvinces()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfNeighboringNeutralProvinces(I)V

    :cond_2d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasConquered()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasConquered(B)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighbooringProvinceOfCivWasLost()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setNeighbooringProvinceOfCivWasLost(B)V

    return-void

    :cond_2e
    :try_start_3
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDangerLevel_WithArmy(I)V

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_26

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    :catch_1
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_28

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :catch_2
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_28

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :catch_3
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_29

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    :catch_4
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_29

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_17
.end method

.method protected final build_RebuildPersonality()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AI;->REBUILD_PERSONALITY:I

    return-void
.end method

.method protected final checkCurrentWars_LookingForPeace()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarsSize()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x27

    goto :goto_5

    :cond_6
    const/16 v3, 0x13

    :goto_5
    if-gt v2, v3, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/lit8 v3, v3, -0x31

    if-lt v2, v3, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarTurnID()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    add-int/lit16 v4, v4, 0x12b

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_a

    :cond_7
    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v2, v3, :cond_a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :goto_7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-nez v4, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    return-void
.end method

.method protected final expandToNeutralProvinces_Out(IZ)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v9, p1

    const-string v10, "AoC"

    const/4 v11, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getBordersWithEnemy()I

    move-result v2

    if-nez v2, :cond_3a

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expandToNeutralProvinces_Out -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lage/of/civilizations2/jakowski/lukasz/AI;->expandToNeutralProvinces_Run(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expandToNeutralProvinces_Out -> movepoints"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    if-ge v2, v3, :cond_0

    return v11

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x1

    if-lez v2, :cond_15

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    const/4 v13, 0x5

    if-lez v2, :cond_1

    if-eqz p2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, v13, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_15

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    long-to-int v3, v2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    :goto_0
    if-ltz v2, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v1, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;II)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXPAND -> 000 possibleProvinces.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    const/4 v4, 0x0

    :goto_3
    if-lez v3, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    move v4, v3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_3a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-ne v4, v9, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    :goto_6
    if-ltz v4, :cond_b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v6, v13}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v6, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v6

    if-le v5, v6, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, -0x1

    const/4 v13, 0x5

    goto :goto_6

    :cond_b
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND -> 000 canMoveImmediately.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v6, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v4, v6, :cond_d

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvinceID(I)Z

    move-result v6

    if-nez v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x0

    goto :goto_7

    :cond_d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v4

    if-le v5, v12, :cond_e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v4

    const/4 v11, 0x5

    add-int/2addr v4, v11

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_8

    :cond_e
    const/4 v11, 0x5

    :goto_8
    move v5, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EXPAND -> 000 movearmy: TOPROVINCEID: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v10, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v6, v2, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-object v2, v4

    move v4, v6

    move/from16 v6, p1

    move v11, v7

    move v7, v13

    move v13, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_23

    :cond_f
    move v11, v7

    move v13, v8

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXPAND -> 000 ADDMISION: TOPROVINCEID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v4, v9, v5}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/CivArmyMission;)Z

    :cond_10
    add-int/lit8 v7, v11, 0x1

    move v8, v13

    const/4 v11, 0x0

    const/4 v13, 0x5

    goto/16 :goto_4

    :cond_11
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    :goto_9
    if-ltz v2, :cond_12

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, v9}, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;II)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_12
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    :goto_a
    if-lez v2, :cond_14

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    move v3, v2

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_14
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v3}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/CivArmyMission;)Z

    goto/16 :goto_23

    :cond_15
    if-eqz p2, :cond_3a

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iNeutralProvincesWithSeaAccessSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    if-lez v2, :cond_3a

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "EXPAND EXTRA -> begin"

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v4

    if-ge v3, v4, :cond_1a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    :goto_c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_19

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v5

    if-lez v5, :cond_18

    const/4 v5, 0x0

    :goto_d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_18

    const/4 v6, 0x0

    :goto_e
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_17

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_16

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v7

    if-gez v7, :cond_16

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-direct {v7, v1, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_1a
    const/4 v3, 0x0

    :goto_f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v4

    if-ge v3, v4, :cond_20

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    :goto_10
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_1f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v5

    if-lez v5, :cond_1e

    const/4 v5, 0x0

    :goto_11
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_1e

    const/4 v6, 0x0

    :goto_12
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_1d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x0

    :goto_13
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_1c

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v15, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v12

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v8

    if-nez v8, :cond_1b

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v8

    if-gez v8, :cond_1b

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    if-nez v8, :cond_1b

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v15

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-direct {v8, v1, v12, v9}, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;II)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x1

    goto/16 :goto_13

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x1

    goto/16 :goto_12

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x1

    goto/16 :goto_11

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    goto/16 :goto_10

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x1

    goto/16 :goto_f

    :cond_20
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND EXTRA -> 11 -> possibleTo.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v10, 0x0

    :goto_14
    if-lez v3, :cond_22

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_21

    move v10, v3

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_22
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvinceID_Num(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int v12, v3, v4

    if-ltz v12, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    if-le v3, v12, :cond_24

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v13, v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v3

    if-lez v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v3, v9, v5, v4, v12}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    const/4 v2, 0x0

    return v2

    :cond_24
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sub-int/2addr v12, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy_BasedOnProvinceID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_3a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v2, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :cond_25
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v11}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    :goto_15
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v4

    if-ge v3, v4, :cond_34

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getSeaAccess()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x0

    :goto_16
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_33

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v5

    if-ltz v5, :cond_32

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_17
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_26

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v12

    invoke-virtual {v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    const/4 v12, 0x1

    iput-boolean v12, v8, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_18
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iExpandNeutralProvinces_RangeCheck:I

    if-ge v8, v13, :cond_30

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_30

    invoke-interface {v7}, Ljava/util/List;->clear()V

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    :goto_19
    if-ltz v13, :cond_2a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v14

    :goto_1a
    if-ltz v15, :cond_28

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 p2, v8

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_27

    const/4 v8, 0x0

    goto :goto_1b

    :cond_27
    add-int/lit8 v15, v15, -0x1

    move/from16 v8, p2

    goto :goto_1a

    :cond_28
    move/from16 p2, v8

    const/4 v8, 0x1

    :goto_1b
    if-eqz v8, :cond_29

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v13, v13, -0x1

    move/from16 v8, p2

    const/4 v14, 0x1

    goto :goto_19

    :cond_2a
    move/from16 p2, v8

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v13, 0x1

    sub-int/2addr v8, v13

    :goto_1c
    if-ltz v8, :cond_2e

    move v13, v12

    const/4 v12, 0x0

    :goto_1d
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v14

    if-ge v12, v14, :cond_2d

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v15, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    iget-boolean v13, v13, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v13, :cond_2c

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    const/4 v14, 0x1

    iput-boolean v14, v13, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v13

    if-eqz v13, :cond_2b

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_2b
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    if-nez v13, :cond_2c

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v13

    if-gez v13, :cond_2c

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-direct {v13, v1, v14, v9}, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;II)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v13

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_1f

    :cond_2c
    :goto_1e
    move/from16 v13, v18

    :goto_1f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1d

    :cond_2d
    move/from16 v18, v13

    add-int/lit8 v8, v8, -0x1

    move/from16 v12, v18

    goto/16 :goto_1c

    :cond_2e
    if-eqz v12, :cond_2f

    goto :goto_20

    :cond_2f
    move/from16 v8, p2

    goto/16 :goto_18

    :cond_30
    :goto_20
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_21
    if-ltz v7, :cond_31

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    const/4 v12, 0x0

    iput-boolean v12, v8, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_21

    :cond_31
    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_34
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND EXTRA -> 22 -> possibleTo.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iExpandNeutralProvinces_RangeCheck:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v4

    div-int/lit8 v4, v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iExpandNeutralProvinces_RangeCheck:I

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lage/of/civilizations2/jakowski/lukasz/AI;->expandToNeutralProvinces_Out(IZ)Z

    goto/16 :goto_23

    :cond_35
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v12, 0x0

    :goto_22
    if-lez v3, :cond_37

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iScore:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_36

    move v12, v3

    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_37
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND EXTRA -> 22 -> ACTION 0000 -> ProvinceID_TO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND EXTRA -> 22 -> ACTION 0000 -> ProvinceID_FROM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvinceID_Num(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int v13, v3, v4

    if-ltz v13, :cond_3a

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "EXPAND EXTRA -> 22 -> ACTION 1111"

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    if-le v3, v13, :cond_39

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "EXPAND EXTRA -> 22 -> ACTION 2222"

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v10, v9, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v3

    if-lez v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v13

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v5

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v3, v9, v5, v4, v13}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    const/4 v2, 0x0

    return v2

    :cond_39
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "EXPAND EXTRA -> 22 -> ACTION 3333"

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sub-int/2addr v13, v3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXPAND EXTRA -> 22 -> ACTION tArmyToRecruit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy_BasedOnProvinceID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXPAND EXTRA -> 22 -> ACTION tempArmy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v10, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_3a

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "EXPAND EXTRA -> 22 -> ACTION ADDMISION"

    invoke-interface {v4, v10, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI$NeutralProvinces;->iProvinceID:I

    invoke-direct {v5, v9, v2, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_23

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_23

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_23
    const/4 v2, 0x0

    return v2
.end method

.method protected final expandToNeutralProvinces_Run(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    if-ne v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->action(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->onRemove()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final getAIStyle_ByTag(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->TAG:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    return-object p1
.end method

.method protected final getAllNeighboringProvincesInRange_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move/from16 v6, p3

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-lez v6, :cond_a

    if-nez p5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/2addr v7, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_2
    if-ltz v9, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_1

    const/4 v9, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_4
    if-ltz v6, :cond_9

    const/4 v9, 0x0

    :goto_5
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    iget-boolean v10, v10, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v10, :cond_6

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    iput-boolean v4, v10, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    move/from16 v11, p2

    if-ne v10, v11, :cond_7

    if-eqz p4, :cond_5

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v12

    if-ne v10, v12, :cond_7

    :cond_5
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-direct {v10, v12, v7}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move/from16 v11, p2

    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_8
    move/from16 v11, p2

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    :cond_9
    move/from16 v11, p2

    move v6, v8

    goto/16 :goto_0

    :cond_a
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_7
    if-ltz v3, :cond_b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method protected final getAllNeighboringProvincesInRange_OnlyOwn_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p7, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 p5, 0x1

    iput-boolean p5, p1, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v3, p3, -0x1

    if-lez p3, :cond_9

    invoke-interface {p1}, Ljava/util/List;->clear()V

    add-int/2addr v1, p5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p5

    :goto_1
    if-ltz p3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p5

    :goto_2
    if-ltz v4, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_2

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p5

    :goto_4
    if-ltz p3, :cond_7

    move v4, v2

    const/4 v2, 0x0

    :goto_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v2, v5, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v5, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iput-boolean p5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-ne v5, p2, :cond_4

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-direct {v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    :cond_4
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_6
    add-int/lit8 p3, p3, -0x1

    move v2, v4

    goto/16 :goto_4

    :cond_7
    if-lez v2, :cond_8

    add-int/lit8 p3, v2, 0x4

    if-ge p3, v1, :cond_8

    goto :goto_6

    :cond_8
    move p3, v3

    goto/16 :goto_0

    :cond_9
    :goto_6
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p5

    :goto_7
    if-ltz p1, :cond_a

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iput-boolean v0, p2, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_a
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-interface {p7}, Ljava/util/List;->clear()V

    return-object p6
.end method

.method protected final getAllNeighboringProvincesInRange_Recruit(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p3, -0x1

    if-lez p3, :cond_9

    if-nez p5, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_9

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    add-int/2addr v2, v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_1
    if-ltz p3, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_2
    if-ltz v4, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_4
    if-ltz p3, :cond_8

    const/4 v4, 0x0

    :goto_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v5, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iput-boolean v0, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-ne v5, p2, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isRecruitingArmyInProvinceID(I)I

    move-result v5

    if-gez v5, :cond_5

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-direct {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {p6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_4

    :cond_8
    move p3, v3

    goto/16 :goto_0

    :cond_9
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_6
    if-ltz p1, :cond_a

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iput-boolean v1, p2, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_a
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-interface {p7}, Ljava/util/List;->clear()V

    return-object p6
.end method

.method protected final getAllNeighboringProvincesInRange_RecruitAtWAr(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move/from16 v8, p3

    const/4 v7, 0x0

    const/4 v9, -0x1

    :cond_0
    if-lt v7, v8, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_b

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_b

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_0
    if-ltz v10, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_1
    if-ltz v11, :cond_3

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_2

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_3
    if-ltz v10, :cond_a

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_4
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v8, v12, :cond_9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v12, :cond_8

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v5, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->isAlly(II)Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getMilitaryAccess(II)I

    move-result v12

    if-lez v12, :cond_8

    :cond_6
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    if-ne v0, v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isRecruitingArmyInProvinceID(I)I

    move-result v12

    if-gez v12, :cond_7

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-direct {v12, v13, v7}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v11, :cond_7

    add-int/lit8 v9, v9, 0x4

    move v11, v7

    :cond_7
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v10, v10, -0x1

    move v8, v9

    move v9, v11

    goto/16 :goto_3

    :cond_a
    if-lez v9, :cond_0

    add-int/lit8 v10, v9, 0x8

    if-ge v10, v7, :cond_0

    :cond_b
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_5
    if-ltz v0, :cond_c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method protected final getAllNeighboringProvincesInRange_Regroup_ForNavalInvasion(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move/from16 v7, p3

    const/4 v8, 0x0

    const/4 v9, -0x1

    :cond_0
    if-lt v8, v7, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_0
    if-ltz v10, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_1
    if-ltz v11, :cond_3

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_2

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_3
    if-ltz v10, :cond_9

    move v11, v9

    const/4 v9, 0x0

    :goto_4
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v9, v12, :cond_8

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v5, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->isAlly(II)Z

    move-result v12

    if-eqz v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v12

    if-lez v12, :cond_6

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-direct {v12, v13, v8}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v11, :cond_6

    move v11, v8

    :cond_6
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v10, v10, -0x1

    move v9, v11

    goto/16 :goto_3

    :cond_9
    if-lez v9, :cond_0

    add-int/lit8 v10, v9, 0x2

    if-ge v10, v8, :cond_0

    :cond_a
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_5
    if-ltz v0, :cond_b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method protected final getAllNeighboringProvincesInRange_WithArmyToRegroup(IIIZZLjava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move/from16 v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v7, -0x1

    if-lez v7, :cond_b

    if-nez p5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/2addr v8, v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_2
    if-ltz v11, :cond_2

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_1

    const/4 v11, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_4
    if-ltz v7, :cond_9

    move v11, v9

    const/4 v9, 0x0

    :goto_5
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v9, v12, :cond_8

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iget-boolean v12, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v12, :cond_7

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    iput-boolean v5, v12, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    if-ne v12, v0, :cond_7

    if-eqz p4, :cond_5

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v13

    if-ne v12, v13, :cond_7

    :cond_5
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_6

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v13

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-direct {v13, v14, v8, v12}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;-><init>(III)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v7, v7, -0x1

    move v9, v11

    goto/16 :goto_4

    :cond_9
    move/from16 v7, p8

    if-lt v9, v7, :cond_a

    goto :goto_6

    :cond_a
    move v7, v10

    goto/16 :goto_0

    :cond_b
    :goto_6
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_7
    if-ltz v0, :cond_c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iput-boolean v6, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method protected final getLoadingTurnActionsOfCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    return v0
.end method

.method protected final prepareForWar_BordersWithEnemy(II)Z
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/AI;->prepareForWar_BordersWithEnemy_Just(II)Z

    move-result p1

    return p1
.end method

.method protected final prepareForWar_BordersWithEnemy_Just(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPreparationsSize:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected final resetNeutralProvincesWithSeaAccess()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lNeutralProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iNeutralProvincesWithSeaAccessSize:I

    return-void
.end method

.method protected final resetWastelandProvincesWithSeaAccess()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lWastelandProvincesWithSeaAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final setLoadingTurnActionsOfCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    return-void
.end method

.method protected final turnOrders()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->doneLoadingOrders:Z

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AI;->REBUILD_PERSONALITY:I

    rem-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/AI;->REBUILD_PERSONALITY:I

    rem-int v3, v1, v3

    if-ne v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0x36

    if-le v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->REBUILD_PERSONALITY_MORE_OFTEN:I

    rem-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->REBUILD_PERSONALITY_MORE_OFTEN:I

    rem-int v3, v1, v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0x1c

    if-le v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_MoreOften()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->doneLoadingOrders:Z

    throw v2

    :cond_2
    :try_start_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkVassals()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkAlliances()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateAlliedWithPlayer_IncludeVassal()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AI;->checkCurrentWars_LookingForPeace()V

    const/4 v1, 0x1

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_5

    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->iLoadingTurnActionsOfCivID:I

    # Removed per-civ setRender_3 only (no AI schedule change)

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->turnOrdersEssential(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->turnOrders(I)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->respondToMessages(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    rem-int/lit8 v1, v2, 0x6

    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->lAI_Styles:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->manageVassalsTribute(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    add-int/lit8 v1, v1, 0x6

    goto :goto_4

    :cond_7
    iput-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->doneLoadingOrders:Z

    return-void
.end method

.method protected final updateExpand()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    if-nez v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AI$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI$Expand;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AI$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/AI;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->expandNeutral:Lage/of/civilizations2/jakowski/lukasz/AI$Expand;

    :goto_0
    return-void
.end method

.method protected final updateMinRivals()V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/AI;->NUM_OF_CIVS_IN_THE_GAME:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI;->MIN_NUM_OF_RIVALS:I

    return-void
.end method
