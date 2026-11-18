.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_PrepareForWar.java"


# instance fields
.field protected iTurnsRequiredToMoveToFrontLine:I


# direct methods
.method protected constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iTurnsRequiredToMoveToFrontLine:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iArmy:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->toProvinceID:I

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->MISSION_ID:I

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    invoke-direct {p2, p1, p4, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iTurnsRequiredToMoveToFrontLine:I

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CivArmyMission_PrepareForWar -> INIT: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", LEFT: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iTurnsRequiredToMoveToFrontLine:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AoC"

    invoke-interface {p2, p3, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->toProvinceID:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->toProvinceID:I

    invoke-direct {v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->toProvinceID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result p1

    return p1

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iProvinceID:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setFromProvinceID(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->removeRoute(I)V

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_PrepareForWar;->iArmy:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setNumOfUnits(I)V

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

.method protected canMakeAction(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
