.class Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_EconomyTitle.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3eb33333    # 0.35f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    add-int v7, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getHeight()I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    invoke-direct {p5, v0, v0, v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getHeight()I

    move-result v2

    add-int/2addr p5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getHeight()I

    move-result v1

    add-int/2addr p5, v1

    add-int/lit8 p5, p5, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

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
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_EconomyTitle;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333    # 0.95f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
