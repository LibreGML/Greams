.class Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_FlagAction_Military.java"


# static fields
.field protected static final TEXT_SCALE:F = 0.7f

.field protected static final bgColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private drawSpendings:Z

.field private iSpendingsWidth:I

.field private sSpendings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->bgColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iSpendingsWidth:I

    invoke-virtual/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->initSlider(Ljava/lang/String;IIIIIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getCurrent()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->setCurrent(I)V

    return-void
.end method

.method private final getImageScale(FI)F
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getTextHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->drawSliderBG_UpdateAnimation()V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v11, v11, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v6, v2, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e8ccccd    # 0.275f

    invoke-direct {v1, v11, v11, v11, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3f266666    # 0.65f

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    const/4 v8, 0x1

    add-int/2addr v2, v8

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e333333    # 0.175f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iCurrentPosX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iDifference_CurrentPosX:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iCurrentPosX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iDifference_CurrentPosX:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v6, 0x3f6b851f    # 0.92f

    mul-float v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iCurrentPosX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iDifference_CurrentPosX:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v1, v11, v11, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v13, 0x1

    :goto_0
    const/16 v1, 0xa

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v13, v1, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d23d70a    # 0.04f

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    mul-int v4, v4, v13

    add-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    if-eqz v10, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d3851ec    # 0.045f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v8

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v8

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iCurrentPosX:I

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iDifference_CurrentPosX:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v11, v11, v11, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x8

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v13

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getDrawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v13

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_INFO_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->drawSpendings:Z

    if-eqz v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->sSpendings:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iSpendingsWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iSpendingsWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-direct {p0, v12, v4}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getImageScale(FI)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getSliderHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-direct {p0, v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getImageScale(FI)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-direct {p0, v12, v5}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getImageScale(FI)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-direct {p0, v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getImageScale(FI)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f35c28f    # 0.71f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f51eb85    # 0.82f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSliderHeight()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected setCurrent(I)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setCurrent(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep_Total(I)F

    move-result p1

    float-to-int p1, p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->drawSpendings:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->sSpendings:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->sSpendings:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v0, 0x3f333333    # 0.7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Military;->iSpendingsWidth:I

    return-void
.end method
