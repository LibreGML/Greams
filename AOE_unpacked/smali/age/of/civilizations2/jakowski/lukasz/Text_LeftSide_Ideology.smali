.class Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;
.super Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;
.source "Text_LeftSide_Ideology.java"


# instance fields
.field private iCurrent:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f333333    # 0.7f

    if-gez p5, :cond_0

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosX()I

    move-result p5

    add-int v4, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p5, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr p5, v3

    add-int v5, p5, p3

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v3

    mul-float p5, p5, v3

    float-to-int v6, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v3

    mul-float p5, p5, v3

    float-to-int v7, p5

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    invoke-virtual {p5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v2, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    goto/16 :goto_0

    :cond_0
    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {p5, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosX()I

    move-result p5

    add-int v4, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p5, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr p5, v3

    add-int v5, p5, p3

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {p5, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v3

    mul-float p5, p5, v3

    float-to-int v6, p5

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {p5, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v3

    mul-float p5, p5, v3

    float-to-int v7, p5

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    invoke-virtual {p5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v2, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    if-gez p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    return v0
.end method

.method protected getPosX()I
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    if-gez v0, :cond_0

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;->getPosX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0
.end method

.method protected getWidth()I
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    const v1, 0x3f333333    # 0.7f

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getTextWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getTextWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_0
.end method

.method protected setCurrent(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Ideology;->iCurrent:I

    return-void
.end method
