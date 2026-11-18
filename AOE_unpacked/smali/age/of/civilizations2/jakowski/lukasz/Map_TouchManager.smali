.class Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;
.super Ljava/lang/Object;
.source "Map_TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;,
        Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;,
        Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;
    }
.end annotation


# instance fields
.field private actionBrush:Z

.field private actionBrushMove:Z

.field private actionDownPosX:I

.field private actionDownPosY:I

.field private actionMap:Z

.field private enableScaling:Z

.field private iStartMovePosX:I

.field private iStartMovePosY:I

.field private lActionDownTime:J

.field private map_ActionDown_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

.field private map_ActionMove_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

.field private map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

.field private map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

.field private reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

.field private reverseDirectionX2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

.field private reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

.field private reverseDirectionY2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

.field private updateStartMovePosX:Z

.field private updateStartMovePosY:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMap:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->lActionDownTime:J

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->enableScaling:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrushMove:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrush:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->buildReversePosX()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->buildReversePosY()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->buildReversePosX2()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->buildReversePosY2()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->update_ExtraAction()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrush:Z

    return p0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrush:Z

    return p1
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrushMove:Z

    return p0
.end method

.method static synthetic access$102(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrushMove:Z

    return p1
.end method

.method private final actionUp_setActiveProvinceID(II)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosX:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosX:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosY:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    int-to-float v2, p2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosY:I

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setProvinceID(II)V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_PROVINCE:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->PERC_VOLUME_SELECT_PROVINCE:F

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(IF)V

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;->extraAction(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final actionDown(II)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMap:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrush:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionBrushMove:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->getScrollingTheMap()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v1, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosX:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v1, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosY:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionDown_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;->extraAction(II)V

    return-void
.end method

.method protected final actionMove(II)V
    .locals 2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionDownPosY:I

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionUp_setActiveProvinceID(II)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMoveMap(II)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    int-to-float p1, p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollPos(II)V

    return-void
.end method

.method protected final actionMove(IIII)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->enableScaling:Z

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getStartScalePosY()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->startScaleTheMap(IIII)V

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->scaleTheMap(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final actionMoveMap(II)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v2, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosX:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosY:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosX:Z

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v2, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosX:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    int-to-float v2, p2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosY:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosY:Z

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosX:I

    int-to-float p1, p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    invoke-interface {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;->getNewPos(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->iStartMovePosY:I

    int-to-float p2, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr p2, v2

    float-to-int p2, p2

    invoke-interface {v0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;->getNewPos(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionMove_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;->extraAction(II)V

    :goto_0
    return-void
.end method

.method protected final actionUp(II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionUp_setActiveProvinceID(II)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElementID()I

    move-result v0

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->enableScaling:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->resetScaleOfMap(J)V

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->startScrollingTheMap()V

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;->extraAction(II)V

    return-void
.end method

.method protected final buildReversePosX()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReversePosX2()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionX2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    :goto_0
    return-void
.end method

.method protected final buildReversePosY()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReversePosY2()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->reverseDirectionY2:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ReverseDirection2;

    :goto_0
    return-void
.end method

.method protected final getActionDownTime()J
    .locals 2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->lActionDownTime:J

    return-wide v0
.end method

.method protected final getActionMap()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMap:Z

    return v0
.end method

.method protected final setActionDownTime(J)V
    .locals 0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->lActionDownTime:J

    return-void
.end method

.method protected final setActionMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMap:Z

    return-void
.end method

.method protected final setUpdateStartMovePosX(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosX:Z

    return-void
.end method

.method protected final setUpdateStartMovePosY(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->updateStartMovePosY:Z

    return-void
.end method

.method protected final updateEnableScaling()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInAboutMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInInitMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->enableScaling:Z

    return-void
.end method

.method protected final update_ExtraAction()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$9;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$11;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_2
    :goto_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$10;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$14;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectAvailableCivilizations()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$15;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$16;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$17;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$18;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations_Select()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$19;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_TechnologyLevels()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$20;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Happiness()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$21;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_StartingMoney()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$22;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$23;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_WastelandMaps_Edit()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$24;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$25;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_12
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_SetUpArmy()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$27;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Events_SelectProvinces()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$28;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Cores()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$29;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$30;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_16
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_HolyRomanEmpire()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$31;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_18
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SelectProvinces()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$33;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_TradeSelectCiv()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$34;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Relations_Interactive()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$35;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Pacts3()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$36;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Truces()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$37;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Guarantee()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$38;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_DefensivePact()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$39;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_1f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_MilitaryAccess()Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$40;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_20
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Vassals()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$41;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_21
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$42;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto/16 :goto_3

    :cond_22
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCity()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$43;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_23
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Terrain()Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$44;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_GrowthRate()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$45;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_25
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Continents()Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$46;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_26
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Regions()Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$47;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_27
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Regions()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$48;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_28
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$49;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_29
    :goto_1
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_3

    :cond_2a
    :goto_2
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_SetActiveProvinceID_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    :goto_3
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionDown_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$50;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionDown_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_4

    :cond_2b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$51;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionDown_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    :goto_4
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionMove_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$52;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionMove_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_5

    :cond_2c
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$53;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionMove_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    :goto_5
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy_Vassals()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$54;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_6

    :cond_2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$55;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_6

    :cond_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    goto :goto_6

    :cond_2f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$57;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->map_ActionUp_ExtraAction:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;

    :goto_6
    return-void
.end method
