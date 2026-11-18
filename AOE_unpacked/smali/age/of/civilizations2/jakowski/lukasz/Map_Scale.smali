.class Lage/of/civilizations2/jakowski/lukasz/Map_Scale;
.super Ljava/lang/Object;
.source "Map_Scale.java"


# static fields
.field private static final MAXSCALE:F = 500.0f

.field protected static MINSCALE:F = 0.25f

.field private static final REQUIRED_TIME_TO_RESET_SCALE:S = 0xafs

.field protected static SCALE_ANIMATION_TIME:I = 0x7d

.field protected static STANDARD_SCALE:F = 1.0f


# instance fields
.field private currentScale:F

.field private fDiffrenceScale:F

.field private fMinimapScaleX:F

.field private fMinimapScaleY:F

.field private fScaleAnimation_PercX:F

.field private fScaleAnimation_PercY:F

.field private fScaleBeforeReset:F

.field private fStartScaling_Scale:F

.field private iScaleAnimationTime:J

.field private iStartScaleMapPosX:I

.field private iStartScaleMapPosY:I

.field private iStartScalePosX:I

.field private iStartScalePosX2:I

.field private iStartScalePosY:I

.field private iStartScalePosY2:I

.field private newScale:F

.field private scaleByYAxis:Z

.field private scaleChangeByTouch:Z

.field private scaleMode:Z

.field private startScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleByYAxis:Z

    const/4 v2, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosX:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosY:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fStartScaling_Scale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercX:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercY:F

    return-void
.end method

.method private final resetScaleAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    return-void
.end method

.method private final scaleTheMap(IIFF)V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    const/high16 v1, 0x43160000    # 150.0f

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    if-ge p1, p2, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p0, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewCurrentScaleByTouch(FFF)V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    if-eq v0, p2, :cond_4

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    if-le p1, p2, :cond_3

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_3
    sub-int v0, p2, v0

    :goto_1
    int-to-float p1, v0

    div-float/2addr p1, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr p1, v0

    add-float/2addr v3, p1

    invoke-virtual {p0, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewCurrentScaleByTouch(FFF)V

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    :cond_4
    return-void
.end method

.method private final updateScale()V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fStartScaling_Scale:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    sub-long/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    :cond_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fStartScaling_Scale:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercX:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercY:F

    mul-float v3, v3, v0

    float-to-int v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    div-float/2addr v0, v5

    sub-float/2addr v3, v0

    div-float/2addr v3, v4

    float-to-int v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected final getCurrentScale()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    return v0
.end method

.method protected final getMinimapScaleX()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fMinimapScaleX:F

    return v0
.end method

.method protected final getMinimapScaleY()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fMinimapScaleY:F

    return v0
.end method

.method protected final getMinimapScaled_ScaleX()F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Width:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getMinimapScaled_ScaleY()F
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Height:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScaleMode()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    return v0
.end method

.method protected final getStartScalePosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    return v0
.end method

.method protected final resetScaleInfo()V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetStartScalePosition()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    return-void
.end method

.method protected final resetScaleOfMap(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->getActionDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xaf

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fStartScaling_Scale:F

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    sub-float/2addr v2, v1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    sub-float/2addr v3, v1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->updateScaleAnimation_PercXY(II)V

    const/16 v1, 0x87

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->resetScrollInfo()V

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setActionDownTime(J)V

    return-void
.end method

.method protected final resetStartScalePosition()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    return-void
.end method

.method protected final scaleTheMap(IIII)V
    .locals 2

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleByYAxis:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    add-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-int p2, p3, p4

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-direct {p0, p3, p4, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleTheMap(IIFF)V

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-direct {p0, p1, p2, v0, p3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleTheMap(IIFF)V

    :goto_0
    return-void
.end method

.method protected final scaleTheMap2(IIII)V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX:I

    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    if-ne v0, p1, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    if-eq v0, p3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX2:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    if-eq v0, p4, :cond_7

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX2:I

    if-eq v0, p2, :cond_2

    int-to-float v3, v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX2:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    if-eq v0, p3, :cond_3

    sub-int/2addr v0, p3

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewScale_ByTouch2(FII)V

    goto :goto_4

    :cond_4
    :goto_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX:I

    if-eq v0, p1, :cond_5

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    :goto_2
    div-float/2addr v0, v2

    add-float/2addr v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    if-eq v0, p3, :cond_6

    sub-int/2addr v0, p3

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, v1, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewScale_ByTouch2(FII)V

    :cond_7
    :goto_4
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX2:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosY(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    return-void
.end method

.method protected final setCurrentScale(F)V
    .locals 2

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    return-void
.end method

.method protected final setNewCurrentScaleByButton2(F)V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    add-float/2addr p1, v0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    add-float/2addr v0, p1

    const p1, 0x3f7eb852    # 0.995f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    const p1, 0x3f80a3d7    # 1.005f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_3

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    sub-long/2addr v1, v3

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleAnimation()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    const/16 p1, 0x32

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fStartScaling_Scale:F

    sub-float p1, v0, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iScaleAnimationTime:J

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result p1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->updateScaleAnimation_PercXY(II)V

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->resetScrollInfo()V

    :cond_3
    return-void
.end method

.method protected final setNewCurrentScaleByTouch(FFF)V
    .locals 4

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercX:F

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p1, p1

    div-float/2addr p3, p1

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercY:F

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosX:I

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercX:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosY:I

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p3, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercY:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosX:I

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScaleMapPosY:I

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p3, p3

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScale:F

    div-float/2addr p3, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    div-float/2addr v2, v3

    sub-float/2addr p3, v2

    div-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    :goto_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapY()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapX()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateSecondSideOfMap()V

    :cond_4
    return-void
.end method

.method protected final setNewScale_ByTouch2(FII)V
    .locals 1

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    add-float/2addr p3, p1

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    const/high16 p3, 0x43fa0000    # 500.0f

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    goto :goto_0

    :cond_1
    sget p3, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleChangeByTouch:Z

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    cmpl-float p3, p1, p2

    if-lez p3, :cond_4

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_3

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->currentScale:F

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->newScale:F

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapY()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapX()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateSecondSideOfMap()V

    :cond_4
    return-void
.end method

.method protected final setScaleBeforeReset(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleBeforeReset:F

    return-void
.end method

.method protected final setScaleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    return-void
.end method

.method protected final startScaleTheMap(IIII)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleByYAxis:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleByYAxis:Z

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    :goto_0
    return-void
.end method

.method protected final startScaleTheMap2(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleMode:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosX2:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->iStartScalePosY2:I

    return-void
.end method

.method protected final update()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fDiffrenceScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->updateScale()V

    :cond_0
    return-void
.end method

.method protected final updateMinimapScaleXY()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fMinimapScaleX:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fMinimapScaleY:F

    return-void
.end method

.method protected final updateScaleAnimation_PercXY(II)V
    .locals 1

    int-to-float p1, p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercX:F

    int-to-float p1, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->fScaleAnimation_PercY:F

    return-void
.end method
