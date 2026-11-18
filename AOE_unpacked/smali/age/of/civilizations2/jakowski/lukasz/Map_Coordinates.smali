.class Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;
.super Ljava/lang/Object;
.source "Map_Coordinates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;
    }
.end annotation


# instance fields
.field private disableMovingTheMap:Z

.field private iMaxPosScaledY:I

.field private iMaxPosY:I

.field private iMinPosScaledX:I

.field private iMinPosScaledY:I

.field private iMinPosY:I

.field private iNewPosX:I

.field private iNewPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iSecondSideOfMap_TranslateX:I

.field private secondSideOfMap:Z

.field private worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->secondSideOfMap:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iSecondSideOfMap_TranslateX:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->disableMovingTheMap:Z

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->secondSideOfMap:Z

    return p0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;Z)Z
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->secondSideOfMap:Z

    return p1
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    return p0
.end method

.method static synthetic access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    return p1
.end method

.method static synthetic access$202(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iSecondSideOfMap_TranslateX:I

    return p1
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    return p0
.end method

.method static synthetic access$302(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    return p1
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledX:I

    return p0
.end method


# virtual methods
.method protected final centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;ZZ)V

    return-void
.end method

.method protected final centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;ZZ)V
    .locals 5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sub-float/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-nez p4, :cond_0

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p4, p4, v1

    if-lez p4, :cond_4

    :cond_0
    cmpg-float p4, v0, v2

    if-gez p4, :cond_2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    cmpg-float p4, v0, p4

    if-gez p4, :cond_1

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    goto :goto_0

    :cond_1
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    goto :goto_0

    :cond_2
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    cmpg-float p4, v2, p4

    if-gez p4, :cond_3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    invoke-virtual {p4, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    goto :goto_0

    :cond_3
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object p3

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result p4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v0

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p1

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p3, p4, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent_ToPosition(II)V

    goto :goto_1

    :cond_5
    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p3

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result p4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v0

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p4, v0

    float-to-int p4, p4

    neg-int p4, p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p3

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p1

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p2, p2

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result p4

    div-float/2addr p2, p4

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    neg-int p1, p1

    invoke-virtual {p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    :goto_1
    return-void
.end method

.method protected final centerToCapital_OrMetProvinceCivID(I)V
    .locals 4

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method protected final centerToCivilizationBox(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToCivilizationBox(IZZ)V

    return-void
.end method

.method protected final centerToCivilizationBox(IZZ)V
    .locals 6

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v4

    if-le v3, v4, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_0
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v4

    if-le v3, v4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_1
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_2
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0, v0, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;ZZ)V

    :cond_5
    return-void
.end method

.method protected final centerToCivilizationBox_FogOfWar(IZ)V
    .locals 6

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v4

    if-le v3, v4, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_0
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v4

    if-le v3, v4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_1
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_2
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0, v0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;Z)V

    :cond_5
    return-void
.end method

.method protected final centerToCivilizationBox_Timeline(IZ)V
    .locals 7

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_4

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v6

    if-le v5, v6, :cond_0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_0
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v6

    if-le v5, v6, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_1
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v6

    if-ge v5, v6, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V

    :cond_2
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v6

    if-ge v5, v6, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosY(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_5
    if-lez v4, :cond_6

    invoke-virtual {p0, v0, v1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToBox(Lage/of/civilizations2/jakowski/lukasz/Point_XY;Lage/of/civilizations2/jakowski/lukasz/Point_XY;ZZ)V

    :cond_6
    return-void
.end method

.method protected final centerToMinimapClick(II)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Width:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Height:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosX:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr v3, p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosY:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    add-int/2addr p1, p2

    invoke-virtual {v2, v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent_ToPosition(II)V

    return-void
.end method

.method protected final centerToProvinceID(I)V
    .locals 1

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final centerToRandomMapPosition()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomPointToCenterTheMap()Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v2

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateMapPos()V

    return-void
.end method

.method protected final checkPositionOfMapX()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    neg-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    if-lez v0, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected final checkPositionOfMapY()V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    neg-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected final getDisableMovingMap()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->disableMovingTheMap:Z

    return v0
.end method

.method protected final getNewPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    return v0
.end method

.method protected final getNewPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    return v0
.end method

.method protected final getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    return v0
.end method

.method protected final getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    return v0
.end method

.method protected final getSecondSideOfMap()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->secondSideOfMap:Z

    return v0
.end method

.method protected final getSecondSideOfMap_MoveX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iSecondSideOfMap_TranslateX:I

    return v0
.end method

.method protected final setDisableMovingMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->disableMovingTheMap:Z

    return-void
.end method

.method protected final setNewPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    return-void
.end method

.method protected final setNewPosY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    return-void
.end method

.method protected final setStartingPosX(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    return-void
.end method

.method protected final setStartingPosY(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    return-void
.end method

.method protected final update()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateMapPos()V

    return-void
.end method

.method protected final updateMapPos()V
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosX:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;->updateMapPosX()V

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    if-eq v0, v1, :cond_3

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-le v0, v1, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosScaledY:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iNewPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iPosY:I

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapY()V

    :cond_3
    return-void
.end method

.method protected final updateMinMaxPosY()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_WastelandMap()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    goto :goto_2

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    goto :goto_2

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Edit()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    goto :goto_2

    :cond_5
    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    goto :goto_2

    :cond_6
    :goto_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosY:I

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivlizationView()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->map_border:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->map_border:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosScaledY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapWorldMap(I)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->map_border:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledX:I

    goto :goto_4

    :cond_8
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledX:I

    goto :goto_4

    :cond_9
    :goto_3
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMaxPosScaledY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->iMinPosScaledX:I

    :goto_4
    return-void
.end method

.method protected final updateSecondSideOfMap()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;->updateSecondSideOfMap()V

    return-void
.end method

.method protected final updateWorldMap()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;

    :goto_0
    return-void
.end method
