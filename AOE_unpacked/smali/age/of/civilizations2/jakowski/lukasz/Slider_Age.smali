.class Lage/of/civilizations2/jakowski/lukasz/Slider_Age;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_Age.java"


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


# virtual methods
.method protected drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->drawSliderBG_UpdateAnimation()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    const p5, 0x3ee66666    # 0.45f

    mul-float p4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v0, v0, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, p5

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4, v0, v1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int v4, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int v4, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3f0ccccd    # 0.55f

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    add-int/2addr p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getWidth()I

    move-result p4

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    sub-int/2addr p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    sub-int v4, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v0, 0x3f266666    # 0.65f

    mul-float p4, p4, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v0

    invoke-virtual {p1, p4, v1, v2, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    add-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getWidth()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    sub-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    sub-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    add-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x4

    sub-int/2addr p4, p5

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getWidth()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    sub-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    sub-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iCurrentPosX:I

    add-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->iDifference_CurrentPosX:I

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getPosY()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_Age;->getHeight()I

    move-result v5

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d40c0c1

    const v2, 0x3d808081

    const v3, 0x3e20a0a1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method
