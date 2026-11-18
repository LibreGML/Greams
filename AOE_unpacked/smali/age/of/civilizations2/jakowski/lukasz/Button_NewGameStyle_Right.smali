.class public Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;
.super Lage/of/civilizations2/jakowski/lukasz/Button;
.source "Button_NewGameStyle_Right.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 11

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    float-to-int v7, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-super/range {v1 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    if-eqz p4, :cond_0

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_0

    :cond_0
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result p4

    add-int/lit8 v5, p4, -0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3e5c28f6    # 0.215f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result p4

    add-int/lit8 v5, p4, -0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3ea66666    # 0.325f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextPos()I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextPos()I

    move-result v5

    :goto_0
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextPos()I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextPos()I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v3, v4, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_2
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColor_CivInfo_Text(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button;->setText(Ljava/lang/String;)V

    return-void
.end method
