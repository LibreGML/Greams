.class Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;
.super Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;
.source "Button_FlagActionSliderStyle_War.java"


# instance fields
.field private backAnimation:Z

.field private fAlphaMod:F

.field private lTime:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->lTime:J

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;-><init>(Ljava/lang/String;IIIIZ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->lTime:J

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getIsHovered()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1e

    sub-long/2addr v6, v8

    const/4 v0, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    const v5, 0x3ca3d70a    # 0.02f

    if-eqz v4, :cond_0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    sub-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    add-float/2addr v1, v5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->lTime:J

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    sub-float v2, v3, v2

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->backAnimation:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->fAlphaMod:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->lTime:J

    :goto_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getTextPos()I

    move-result v2

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v6

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getTextPos()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getTextHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle_War;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v0, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
