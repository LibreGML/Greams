.class Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Perc;
.source "Slider_LR_Flag.java"


# instance fields
.field private iCivID:I


# direct methods
.method protected constructor <init>(IIIIIIII)V
    .locals 9

    const-string v1, ""

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Perc;-><init>(Ljava/lang/String;IIIIIII)V

    move v1, p1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->iCivID:I

    return-void
.end method


# virtual methods
.method protected drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->iCivID:I

    invoke-virtual {p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosX()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->iCivID:I

    invoke-virtual {p5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p5, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f71eb85    # 0.945f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, p5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getWidth()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getTextWidth()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getTextHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v1, 0x3feccccd    # 1.85f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v3, v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Flag;->getColorLEFT()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x4019999a    # 2.4f

    mul-float v1, v1, v4

    invoke-direct {p3, v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
