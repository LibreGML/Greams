.class Lage/of/civilizations2/jakowski/lukasz/Button_View;
.super Lage/of/civilizations2/jakowski/lukasz/Button;
.source "Button_View.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    if-eqz p4, :cond_0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right_h:I

    goto :goto_0

    :cond_0
    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    :goto_0
    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getHeight()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    sub-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getWidth()I

    move-result v4

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3f19999a    # 0.6f

    if-eqz p4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextPos()I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextPos()I

    move-result v5

    :goto_0
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getPosY()I

    move-result p2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextPos()I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getTextPos()I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getPosY()I

    move-result p2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v3, v4, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_2
    return-void
.end method

.method protected final getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_View;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_TOP_VIEWS_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method
