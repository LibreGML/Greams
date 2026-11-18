.class Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;
.super Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo;
.source "Text_ActionInfo_Cost.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private final getImageScale(I)F
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    div-float v2, v0, p1

    :cond_0
    return v2
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sub-float/2addr p5, v0

    float-to-int p5, p5

    sub-int/2addr p2, p5

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const v1, 0x3f666666    # 0.9f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p5

    int-to-float p5, p5

    const v8, 0x3f4ccccd    # 0.8f

    mul-float p5, p5, v8

    float-to-int p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v4, p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getHeight()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p5, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getHeight()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v8

    float-to-int p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v4, p5, v1

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v8

    float-to-int p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v4, p5, v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getHeight()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v8

    float-to-int p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v4, p5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    invoke-virtual {p5, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;->getTextPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->iTextHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v0, v1, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p3

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosX()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v8

    float-to-int p4, p4

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    invoke-interface {p4}, Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;->getTextPosition()I

    move-result p4

    add-int/2addr p3, p4

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    invoke-direct {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result p5

    mul-float p4, p4, p5

    sub-float/2addr p3, p4

    float-to-int p3, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    sub-int v3, p2, p3

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    invoke-direct {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v4, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    invoke-direct {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Cost;->getImageScale(I)F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method
