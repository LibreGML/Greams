.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_ColonizeProvince.java"


# instance fields
.field private iCivID:I

.field private iColonizeProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->MISSION_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->TURN_ID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->generateColonizeData()Z

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 14

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v13, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v3, v4, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    sub-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v12, 0x1a9

    invoke-virtual {v4, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v0

    if-ge v7, v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    :cond_2
    :goto_1
    return v5

    :cond_3
    const/4 v9, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-lez v7, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    move v9, v7

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->action_RecruitArmy()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    invoke-direct {v11, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->action_BuildPort(II)Z

    move-result v0

    if-nez v0, :cond_7

    move v5, v6

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRoute(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    move v5, v6

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->colonizeWastelandProvince(II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Colonization()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    invoke-direct {v2, v3, v4, v6, v12}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/CivArmyMission;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->lockTreasury()V

    move v5, v6

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    goto/16 :goto_1
.end method

.method protected final action_BuildPort(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->constructPort(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->lockTreasury_Port(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->generateColonizeData()Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final action_RecruitArmy()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    if-ge v2, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->generateColonizeData()Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    if-gt v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected canMakeAction(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final generateColonizeData()Z
    .locals 13

    const/4 v9, -0x1

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v9

    if-gez v9, :cond_0

    const/4 v9, 0x0

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/4 v10, 0x1

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Map;->iNumOfBasins:I

    if-ge v1, v9, :cond_1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v9

    if-ge v1, v9, :cond_2

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBasinID()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v1, v9, :cond_5

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v9

    if-lez v9, :cond_3

    const/4 v2, 0x0

    :goto_4
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v9

    if-ge v2, v9, :cond_3

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBasinID()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_5
    if-ltz v1, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_6
    if-ltz v2, :cond_9

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v9

    if-lez v9, :cond_6

    if-gez v5, :cond_7

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v7

    :cond_6
    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v9

    if-le v7, v9, :cond_8

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v7

    goto :goto_7

    :cond_8
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v9

    if-ne v7, v9, :cond_6

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    const/16 v10, 0x32

    if-ge v9, v10, :cond_6

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v7

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_a
    if-ltz v5, :cond_c

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v9

    if-lez v9, :cond_b

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    :goto_8
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v9

    if-lez v9, :cond_c

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->lockTreasury()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    goto :goto_8

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_9
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v1, v9, :cond_f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v9

    if-nez v9, :cond_d

    const/4 v2, 0x0

    :goto_a
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v9

    if-ge v2, v9, :cond_d

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBasinID()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_16

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_b
    if-ltz v1, :cond_14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_c
    if-ltz v2, :cond_13

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v9

    if-lez v9, :cond_10

    if-gez v5, :cond_11

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v7

    :cond_10
    :goto_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_11
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v9

    if-le v7, v9, :cond_12

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v7

    goto :goto_d

    :cond_12
    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v9

    if-ne v7, v9, :cond_10

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    const/16 v10, 0x32

    if-ge v9, v10, :cond_10

    move v5, v1

    move v6, v2

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v7

    goto :goto_d

    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_14
    if-ltz v5, :cond_16

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v9

    if-lez v9, :cond_15

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    :goto_e
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;-><init>(III)V

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v9

    if-lez v9, :cond_16

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->toProvinceID:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_PortToBuild;->getRouteSize()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->lockTreasury()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v9, 0x2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iArmy:I

    goto :goto_e

    :cond_16
    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iProvinceID:I

    if-gez v9, :cond_17

    const/4 v9, 0x0

    iput v9, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/4 v10, 0x1

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method protected final lockTreasury()V
    .locals 7

    const/4 v6, 0x2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iColonizeProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getColonizeCost(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    long-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    goto :goto_0
.end method

.method protected final lockTreasury_Port(I)V
    .locals 7

    const/4 v6, 0x2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    long-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince;->iObsolate:I

    goto :goto_0
.end method
