.class Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;
.source "Button_Statistics_Gold.java"


# instance fields
.field private sGold:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;-><init>(Ljava/lang/String;IIIII)V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->sGold:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getPosX()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    invoke-interface {v3}, Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-static {p1, v0, v2, v3, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->sGold:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getPosX()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Gold;->iTextHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v5

    float-to-int v1, v2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
