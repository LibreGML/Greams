.class Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Graph_Circle.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x12c

.field private static final TEXT_SCALE:F = 0.7f


# instance fields
.field protected hideAnimation:Z

.field private iButtonsPosY:I

.field private iDataSize:I

.field private iExtraWidth:I

.field protected isDescriptionActive:Z

.field private lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private moveable:Z


# direct methods
.method protected constructor <init>(IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->hideAnimation:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->moveable:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->setWidth(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->setHeight(I)V

    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_2

    const/4 p5, 0x1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p5, v3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v2, p5

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_2
    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    if-ge p3, p5, :cond_3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    add-int/2addr p4, p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    if-ge p3, p5, :cond_4

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    int-to-float v4, p4

    div-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;-><init>(IF)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->updateMoveable()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->GRAPH_CIRCLE:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    const/4 p1, 0x0

    :goto_4
    :try_start_0
    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    if-ge v1, p2, :cond_6

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getPercentage()F

    move-result p5

    const/4 v0, 0x5

    invoke-direct {p0, p5, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getPercentage(FI)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "%"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    const p4, 0x3f333333    # 0.7f

    mul-float p3, p3, p4

    mul-float p2, p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    mul-float p1, p1, p4

    float-to-int p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    goto :goto_5

    :catch_1
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    :goto_5
    return-void
.end method

.method private final getPercentage(FI)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final updateMoveable()V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getMaxHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getHeight_Perc()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->moveable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->moveable:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 12

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getPosY()I

    move-result v7

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    move-object v11, p0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getWidth_PercStrings(I)I

    move-result v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getHeight_Perc()I

    move-result v9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->drawGraph(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    return-void
.end method

.method protected final drawGraph(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    add-int v7, p6, p2

    add-int v4, p7, p3

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    const/4 v8, 0x0

    if-nez p4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v2, p1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;Z)V

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->hideAnimation:Z

    if-eqz v1, :cond_4

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v2, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, p7

    sub-int v3, v3, p3

    int-to-float v3, v3

    int-to-float v4, v10

    move/from16 v5, p9

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v11, 0x3f333333    # 0.7f

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    add-int v12, p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v11

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    div-float v13, v1, v2

    const/4 v14, 0x0

    :goto_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    if-ge v14, v1, :cond_3

    const v15, 0x3e4ccccd    # 0.2f

    const v8, 0x3ee66666    # 0.45f

    const/high16 v16, 0x40000000    # 2.0f

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v2, v7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v17, p6, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v2, v17, v2

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v2, v17, v2

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v2, v17, v2

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/16 v18, 0x1

    move-object/from16 v2, p1

    const v15, 0x3ee66666    # 0.45f

    move/from16 v8, v18

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v17, v17, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v17, v17, v2

    add-int v3, v17, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int v2, v2, v14

    add-int v2, p7, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_0
    const v15, 0x3ee66666    # 0.45f

    :catch_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v15, p6, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v15

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v15

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v15

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v2, v2, p7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v2, v10

    sub-int v5, v2, p10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v15, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v15, v2

    add-int v3, v15, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int v2, v2, v14

    add-int v2, p7, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v2, p6, p10

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int v2, v2, v14

    add-int v2, p7, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v4

    add-int v4, v2, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lData:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getPercentage()F

    move-result v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getPercentage(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v2, v2, p6

    add-int v2, v2, p10

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v2, v2, p2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int v3, v3, v14

    add-int v3, p7, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v14

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    return-void
.end method

.method protected getAnotherView()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    return v0
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    return v0
.end method

.method protected getHeight_Perc()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v0

    return v0
.end method

.method protected final getMaxHeight()I
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->moveable:Z

    return v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    return v0
.end method

.method protected getWidth()I
    .locals 1

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getWidth_PercStrings(I)I

    move-result v0

    return v0
.end method

.method protected getWidth_PercStrings(I)I
    .locals 7

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    const/high16 v1, 0x43960000    # 300.0f

    const/4 v2, 0x1

    const-wide/16 v3, 0x12c

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v5, v3

    if-ltz v0, :cond_0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->hideAnimation:Z

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v5, v3

    if-ltz v0, :cond_2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iExtraWidth:I

    add-int/2addr p1, v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->hideAnimation:Z

    :cond_3
    return p1
.end method

.method protected setAnotherView(Z)V
    .locals 2

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->isDescriptionActive:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->hideAnimation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->lTime:J

    :goto_0
    return-void
.end method

.method protected setCurrent(I)V
    .locals 3

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getMaxHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getHeight_Perc()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getMaxHeight()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getHeight_Perc()I

    move-result v1

    add-int/2addr p1, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    :cond_1
    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->iButtonsPosY:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    return-void
.end method

.method public setMoveable(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->moveable:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    return-void
.end method
