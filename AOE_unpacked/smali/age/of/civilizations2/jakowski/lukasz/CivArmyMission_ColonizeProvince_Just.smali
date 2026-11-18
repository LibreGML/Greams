.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_ColonizeProvince_Just.java"


# instance fields
.field private iCivID:I

.field private iColonizeProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->toProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->MISSION_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->TURN_ID:I

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

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iArmy:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->generateColonizeData()Z

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->colonizeWastelandProvince(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Colonization()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->lockTreasury()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canMakeAction(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final generateColonizeData()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v3

    if-gez v3, :cond_0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iProvinceID:I

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->lockTreasury()V

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iProvinceID:I

    if-gez v3, :cond_3

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v2, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected final lockTreasury()V
    .locals 7

    const/4 v6, 0x2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iColonizeProvinceID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getColonizeCost(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iCivID:I

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

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_ColonizeProvince_Just;->iObsolate:I

    goto :goto_0
.end method
