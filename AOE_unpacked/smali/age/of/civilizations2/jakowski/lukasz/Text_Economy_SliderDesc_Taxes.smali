.class public Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Economy_SliderDesc_Taxes.java"


# static fields
.field protected static final TEXT2_SCALE:F = 0.85f

.field protected static final TEXT_SCALE:F = 0.7f


# instance fields
.field private iImageID:I

.field private iText2Width:I

.field private sText2:Ljava/lang/String;

.field private tColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iText2Width:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string p3, "PerTurn"

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const p2, 0x3f333333    # 0.7f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iText2Width:I

    return-void
.end method

.method private final getImageScale(FI)F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iTextHeight:I

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
    .locals 7

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction;->bgColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosX()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getWidth()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x3

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getTextWidth()I

    move-result p5

    int-to-float p5, p5

    const v6, 0x3f333333    # 0.7f

    mul-float p5, p5, v6

    float-to-int p5, p5

    sub-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr p4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int p5, p5

    sub-int/2addr p4, p5

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosY()I

    move-result p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getHeight()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    add-int v3, p5, p3

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v4, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    invoke-direct {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v5, p5

    move-object v1, p1

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getWidth()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getTextWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    sub-int/2addr p5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iTextHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->tColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getWidth()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iText2Width:I

    sub-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iTextHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v6

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected setMax(I)V
    .locals 1

    if-nez p1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness1:I

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness2:I

    :goto_0
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->iImageID:I

    if-nez p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Taxes;->tColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setText(Ljava/lang/String;)V

    return-void
.end method
