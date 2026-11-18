.class Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_CivInfo.java"


# static fields
.field protected static final FONT_SCALE:F = 0.7f


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->setPosY(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 3

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->iTextHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getHeight()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    return v0
.end method

.method protected getWidth()I
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;->getTextWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method
