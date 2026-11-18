.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_RegroupAfterRecruitment_War.java"


# instance fields
.field protected iTurnsRequiredToMoveToFrontLine:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iTurnsRequiredToMoveToFrontLine:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iArmy:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->toProvinceID:I

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->MISSION_ID:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    invoke-direct {v0, p1, v1, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iTurnsRequiredToMoveToFrontLine:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->TURN_ID:I

    const/16 v1, 0xf

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iObsolate:I

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->toProvinceID:I

    if-eq v0, v1, :cond_0

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ToTheFront;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->toProvinceID:I

    invoke-direct {v7, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ToTheFront;-><init>(III)V

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v0

    if-ne v0, v5, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->toProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iArmy:I

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iProvinceID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iArmy:I

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setFromProvinceID(I)V

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->removeRoute(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->iArmy:I

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setNumOfUnits(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method protected canMakeAction(II)Z
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment_War;->TURN_ID:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
