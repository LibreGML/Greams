.class Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_InGame.java"


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

.method protected constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>()V

    invoke-super/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method private final sliderHeight()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->drawSliderBG_UpdateAnimation()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v1

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    sub-int/2addr v1, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    sub-int v4, v1, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v1

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iCurrentPosX:I

    sub-int/2addr v1, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->iDifference_CurrentPosX:I

    sub-int v4, v1, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method protected drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->sliderHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_0
.end method

.method protected drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 9

    const v6, 0x3feccccd    # 1.85f

    const/high16 v8, 0x3f800000    # 1.0f

    const v4, 0x3f71eb85    # 0.945f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getDrawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getTextHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v4, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getDrawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getTextWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getTextHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_InGame;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x4019999a    # 2.4f

    mul-float/2addr v6, v7

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
