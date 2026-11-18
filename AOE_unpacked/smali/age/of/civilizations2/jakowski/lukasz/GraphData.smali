.class Lage/of/civilizations2/jakowski/lukasz/GraphData;
.super Ljava/lang/Object;
.source "GraphData.java"


# static fields
.field private static final ALPHA_CIV_LINE:F = 0.8f

.field protected static final ANIMATION_TIME:I = 0x2ee


# instance fields
.field private backAnimation:Z

.field private drawData:Z

.field private iBeginTurnID:I

.field private iCivID:I

.field private iPointsSize:I

.field private lGraphLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/GraphLine;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private visible:Z


# direct methods
.method protected constructor <init>(ILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->visible:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lPointsY:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lGraphLines:Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iBeginTurnID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f4ccccd    # 0.8f

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    if-eqz p6, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v4, 0x3f4ccccd    # 0.8f

    :goto_0
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    :goto_1
    const p6, 0x3d70f0f1

    invoke-direct {v2, p6, p6, p6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    const/4 p6, 0x0

    :goto_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge p6, v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lGraphLines:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GraphLine;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iBeginTurnID:I

    add-int/2addr v1, p6

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1, p3, p5}, Lage/of/civilizations2/jakowski/lukasz/GraphLine;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method


# virtual methods
.method protected final buildGraph(IIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lGraphLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lGraphLines:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/GraphLine;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iBeginTurnID:I

    add-int/2addr v3, v0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v4, p1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    mul-float v5, v5, v4

    sub-int v7, p3, p2

    int-to-float v7, v7

    div-float/2addr v5, v7

    div-float/2addr v5, v6

    sub-float v5, v4, v5

    float-to-int v5, v5

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iBeginTurnID:I

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lPointsY:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v6

    mul-float v9, v9, v4

    div-float/2addr v9, v7

    div-float/2addr v9, v6

    sub-float/2addr v4, v9

    float-to-int v4, v4

    invoke-direct {v2, v3, v5, v8, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphLine;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    move-object v7, p0

    iget-wide v0, v7, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    const-wide/16 v2, 0x2ee

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual/range {p0 .. p9}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto :goto_0

    :cond_0
    sub-int v3, p3, p9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    :goto_0
    return-void
.end method

.method protected final drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    move-object v7, p0

    move v2, p2

    move/from16 v0, p4

    move/from16 v1, p5

    iget-boolean v3, v7, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    const v4, 0x443b8000    # 750.0f

    if-eqz v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int v6, v6, p3

    int-to-float v6, v6

    int-to-float v8, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v7, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v9, v4

    mul-float v8, v8, v9

    float-to-int v4, v8

    sub-int/2addr v0, v4

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v3, v5, v6, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int v6, v6, p3

    int-to-float v6, v6

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v8, v4

    mul-float v0, v0, v8

    float-to-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v3, v5, v6, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sub-int v3, p3, p9

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz p4, :cond_0

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float p4, p4, v4

    goto :goto_0

    :cond_0
    iget-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-eqz p4, :cond_1

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_1
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p4, v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    const/high16 v4, 0x3e800000    # 0.25f

    if-eqz v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3e800000    # 0.25f

    :goto_1
    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const p4, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-eqz v3, :cond_3

    const v3, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_3
    const v3, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-direct {v1, v2, v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const p4, 0x3ecccccd    # 0.4f

    :goto_3
    const v0, 0x3d70f0f1

    invoke-direct {v1, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v10

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-eqz p4, :cond_5

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5

    :cond_5
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v0, v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_5
    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_1
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p4, v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p4, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p4, v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p4, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_6
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    invoke-virtual {p4, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getBackAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    return v0
.end method

.method protected final getBeginTurnID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iBeginTurnID:I

    return v0
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iCivID:I

    return v0
.end method

.method protected final getDrawData()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    return v0
.end method

.method protected final getPointY(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getPointsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->iPointsSize:I

    return v0
.end method

.method protected final getTime()J
    .locals 2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    return-wide v0
.end method

.method protected final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->visible:Z

    return v0
.end method

.method protected final setBackAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    return-void
.end method

.method protected final setDrawData(Z)V
    .locals 8

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-eq p1, v0, :cond_2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->lTime:J

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->backAnimation:Z

    :cond_2
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawData:Z

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/GraphData;->visible:Z

    return-void
.end method
