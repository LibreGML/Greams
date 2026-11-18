.class Lage/of/civilizations2/jakowski/lukasz/VicotryManager;
.super Ljava/lang/Object;
.source "VicotryManager.java"


# static fields
.field protected static VICTORY_CONTROL_PROVINCES_PERC:I = 0x64

.field protected static VICTORY_LIMIT_OF_TURNS:I = 0x0

.field protected static VICTORY_TECHNOLOGY:F = 0.0f

.field protected static controlProvinces_NumOfProvinces:I = 0x1

.field protected static domination_NumOfCivsInGame:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final checkVictoryConditions()V
    .locals 5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->updateVictoryConditions()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr v3, v4

    sput v3, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_GetCivScore(I)F

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_GetCivScore(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected static final controlProvinces_GetCivScore(I)F
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p0

    int-to-float p0, p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    return p0
.end method

.method protected static final controlProvinces_UpdateNumOfProvinces()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_NumOfProvinces:I

    return-void
.end method

.method protected static final domination_CivScore(I)I
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected static final domination_UpdateNumOfCivs()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_NumOfCivsInGame:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_NumOfCivsInGame:I

    add-int/2addr v2, v0

    sput v2, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_NumOfCivsInGame:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_NumOfCivsInGame:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_NumOfCivsInGame:I

    return-void
.end method

.method protected static getDefault_VcitoryTechnology()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected static technology_BestCiv()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected static turnsLimit_TurnsLeft()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_LIMIT_OF_TURNS:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected static final updateVictoryConditions()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->domination_UpdateNumOfCivs()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->controlProvinces_UpdateNumOfProvinces()V

    return-void
.end method
