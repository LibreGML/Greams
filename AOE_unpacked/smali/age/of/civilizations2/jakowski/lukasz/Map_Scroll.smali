.class Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;
.super Ljava/lang/Object;
.source "Map_Scroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;,
        Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;
    }
.end annotation


# static fields
.field protected static final SCROLL_SLOW:F = 0.97f


# instance fields
.field private backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

.field private enableBackgroundAnimation:Z

.field private fScrollNewPosX:F

.field private fScrollNewPosY:F

.field private iPlayerID:I

.field private iScrollEvent_PosX:I

.field private iScrollEvent_PosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iStepID:I

.field private moveMapDirection:Z

.field private moveMapTime:J

.field private reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

.field private reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

.field private scrollEvent:Z

.field private scrollingTheMap:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapDirection:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->enableBackgroundAnimation:Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->buildReverseDirectionX()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->buildReverseDirectionY()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    return p0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;I)I
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    return p1
.end method

.method static synthetic access$004(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    return v0
.end method

.method static synthetic access$008(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iPlayerID:I

    return v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)J
    .locals 2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;J)J
    .locals 0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapDirection:Z

    return p0
.end method

.method protected static final changeAnimationPos(II)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    int-to-float p0, p1

    const/high16 p1, 0x41700000    # 15.0f

    :goto_0
    mul-float p0, p0, p1

    div-float/2addr p0, v0

    return p0

    :pswitch_1
    int-to-float p0, p1

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_0

    :pswitch_2
    int-to-float p0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_0

    :pswitch_3
    int-to-float p0, p1

    const/high16 p1, 0x40200000    # 2.5f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final setScrollEvent_Pos(II)V
    .locals 2

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollEvent_PosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollEvent_PosY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0xd0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    return-void
.end method


# virtual methods
.method protected final buildReverseDirectionX()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReverseDirectionY()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected getScrollingTheMap()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    return v0
.end method

.method protected final resetScrollInfo()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    return-void
.end method

.method protected final setScrollEvent(I)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent_Pos(II)V

    return-void
.end method

.method protected final setScrollEvent_ToPosition(II)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

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

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent_Pos(II)V

    return-void
.end method

.method protected final setScrollPos(II)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY:I

    return-void
.end method

.method protected final startScrollingTheMap()V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    if-ltz v0, :cond_6

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v2, :cond_1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40800000    # 4.0f

    :goto_0
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v5

    const/4 v5, -0x1

    const/high16 v6, 0x3fa00000    # 1.25f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v6

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionX:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v2, v2

    mul-float v4, v2, v3

    :cond_4
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v4, v4, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v6

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->reverseDirectionY:Z

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    int-to-float v2, v5

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollPosX2:I

    if-eq v0, v2, :cond_8

    if-le v0, v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->updateMoveMapDirection(Z)V

    :cond_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->resetScrollInfo()V

    return-void
.end method

.method protected final stopScrollingTheMap()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->resetScrollInfo()V

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    return-void
.end method

.method protected final update()V
    .locals 5

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollEvent_PosX:I

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iScrollEvent_PosY:I

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->iStepID:I

    if-ne v0, v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollEvent:Z

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->scrollingTheMap:Z

    if-eqz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f7851ec    # 0.97f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionX:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    float-to-int v4, v4

    invoke-interface {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;->getNewPos(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosX:F

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->reverseDirectionY:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    float-to-int v3, v3

    invoke-interface {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;->getNewPos(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->fScrollNewPosY:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;->updateBackgroundAnimation()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final updateEnableBackroundAnimation()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign_Select()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations_Select()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_WastelandMap()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_SetUpArmy()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_TechnologyLevels()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Preview()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_PalletOfColors()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_StartingMoney()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Happiness()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInAboutMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInStartGameMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInEndGameMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectMapType()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCustomizeAlliance()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectAvailableCivilizations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCivilization()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCity()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewContinent()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Create_DiplomacyPackage()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_TerrainAdd()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_ReligionAdd()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInChooseScenario()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettingsProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Terrain()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Continents()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_GrowthRate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmyPosition()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_TradeZones()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_TradeZones_Edit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_WastelandMaps_Edit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Edit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Connections()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ProvinceBackground()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_SeaProvinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_PortPosition()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewRegion()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Regions()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInDownloadPallets()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadSuggestedOwners()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadPreDefinedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Cores()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPalletOfCivsColorsEdit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Events_SelectProvinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Regions()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivlizationView()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPrintAMap()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame_Civilizations_Select()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getCreateScenario_ScenarioAge()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_HolyRomanEmpire()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SelectProvinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ShowProvinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_TradeSelectCiv()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectFormable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectClaimant()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->enableBackgroundAnimation:Z

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->enableBackgroundAnimation:Z

    if-eqz v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNewGamePlayers()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

    goto :goto_1

    :cond_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

    goto :goto_1

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->backgroundAnimation:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;

    :goto_1
    return-void
.end method

.method protected final updateMoveMapDirection(Z)V
    .locals 2

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapDirection:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->moveMapTime:J

    return-void
.end method
