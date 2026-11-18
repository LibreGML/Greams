.class Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Stats;
.source "Button_Stats_Image.java"


# instance fields
.field private iImageID:I


# direct methods
.method protected constructor <init>(ILjava/lang/String;FIIIIZZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats;-><init>(Ljava/lang/String;FIIIIZZ)V

    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    move v0, p1

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    return-void
.end method

.method private final getImageScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getTextPos()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v4

    mul-float v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v6, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->FONT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getTextPos()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v0, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->sText:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iMinWidth:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->setWidth(I)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->FONT_SCALE:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->FONT_SCALE:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iTextHeight:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats;->getWidth()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iTextWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iTextWidth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->getImageScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image;->setWidth(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
