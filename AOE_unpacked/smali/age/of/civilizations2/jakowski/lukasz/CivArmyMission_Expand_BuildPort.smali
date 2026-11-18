.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_Expand_BuildPort.java"


# instance fields
.field protected iBuildPortInProvinceID:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iBuildPortInProvinceID:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iArmy:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iBuildPortInProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->toProvinceID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->MISSION_ID:I

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    invoke-direct {p2, p1, p4, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->TURN_ID:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->toProvinceID:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->toProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->toProvinceID:I

    invoke-direct {v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iBuildPortInProvinceID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iBuildPortInProvinceID:I

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->action_BuildPort(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->toProvinceID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result p1

    return p1

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iProvinceID:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->setFromProvinceID(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->removeRoute(I)V

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iArmy:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->setNumOfUnits(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method protected final action_BuildPort(II)Z
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v0, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AoC"

    invoke-interface {v0, v4, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->constructPort(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    add-int/2addr p1, v1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->lockTreasury_Port(II)V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method protected canMakeAction(II)Z
    .locals 0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->TURN_ID:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final lockTreasury_Port(II)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f866666    # 1.05f

    mul-float p2, p2, v0

    float-to-int p2, p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v1

    long-to-float p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Expand_BuildPort;->iObsolate:I

    :cond_1
    :goto_0
    return-void
.end method
