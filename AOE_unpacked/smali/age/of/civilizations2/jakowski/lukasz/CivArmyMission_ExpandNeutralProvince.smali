.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_ExpandNeutralProvince.java"


# instance fields
.field private iCivID:I

.field private iConquerProvinceID:I

.field private iRangeOfRegroup:I

.field private iRegroupArmyPlace:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    const/4 v1, 0x3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRangeOfRegroup:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->toProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->MISSION_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->TURN_ID:I

    const/4 p2, 0x4

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    const/4 p2, 0x0

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iArmy:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->action(I)Z

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v10, p1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    const/4 v2, -0x1

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    return v12

    :cond_0
    const/4 v13, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    if-ne v3, v4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    return v12

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v1

    int-to-long v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v1

    int-to-long v5, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v7

    const-wide/16 v14, 0x5

    div-long/2addr v7, v14

    add-long/2addr v5, v7

    const/4 v9, 0x5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    add-int/2addr v3, v9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x5

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    add-int/2addr v1, v12

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    :goto_1
    if-ltz v1, :cond_6

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v3, v5, :cond_8

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    if-le v4, v12, :cond_9

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    add-int/2addr v3, v9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_9
    move/from16 v17, v3

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v16, v3

    move/from16 v18, v4

    invoke-virtual/range {v14 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iProvinceID:I

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iObsolate:I

    return v12

    :cond_a
    return v13

    :cond_b
    invoke-interface {v8}, Ljava/util/List;->clear()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    :goto_3
    if-ltz v1, :cond_d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_c

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v1

    const/16 v16, 0x4

    add-int/lit8 v1, v1, 0x4

    if-ge v1, v2, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    :goto_5
    if-lez v1, :cond_f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_e

    move v2, v1

    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_f
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    const/4 v6, 0x0

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_12

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v9, 0x1

    const/16 v18, 0x0

    move/from16 v5, p1

    move/from16 v19, v6

    move v6, v9

    move-object v9, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-nez v1, :cond_11

    return v13

    :cond_11
    add-int/lit8 v6, v19, 0x1

    move-object v7, v9

    const/4 v9, 0x5

    goto :goto_6

    :cond_12
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    if-gez v1, :cond_13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iArmy:I

    goto/16 :goto_7

    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-eq v1, v10, :cond_14

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iArmy:I

    goto :goto_7

    :cond_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_15

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v21

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v22, v3

    invoke-virtual/range {v18 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    :cond_15
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iArmy:I

    :goto_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isMovingUnitsToProvinceID_Num(I)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isRegoupingArmy_ToProvinceID(I)I

    move-result v2

    sub-int v9, v1, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v1

    if-le v1, v9, :cond_25

    if-lez v9, :cond_24

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRangeOfRegroup:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p1

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move/from16 v18, v9

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAllNeighboringProvincesInRange_WithArmyToRegroup(IIIZZLjava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    :goto_8
    if-ltz v1, :cond_16

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_16
    move/from16 v9, v18

    if-le v2, v9, :cond_1f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move/from16 v16, v9

    move v9, v1

    :goto_9
    if-ltz v9, :cond_1e

    const/4 v1, 0x0

    :goto_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_18

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_1c

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iProvinceID:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-direct {v7, v10, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    if-ne v1, v12, :cond_1a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iProvinceID:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    goto :goto_c

    :cond_19
    return v13

    :cond_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iProvinceID:I

    invoke-virtual {v7, v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    const/4 v6, 0x1

    const/16 v17, 0x0

    move/from16 v5, p1

    move-object v14, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v1

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setFromProvinceID(I)V

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->removeRoute(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setNumOfUnits(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces_Army;->iArmy:I

    :goto_c
    sub-int v16, v16, v1

    goto :goto_d

    :cond_1b
    return v13

    :cond_1c
    :goto_d
    if-gez v16, :cond_1d

    return v13

    :cond_1d
    add-int/lit8 v9, v9, -0x1

    const-wide/16 v14, 0x5

    goto/16 :goto_9

    :cond_1e
    move/from16 v9, v16

    goto/16 :goto_10

    :cond_1f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    if-lt v1, v2, :cond_24

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAllNeighboringProvincesInRange_Recruit(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    if-ltz v2, :cond_20

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-ne v2, v10, :cond_20

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-direct {v2, v3, v12}, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_24

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_22

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result v4

    if-ge v3, v4, :cond_21

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result v2

    move v3, v2

    move v2, v12

    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_22
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v6

    if-lez v6, :cond_23

    const/4 v6, 0x4

    goto :goto_f

    :cond_23
    const/4 v6, 0x5

    :goto_f
    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy_BasedOnProvinceID(I)I

    move-result v3

    if-lez v3, :cond_24

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRegroupArmyPlace:I

    invoke-direct {v5, v10, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_RegroupAfterRecruitment;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return v13

    :cond_25
    move-object/from16 v19, v8

    :goto_10
    if-lez v9, :cond_2c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    div-long/2addr v1, v3

    long-to-int v2, v1

    if-le v2, v9, :cond_2b

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    :goto_11
    if-ltz v1, :cond_27

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v2

    if-le v2, v9, :cond_26

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    move-object/from16 v3, v19

    :goto_12
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v19, v3

    goto :goto_11

    :cond_27
    move-object/from16 v3, v19

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    :goto_13
    if-lez v1, :cond_29

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v4

    if-le v3, v4, :cond_28

    move v2, v1

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_29
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    add-int/2addr v9, v4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v9, v3

    invoke-virtual {v1, v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    goto :goto_14

    :cond_2a
    const/4 v4, 0x5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v9, v4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v9, v3

    invoke-virtual {v2, v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy_AI(II)Z

    return v13

    :cond_2b
    const/4 v1, 0x6

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iRangeOfRegroup:I

    :cond_2c
    :goto_14
    const/4 v1, 0x0

    :goto_15
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iConquerProvinceID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v6

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_16

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2e
    :goto_16
    return v13
.end method

.method protected onRemove()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ExpandNeutralProvince;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/4 v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    return-void
.end method
