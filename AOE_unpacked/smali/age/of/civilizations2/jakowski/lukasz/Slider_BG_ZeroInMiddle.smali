.class Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_BG_ZeroInMiddle.java"


# direct methods
.method protected constructor <init>(IIIIIII)V
    .locals 9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>()V

    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-super/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getCurrent()I

    move-result v0

    const v1, 0x3f2e147b    # 0.68f

    const v2, 0x3f7851ec    # 0.97f

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f2e147b    # 0.68f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getCurrent()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getWidth()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    sub-int v6, v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getWidth()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    sub-int v6, v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getWidth()I

    move-result v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    sub-int v6, v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_1
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosX()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->iCurrentPosX:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v4, v0, p3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG_ZeroInMiddle;->drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
