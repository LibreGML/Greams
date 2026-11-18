.class public Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_ExpandNeutral_Check.java"


# instance fields
.field protected iTurnsRequiredToMoveToFrontLine:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iTurnsRequiredToMoveToFrontLine:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    const/4 p2, -0x1

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->MISSION_ID:I

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    invoke-direct {p2, p1, p4, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iTurnsRequiredToMoveToFrontLine:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->TURN_ID:I

    const/16 p1, 0xf

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iObsolate:I

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    invoke-direct {v0, p1, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;-><init>(III)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getRouteSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->toProvinceID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result p1

    return p1

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iProvinceID:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getRoute(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getRoute(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->setFromProvinceID(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->removeRoute(I)V

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->iArmy:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->setNumOfUnits(I)V

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

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutral_Check;->TURN_ID:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
