.class Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Difficulty_Level.java"


# static fields
.field protected static final COLOR_BG:Lcom/badlogic/gdx/graphics/Color;

.field protected static final COLOR_BG_DIFF:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private fPercentage:F

.field protected iCurrentPosX:I

.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3d60e0e1

    const v3, 0x3d989899

    const v4, 0x3df0f0f1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->COLOR_BG:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d20a0a1

    const v3, 0x3d40c0c1

    const v4, 0x3d888889

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->COLOR_BG_DIFF:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(IIIIF)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->setPosY(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->setWidth(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->setHeight(I)V

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->updateSlider(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->lTime:J

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->BUTTON:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->lTime:J

    const-wide/16 v2, 0x1a9

    add-long/2addr v0, v2

    const/4 v2, 0x1

    cmp-long v3, p4, v0

    if-gez v3, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    mul-float p4, p4, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->lTime:J

    sub-long/2addr v0, v3

    long-to-float p5, v0

    const v0, 0x43d48000    # 425.0f

    div-float/2addr p5, v0

    mul-float p4, p4, p5

    float-to-int p4, p4

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    int-to-float p4, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    mul-float p5, p5, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    mul-float p4, p4, p5

    float-to-int p4, p4

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    :goto_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->COLOR_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    add-int v6, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->COLOR_BG_DIFF:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    sub-int/2addr p4, v2

    add-int v6, p4, p3

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->iCurrentPosX:I

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x2

    add-int v3, p4, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result p4

    add-int/lit8 v5, p4, -0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v5, p4, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v5, p4, p5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int v4, p4, p5

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected getCurrent()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected setCurrent(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->fPercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Difficulty_Level;->lTime:J

    return-void
.end method
