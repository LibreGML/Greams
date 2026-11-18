.class public Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;
.source "Button_Menu_LR_MainMenu_TextScale_Important.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move/from16 v10, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v11, 0x3f666666    # 0.9f

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float/2addr v4, v1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->iTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr v4, v1

    add-int v4, v4, p3

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p1, v2, v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    div-float/2addr v4, v1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->iTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr v4, v1

    add-int v4, v4, p3

    invoke-virtual {p0, v10}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p1, v2, v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v12, 0x3e99999a    # 0.3f

    const/4 v13, 0x0

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getIsHovered()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_2
    const/high16 v5, 0x3e800000    # 0.25f

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    if-eqz v10, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const v12, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-direct {v1, v13, v13, v13, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Important;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;->setText(Ljava/lang/String;)V

    return-void
.end method
