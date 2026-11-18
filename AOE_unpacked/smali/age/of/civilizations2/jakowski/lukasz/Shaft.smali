.class public Lage/of/civilizations2/jakowski/lukasz/Shaft;
.super Ljava/lang/Object;
.source "Shaft.java"


# static fields
.field private static final SHAFT_BONUS:[F

.field private static final SHAFT_BUILD_COST:[F

.field private static final SHAFT_BUILD_MOVEMENT_COST:[I

.field private static final SHAFT_CONSTRUCTION:[I

.field private static final SHAFT_NAMES:[Ljava/lang/String;

.field private static final SHAFT_TECH_LEVEL:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Shaft1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Shaft2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Shaft3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Shaft4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Shaft5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Shaft6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Shaft7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Shaft8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Shaft9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Shaft10"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BUILD_COST:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BUILD_MOVEMENT_COST:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_TECH_LEVEL:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_CONSTRUCTION:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ccccccc    # 0.024999999f
        0x3d4ccccc    # 0.049999997f
        0x3dcccccc    # 0.099999994f
        0x3e28f5c3    # 0.165f
        0x3e4ccccc    # 0.19999999f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xe
        0x10
        0x12
        0x18
        0x1a
        0x28
        0x3c
        0x64
        0x64
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f0ccccd    # 0.55f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0x8
        0x9
        0xd
        0x10
        0x15
        0x15
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x41c80000    # 25.0f
        0x425c0000    # 55.0f
        0x42960000    # 75.0f
        0x42960000    # 75.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static buildShaft(II)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfShaft(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Shaft;

    invoke-direct {v2, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Shaft;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static canBuildShaft(I)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static constructShaft(II)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_TechLevel(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildMovementCost(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildCost(II)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildMovementCost(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildCost(II)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Shaft;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_Construction(I)I

    move-result v4

    invoke-direct {v3, p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Shaft;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected static destroyShaft(II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    if-lez v2, :cond_0

    move v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfSupply(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected static getShaft_Bonus(I)F
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BONUS:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method

.method protected static getShaft_BuildCost(II)I
    .locals 14

    const/4 v9, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v10

    if-lt v8, v10, :cond_1

    :try_start_0
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v10

    int-to-float v1, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BUILD_COST:[F

    aget v0, v10, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v9

    int-to-float v3, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v4

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F

    move-result v5

    const v9, 0x3c3c6a7f    # 0.0115f

    mul-float/2addr v9, v2

    add-float/2addr v9, v0

    mul-float/2addr v9, v1

    const v10, 0x3e99999a    # 0.3f

    sub-float v11, v13, v4

    mul-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    add-float v10, v5, v13

    mul-float/2addr v9, v10

    float-to-int v9, v9

    :cond_0
    :goto_1
    return v9

    :cond_1
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v10

    if-gtz v10, :cond_2

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    sget-boolean v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v10, :cond_0

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected static getShaft_BuildMovementCost(I)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_BUILD_MOVEMENT_COST:[I

    aget v1, v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static getShaft_Construction(I)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_CONSTRUCTION:[I

    aget v1, v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static getShaft_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static getShaft_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static getShaft_TechLevel(I)F
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Shaft;->SHAFT_TECH_LEVEL:[F

    aget v1, v2, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
