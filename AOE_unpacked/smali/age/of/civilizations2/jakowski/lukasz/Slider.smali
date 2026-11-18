.class Lage/of/civilizations2/jakowski/lukasz/Slider;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Slider.java"


# instance fields
.field private iCurrent:I

.field public iCurrentPosX:I

.field protected iDifference_CurrentPosX:I

.field private iDifference_PosX:I

.field protected iMax:I

.field protected iMin:I

.field private iTextHeight:I

.field private iTextWidth:I

.field private lTime:J

.field private sText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    return-void
.end method

.method protected constructor <init>(IIIIIII)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextWidth:I

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    invoke-virtual/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method private final updateCurrentPosX()V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->drawSliderBG_UpdateAnimation()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    add-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    const p5, 0x3fa66666    # 1.3f

    mul-float p4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v0, v0, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, p5

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4, v0, v1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    add-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    add-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    add-int/2addr p4, p5

    add-int v4, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    add-int v5, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    sub-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    sub-int v6, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    add-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result p2

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    sub-int/2addr p2, p3

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    sub-int v4, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method protected final drawSliderBG_UpdateAnimation()V
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    int-to-float v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x43bb8000    # 375.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    const-wide/16 v4, 0x177

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    :cond_1
    return-void
.end method

.method protected drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const p5, 0x3e99999a    # 0.3f

    const v0, 0x3c03126f    # 0.008f

    const v1, 0x3c449ba6    # 0.012f

    const v2, 0x3c656042    # 0.014f

    invoke-direct {p4, v0, v1, v2, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    const p4, 0x3d4ccccd    # 0.05f

    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3d851eb8    # 0.065f

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int/2addr p4, p3

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x2

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getClickable()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {p4, v0, v1, v2, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getTextWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getTextHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f71eb85    # 0.945f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_LEFT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_RIGHT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected final getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    return v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIsScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK3:I

    return v0
.end method

.method protected final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTextHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextHeight:I

    return v0
.end method

.method protected getTextPos()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    return v0
.end method

.method protected getTextWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextWidth:I

    return v0
.end method

.method protected initSlider(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setPosY(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setWidth(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setHeight(I)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateSlider(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->SLIDER:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method

.method protected setCurrent(I)V
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    if-le p1, v1, :cond_0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    if-ge p1, v1, :cond_1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    :goto_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateCurrentPosX()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateTextWidth()V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrentPosX:I

    if-eq v0, p1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->lTime:J

    sub-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method protected setMax(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateTextWidth()V

    :cond_0
    return-void
.end method

.method protected setMin(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateTextWidth()V

    :cond_0
    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateTextWidth()V

    return-void
.end method

.method protected srollByWheel(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setCurrent(I)V

    return-void
.end method

.method protected updateSlider(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getPosX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    int-to-float v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    :cond_0
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMin:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iMax:I

    if-le p1, v0, :cond_2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iCurrent:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateCurrentPosX()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->updateTextWidth()V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_CurrentPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iDifference_PosX:I

    return-void
.end method

.method protected final updateTextWidth()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getDrawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider;->iTextHeight:I

    return-void
.end method
