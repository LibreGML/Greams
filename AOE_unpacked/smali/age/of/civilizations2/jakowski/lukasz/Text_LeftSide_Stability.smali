.class Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;
.super Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;
.source "Text_LeftSide_Stability.java"


# instance fields
.field private iCurrent:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->iCurrent:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getHeight()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v5, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->iTextHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

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
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x64

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MIN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MAX:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getCurrent()I

    move-result v3

    invoke-static {p1, v2, v3, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getIsHovered()Z

    move-result p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MIN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MAX:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getCurrent()I

    move-result v3

    invoke-static {p1, v2, v3, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->iCurrent:I

    return v0
.end method

.method protected getPosX()I
    .locals 3

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWidth()I
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getTextWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected setCurrent(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->iCurrent:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->iCurrent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Stability;->setText(Ljava/lang/String;)V

    return-void
.end method
