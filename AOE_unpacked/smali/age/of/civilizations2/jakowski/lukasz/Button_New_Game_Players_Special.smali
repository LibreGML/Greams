.class Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;
.super Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players;
.source "Button_New_Game_Players_Special.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz p4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextPos()I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextPos()I

    move-result v5

    :goto_0
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v3, v4, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    goto :goto_2

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextPos()I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getTextPos()I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Special;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v3, v4, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_2
    return-void
.end method
