.class Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;
.source "Button_Diplomacy_CallToArms.java"


# static fields
.field private static final FONT_SCALE:F = 0.7f

.field private static final FONT_SCALE2:F = 0.6f


# instance fields
.field private iCivA:I

.field private iDiploCostWidth:I

.field private iImageID:I

.field private sDiploCost:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;IIIII)V
    .locals 9

    move-object v7, p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v8, 0x3f19999a    # 0.6f

    mul-float v1, v1, v8

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;-><init>(Ljava/lang/String;IIIII)V

    const/4 v0, 0x0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iDiploCostWidth:I

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iImageID:I

    move v0, p3

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    move v0, p1

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iImageID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p7

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->sDiploCost:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->sDiploCost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v0, v0, v8

    float-to-int v0, v0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iDiploCostWidth:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x2

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3eb33333    # 0.35f

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v4

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x2

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v8, v0, 0x5

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e8ccccd    # 0.275f

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {p4, v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v6, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v6, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {p4, v0, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v6, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result p4

    add-int/lit8 v7, p4, -0x4

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p4, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result p2

    add-int/lit8 v4, p2, -0x4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iImageID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    const/high16 v6, 0x3f800000    # 1.0f

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    const v7, 0x3f333333    # 0.7f

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v5

    mul-float v1, v1, v5

    float-to-int v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v5

    mul-float v1, v1, v5

    float-to-int v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v5

    mul-float v1, v1, v5

    float-to-int v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iCivA:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    div-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v5

    mul-float v1, v1, v5

    float-to-int v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->sDiploCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->iDiploCostWidth:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    div-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_CallToArms;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    return v0
.end method
