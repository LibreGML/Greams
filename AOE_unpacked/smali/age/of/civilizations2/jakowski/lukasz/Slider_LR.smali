.class Lage/of/civilizations2/jakowski/lukasz/Slider_LR;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_LR.java"


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
.method protected drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f71eb85    # 0.945f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, p5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getWidth()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getTextWidth()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getTextHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v1, 0x3feccccd    # 1.85f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v3, v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x4019999a    # 2.4f

    mul-float v1, v1, v4

    invoke-direct {p3, v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
