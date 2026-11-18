.class Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;
.super Ljava/lang/Object;
.source "PeaceTreaty_Data.java"


# static fields
.field protected static final VASSALIZE_COST:F = 0.4f

.field protected static final WAR_REPARATIONS_COST:F = 0.1f


# instance fields
.field protected drawProvinceOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;",
            ">;"
        }
    .end annotation
.end field

.field protected iBrushCivID:I

.field protected iLastTakenID:I

.field protected iPlayerTurnID:I

.field protected iProvincesLeftToTakeSize:I

.field protected peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

.field protected provincesLeftToTake:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected scoreCountDefenders:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->scoreCountDefenders:Z

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    return-void
.end method

.method protected constructor <init>(ILjava/util/List;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->scoreCountDefenders:Z

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    invoke-direct {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->initPeaceTreatyData(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    iput-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->scoreCountDefenders:Z

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->initPeaceTreatyData(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->scoreCountDefenders:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->prepareProvinceData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->prepareDemansVassalsData()V

    return-void
.end method

.method protected static getProposal_Negative(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected static getProposal_Positive(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final initPeaceTreatyData(ILjava/util/List;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iput p1, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->WAR_TAG:Ljava/lang/String;

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->WAR_TAG:Ljava/lang/String;

    iput-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->scoreCountDefenders:Z

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenders_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore_DefendersInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressors_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore_AggressorsInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->prepareProvinceData(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method protected final AI_UseVictoryPoints()V
    .locals 8

    const/16 v7, 0x32

    :try_start_0
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AoC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AI_UseVictoryPoints -> provincesLeftToTake.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    if-lez v3, :cond_6

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    if-ne v3, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, v7, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    if-le v3, v2, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    if-ne v3, v2, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, v7, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AI_UseVictoryPoints -> iBestCivID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ltz v1, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", tBestPoints: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_6

    if-lez v2, :cond_6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AoC"

    const-string v5, "AI_UseVictoryPoints -> AI TAKE PROVINCE"

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID(II)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_5
.end method

.method protected final AI_UseVictoryPoints_CivID(II)V
    .locals 19

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const v8, 0x38d1b717    # 1.0E-4f

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    if-ge v4, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    move/from16 v0, p2

    if-ge v0, v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v12

    move/from16 v0, p1

    if-ne v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/high16 v13, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_2
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v14, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_5

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getHaveACore(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/high16 v13, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_3
    :goto_3
    if-nez v10, :cond_0

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getHaveACore(I)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/high16 v13, 0x3fe00000    # 1.75f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/high16 v13, 0x40880000    # 4.25f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const v13, 0x3ea66666    # 0.325f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const v13, 0x3ccccccd    # 0.025f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_Score(IIF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :cond_8
    :goto_4
    return-void

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_b

    :cond_a
    sget-object v12, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v13, "AoC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AI_UseVictoryPoints -> AI TAKE PROVINCE -> lNeigh.size(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_TakeVassal(IIZ)V

    goto :goto_4

    :cond_b
    if-nez v3, :cond_c

    sget-object v12, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v13, "AoC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AI_UseVictoryPoints -> AI TAKE PROVINCE -> canTakeNieghProvince: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_TakeVassal(IIZ)V

    goto :goto_4

    :cond_c
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    const/16 v2, 0x5f

    if-lt v12, v2, :cond_d

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints_CivID_TakeVassal(IIZ)V

    :cond_d
    const/4 v9, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    :goto_5
    if-lez v4, :cond_f

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const v14, 0x3f4ccccd    # 0.8f

    const v15, 0x3e4ccccd    # 0.2f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v18

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result v12

    div-float/2addr v12, v8

    sub-float v12, v16, v12

    mul-float/2addr v12, v15

    add-float/2addr v12, v14

    mul-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v14, v12, :cond_e

    const v12, 0x3d4ccccd    # 0.05f

    :goto_6
    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v7, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    :goto_7
    if-lez v4, :cond_11

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v12, v13, v12

    if-gez v12, :cond_10

    move v9, v4

    :cond_10
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_11
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-virtual {v0, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->takeProvince(III)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto/16 :goto_4

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_15
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-virtual {v0, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->takeProvince(III)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto/16 :goto_4

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto/16 :goto_4

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto/16 :goto_4

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v13, 0x0

    iput v13, v12, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method

.method protected final AI_UseVictoryPoints_CivID_Score(IIF)F
    .locals 6

    const/high16 v5, 0x3e000000    # 0.125f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v4, p3, v4

    mul-float/2addr v3, v4

    add-int v4, v2, v1

    div-int v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3d4ccccd    # 0.05f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3bf5c28f    # 0.0075f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    return v3
.end method

.method protected final AI_UseVictoryPoints_CivID_TakeVassal(IIZ)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v4, p1, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-gez v4, :cond_0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v4

    if-gt v4, p2, :cond_0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_6

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v4, p1, :cond_8

    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-gez v4, :cond_3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v4

    if-gt v4, p2, :cond_3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, p1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->takeVassalize(III)I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    if-eqz p3, :cond_7

    const/4 v2, 0x0

    :goto_5
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v4, p1, :cond_a

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v5, 0x0

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v4, p1, :cond_c

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    const/4 v5, 0x0

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method protected final addProvincesLeftToTake(I)V
    .locals 5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProvincesLeftToTake: nCivID: , nProvinceID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    goto :goto_1
.end method

.method protected final getVassalization_Cost(I)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    :goto_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getWar_Score_Rate(I)I

    move-result v3

    div-int/lit8 v1, v1, 0x7

    mul-int/2addr v1, v3

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected final getWarReparation_Cost(I)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    :goto_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getWar_Score_Rate(I)I

    move-result v3

    div-int/lit8 v1, v1, 0x7

    mul-int/2addr v1, v3

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected final makeDemand_Province(III)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    move-result v0

    return v0
.end method

.method protected final makeDemand_Province(IIIZ)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AoC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeDemand_Province: nCivID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nProvinceID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, p3, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v1

    if-ne v1, p2, :cond_0

    move p3, p2

    :cond_0
    if-nez p4, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_7

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v1, p3, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_a

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v1, p3, :cond_8

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addDemandOnProvince(I)V

    :cond_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v1, :cond_b

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    if-ge v3, v1, :cond_7

    move v1, v2

    :goto_4
    return v1

    :cond_6
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_7

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    if-ge v3, v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    if-ge v3, v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_a

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    if-ge v3, v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v2, v3, v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto/16 :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p2, :cond_d

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addDemandOnProvince(I)V

    :cond_d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v1, :cond_f

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_e

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v1, p3, :cond_e

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v2, v3, v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto :goto_6

    :cond_10
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_4
.end method

.method protected final prepareDemansVassalsData()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iFromCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, v5, :cond_1

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    if-ne v6, v5, :cond_0

    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    iput v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    const/4 v1, 0x0

    :goto_6
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    const/4 v2, 0x0

    :goto_7
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iFromCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, v5, :cond_6

    const/4 v3, 0x0

    :goto_8
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    if-ne v6, v5, :cond_5

    const/4 v4, 0x0

    :goto_9
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs_TakeControl:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals_TakeConrol;->iVassalCivID:I

    iput v6, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_9
    return-void
.end method

.method protected final preparePeaceTreatyToSend(I)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-gez v6, :cond_0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {p0, v7, v8, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-gez v6, :cond_3

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {p0, v7, v8, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_4
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_5
    if-ltz v1, :cond_c

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_6
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v7, v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ltz v6, :cond_8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    invoke-virtual {v7, v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    if-gtz v4, :cond_b

    if-lez v3, :cond_b

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-gt v6, v13, :cond_a

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-gtz v6, :cond_b

    :cond_a
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput v12, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    mul-int/lit8 v7, v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    const/4 v5, 0x1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_8
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_15

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_9
    if-ltz v1, :cond_14

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_a
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v2, v6, :cond_11

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v7, v6, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_e
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ltz v6, :cond_10

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    invoke-virtual {v7, v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    if-gtz v4, :cond_13

    if-lez v3, :cond_13

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-gt v6, v13, :cond_12

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v6

    if-gtz v6, :cond_13

    :cond_12
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput v12, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    mul-int/lit8 v7, v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    const/4 v5, 0x1

    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_15
    if-eqz v5, :cond_1b

    const/4 v0, 0x0

    :goto_c
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_18

    const/4 v1, 0x0

    :goto_d
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-gez v6, :cond_16

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {p0, v7, v8, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    :goto_e
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1b

    const/4 v1, 0x0

    :goto_f
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-gez v6, :cond_19

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {p0, v7, v8, v6, v11}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    :goto_10
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_20

    const/4 v1, 0x0

    :goto_11
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1e

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_12
    if-ltz v2, :cond_1d

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    if-eq v7, v6, :cond_1c

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :cond_1e
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne p1, v6, :cond_1f

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->peaceTreatyAccepted:Z

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_20
    const/4 v0, 0x0

    :goto_13
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_25

    const/4 v1, 0x0

    :goto_14
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_23

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_15
    if-ltz v2, :cond_22

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    if-eq v7, v6, :cond_21

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_23
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne p1, v6, :cond_24

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput-boolean v11, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->peaceTreatyAccepted:Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_25
    return-void
.end method

.method protected final prepareProvinceData(Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_3
    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v19, v0

    new-instance v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v21

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v22

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;-><init>(IIZ)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v19, v0

    new-instance v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v22

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;-><init>(IIZ)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_5
    if-ltz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_6
    if-ltz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    move/from16 v21, v0

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v20

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_6

    :cond_5
    const/4 v11, 0x0

    :goto_7
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    move/from16 v21, v0

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v20

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_5

    :catch_0
    move-exception v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_8
    if-ltz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_9
    if-ltz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    move/from16 v21, v0

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v20

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_a
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I

    move/from16 v21, v0

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v20

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iTotalNumOfVicotryPoints:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_8

    :catch_1
    move-exception v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_b
    if-ltz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    const/4 v11, 0x0

    :goto_c
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v19

    if-nez v19, :cond_e

    const/16 v18, 0x0

    :goto_d
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    if-nez v19, :cond_c

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_e
    if-ltz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    move/from16 v20, v0

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->addProvince(I)V

    :cond_b
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v22

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_d

    :cond_d
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_f
    if-ltz v13, :cond_14

    const/4 v11, 0x0

    :goto_10
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_13

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    if-nez v19, :cond_11

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_11
    if-ltz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    move/from16 v20, v0

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->addProvince(I)V

    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_11

    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_f

    :cond_14
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_12
    if-ltz v9, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    const/4 v11, 0x0

    :goto_13
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1a

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v19

    if-nez v19, :cond_19

    const/16 v18, 0x0

    :goto_14
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    if-nez v19, :cond_17

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_15
    if-ltz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    move/from16 v20, v0

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->addProvince(I)V

    :cond_16
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v22

    sget-object v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_14

    :cond_18
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_15

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_16
    if-ltz v13, :cond_1f

    const/4 v11, 0x0

    :goto_17
    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1e

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v19

    if-nez v19, :cond_1c

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_18
    if-ltz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    move/from16 v20, v0

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->addProvince(I)V

    :cond_1b
    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    sget-object v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_17

    :cond_1d
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_18

    :cond_1e
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_16

    :cond_1f
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_12

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_19
    if-ltz v9, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v9, v9, -0x1

    goto :goto_19

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    :cond_23
    :goto_1a
    return-void

    :cond_24
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1b
    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_27

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_1c
    if-ltz v11, :cond_25

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    const/4 v6, 0x1

    :cond_25
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_26
    add-int/lit8 v11, v11, -0x1

    goto :goto_1c

    :cond_27
    const/4 v9, 0x0

    :goto_1d
    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_2a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_1e
    if-ltz v11, :cond_28

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    const/4 v6, 0x1

    :cond_28
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_29
    add-int/lit8 v11, v11, -0x1

    goto :goto_1e

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_1f
    if-ltz v9, :cond_2f

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenders_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_20
    if-ltz v11, :cond_2e

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_21
    if-ltz v12, :cond_2b

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    const/4 v10, 0x1

    :cond_2b
    if-nez v10, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_2c
    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_20

    :cond_2d
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_21

    :cond_2e
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1f

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_22
    if-ltz v9, :cond_34

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressors_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_23
    if-ltz v11, :cond_33

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_24
    if-ltz v12, :cond_30

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    const/4 v10, 0x1

    :cond_30
    if-nez v10, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(IIIZ)Z

    :cond_31
    move-object/from16 v0, v16

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_23

    :cond_32
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_24

    :cond_33
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_22

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_25
    if-ltz v9, :cond_47

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v19

    if-nez v19, :cond_35

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v19

    if-eqz v19, :cond_45

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_26
    if-ltz v11, :cond_46

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v19

    if-eqz v19, :cond_3e

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v19

    if-nez v19, :cond_36

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v19

    if-eqz v19, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :goto_27
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_26

    :cond_37
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_28
    if-ltz v12, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_29
    if-ltz v13, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_38
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_28

    :cond_39
    add-int/lit8 v13, v13, -0x1

    goto :goto_29

    :cond_3a
    if-nez v14, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_2a
    if-ltz v12, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_2b
    if-ltz v13, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_3b
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2a

    :cond_3c
    add-int/lit8 v13, v13, -0x1

    goto :goto_2b

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_27

    :catch_2
    move-exception v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_3e
    const/4 v14, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_2c
    if-ltz v12, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_2d
    if-ltz v13, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_3f
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2c

    :cond_40
    add-int/lit8 v13, v13, -0x1

    goto :goto_2d

    :cond_41
    if-nez v14, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_2e
    if-ltz v12, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_2f
    if-ltz v13, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_42
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2e

    :cond_43
    add-int/lit8 v13, v13, -0x1

    goto :goto_2f

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_27

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_25

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_30
    if-ltz v9, :cond_5a

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v19

    if-nez v19, :cond_48

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v19

    if-eqz v19, :cond_58

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_31
    if-ltz v11, :cond_59

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v19

    if-eqz v19, :cond_51

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v19

    if-nez v19, :cond_49

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->iWarID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v20

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v19

    if-eqz v19, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :goto_32
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_31

    :cond_4a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_33
    if-ltz v12, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_34
    if-ltz v13, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_4b
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_33

    :cond_4c
    add-int/lit8 v13, v13, -0x1

    goto :goto_34

    :cond_4d
    if-nez v14, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_35
    if-ltz v12, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_36
    if-ltz v13, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_4e
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_35

    :cond_4f
    add-int/lit8 v13, v13, -0x1

    goto :goto_36

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_32

    :cond_51
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_37
    if-ltz v12, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_38
    if-ltz v13, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_52
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_37

    :cond_53
    add-int/lit8 v13, v13, -0x1

    goto :goto_38

    :cond_54
    if-nez v14, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_39
    if-ltz v12, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_3a
    if-ltz v13, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v12, -0x1

    const/4 v14, 0x1

    :cond_55
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_39

    :cond_56
    add-int/lit8 v13, v13, -0x1

    goto :goto_3a

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_32

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_59
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_30

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_3b
    if-ltz v9, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_3c
    if-ltz v11, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3c

    :cond_5b
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3b

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_3d
    if-ltz v9, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    :goto_3e
    if-ltz v11, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v19

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lDemands:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    move-object/from16 v0, v20

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3e

    :cond_5d
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3d
.end method

.method protected final removeProvincesLeftToTake(I)V
    .locals 5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeProvincesLeftToTake: nCivID: , nProvinceID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->provincesLeftToTake:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iProvincesLeftToTakeSize:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final takeProvince(III)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    if-ltz p1, :cond_6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    if-eqz v1, :cond_6

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iLastTakenID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v1, :cond_e

    goto/16 :goto_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, p2, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->addProvincesLeftToTake(I)V

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->addProvincesLeftToTake(I)V

    :cond_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :cond_6
    :goto_2
    move v1, v4

    :goto_3
    return v1

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_8

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->addProvincesLeftToTake(I)V

    :cond_8
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v2, v5

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v1, :cond_a

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->addProvincesLeftToTake(I)V

    :cond_a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v2, v1, :cond_b

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v2, v5

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(III)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->removeProvincesLeftToTake(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    move v1, v3

    goto/16 :goto_3

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    move v1, v4

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->makeDemand_Province(III)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->removeProvincesLeftToTake(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    move v1, v3

    goto/16 :goto_3

    :cond_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->AI_UseVictoryPoints()V

    move v1, v4

    goto/16 :goto_3
.end method

.method protected final takeReleaseVassal(IIII)I
    .locals 10

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1b

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, p1, :cond_19

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_19

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, p3, :cond_1a

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    if-ne v6, p2, :cond_3

    move v3, v4

    :cond_0
    if-ltz v3, :cond_18

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    if-lez v6, :cond_e

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    if-ne v6, p3, :cond_d

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v7

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v6, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeReleaseVassal_TakeControl(II)V

    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_b

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    if-eqz v6, :cond_a

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v6, :cond_9

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-eq v7, v6, :cond_8

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_1
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_5
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_5
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_6

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_7
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_8
    :goto_6
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto/16 :goto_6

    :cond_a
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    goto/16 :goto_7

    :cond_b
    const/4 p3, 0x0

    :cond_c
    :goto_8
    return p3

    :cond_d
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    goto :goto_8

    :cond_e
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v6

    if-ge v7, v6, :cond_f

    const/4 p3, 0x0

    goto :goto_8

    :cond_f
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iput p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v7

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v6, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addReleaseVassal_TakeControl(II)V

    const/4 v2, 0x0

    :goto_9
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    if-eqz v6, :cond_17

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v6, :cond_16

    const/4 v5, 0x0

    :goto_a
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_10

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_10
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_11

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_b
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_13

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_13
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_14

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    :cond_15
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :cond_16
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    :cond_17
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p2, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_18
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1b
    const/4 v0, 0x0

    :goto_c
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_36

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, p1, :cond_34

    const/4 v1, 0x0

    :goto_d
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_34

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v6, p3, :cond_35

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_e
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1c

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    if-ne v6, p2, :cond_1f

    move v3, v4

    :cond_1c
    if-ltz v3, :cond_33

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    if-lez v6, :cond_29

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    if-ne v6, p3, :cond_28

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v7

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v6, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeReleaseVassal_TakeControl(II)V

    const/4 v2, 0x0

    :goto_f
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_27

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    if-eqz v6, :cond_26

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v6, :cond_25

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-eq v7, v6, :cond_24

    const/4 v5, 0x0

    :goto_10
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_20

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_1d

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_1d
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_1e

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_10

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_20
    const/4 v5, 0x0

    :goto_11
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_21

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_21
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_22

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    :cond_23
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_24
    :goto_12
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_25
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    goto/16 :goto_12

    :cond_26
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    goto/16 :goto_13

    :cond_27
    const/4 p3, 0x0

    goto/16 :goto_8

    :cond_28
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    goto/16 :goto_8

    :cond_29
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v7

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    if-le v7, v6, :cond_2a

    const/4 p3, 0x0

    goto/16 :goto_8

    :cond_2a
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iput p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v7

    sub-int v7, v8, v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v6, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addReleaseVassal_TakeControl(II)V

    const/4 v2, 0x0

    :goto_14
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isToTake:Z

    if-eqz v6, :cond_32

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-lez v6, :cond_31

    const/4 v5, 0x0

    :goto_15
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2d

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_2b

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_2b
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_2c

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15

    :cond_2d
    const/4 v5, 0x0

    :goto_16
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v7, v6, :cond_2e

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeDemandOnProvince(I)V

    :cond_2e
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    if-ne v7, v6, :cond_2f

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v8, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iProvinceValue:I

    add-int/2addr v7, v8

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_16

    :cond_30
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    const/4 v7, -0x1

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v7

    iput v7, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    :cond_31
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p3, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->isTaken:I

    :cond_32
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iput p2, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_33
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_36
    move p3, p4

    goto/16 :goto_8
.end method

.method protected final takeVassalize(III)I
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p1, :cond_e

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p2, :cond_d

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWillVassalizeCivID(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_1
    move p2, v4

    :cond_2
    :goto_2
    return p2

    :cond_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_5
    move p2, v4

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-ne v5, v3, :cond_a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWillVassalizeCivID(I)V

    :cond_7
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_9
    move p2, v4

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput p2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addWillVassalizeCivID(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p1, :cond_1d

    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p2, :cond_1c

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-lez v3, :cond_16

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-ne v3, p2, :cond_12

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWillVassalizeCivID(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_10
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_11
    move p2, v4

    goto/16 :goto_2

    :cond_12
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_15

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_13
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_14
    move p2, v4

    goto/16 :goto_2

    :cond_15
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    if-ne v5, v3, :cond_19

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWillVassalizeCivID(I)V

    :cond_16
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_1a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_17
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    :cond_18
    move p2, v4

    goto/16 :goto_2

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_1a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput p2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getVassalization_Cost(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addWillVassalizeCivID(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Provinces()V

    :cond_1b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_PeaceTreaty_Scores()V

    goto/16 :goto_2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_1e
    move p2, p3

    goto/16 :goto_2
.end method

.method protected final takeWarReparations(III)I
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p1, :cond_6

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p2, :cond_5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWarReparationsFromCivID(I)V

    move p2, v4

    :goto_2
    return p2

    :cond_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_1

    move p2, v4

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-ne v5, v3, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWarReparationsFromCivID(I)V

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_4

    move p2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput p2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addWarReparationsFromCivID(I)V

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p1, :cond_e

    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    if-ne v3, p2, :cond_d

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-lez v3, :cond_a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-ne v3, p2, :cond_8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWarReparationsFromCivID(I)V

    move p2, v4

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_9

    move p2, v4

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    if-ne v5, v3, :cond_b

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->removeWarReparationsFromCivID(I)V

    :cond_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    if-ge v3, v5, :cond_c

    move p2, v4

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iput p2, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->getWarReparation_Cost(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iVictoryPointsLeft:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->addWarReparationsFromCivID(I)V

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_f
    move p2, p3

    goto/16 :goto_2
.end method
