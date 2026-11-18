.class Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Menu_VicotryConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getCurrent()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    const p5, 0x3f4ccccd    # 0.8f

    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getDrawText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getTextWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getTextHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p5

    div-float/2addr v1, v2

    float-to-int p5, v1

    sub-int/2addr p2, p5

    add-int/2addr p2, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p5, 0x3f800000    # 1.0f

    const v1, 0x3f71eb85    # 0.945f

    invoke-direct {p3, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_VicotryConditions$3;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
