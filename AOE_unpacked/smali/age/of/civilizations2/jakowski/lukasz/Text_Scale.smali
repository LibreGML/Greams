.class Lage/of/civilizations2/jakowski/lukasz/Text_Scale;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Scale.java"


# instance fields
.field private fScale:F


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIF)V
    .locals 7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, p5

    float-to-int v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getPosX()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->iTextPositionX:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->iTextHeight:I

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->fScale:F

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
