.class Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Flag.java"


# direct methods
.method protected constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    if-ge v3, v4, :cond_0

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    mul-int v7, v0, v3

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v8, v8, v0

    sub-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    mul-int v7, v0, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v7, v8

    invoke-direct {v4, v5, v7, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel;-><init>(IIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v0, v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x40233333    # 2.55f

    if-ne v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagR:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagG:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagB:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    if-ne v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getR(I)F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagR:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getG(I)F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagG:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getB(I)F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagB:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getR(I)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getG(I)F

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getB(I)F

    move-result p1

    const/4 v4, 0x0

    :goto_0
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v5, v5, v6

    if-ge v4, v5, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getR(I)F

    move-result v5

    cmpl-float v5, v5, v0

    if-nez v5, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getG(I)F

    move-result v5

    cmpl-float v5, v5, v1

    if-nez v5, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getB(I)F

    move-result v5

    cmpl-float v5, v5, p1

    if-nez v5, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagR:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    div-float/2addr v6, v2

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagG:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    div-float/2addr v6, v2

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagB:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    div-float/2addr v6, v2

    invoke-virtual {v5, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .locals 10

    const/4 p3, 0x0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p3, p3, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElementsSize()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuPosY()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    const v1, 0x3e48b439

    invoke-virtual {p1, v1, v1, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v6, v6, v3

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v4

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v4

    add-int v6, v2, v4

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v8, v2, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v4

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v6

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v4

    add-int v6, v2, v4

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v7, v2, v4

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v4

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v4

    add-int v6, v2, v4

    const/4 v7, 0x1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v8, v2, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const v2, 0x3e19999a    # 0.15f

    invoke-virtual {p1, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const/4 v2, 0x1

    :goto_1
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    if-ge v2, v3, :cond_1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v5

    add-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    mul-int v5, v5, v2

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v5

    add-int v7, v3, v5

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v8, v3, v5

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    if-ge v2, v3, :cond_2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v5

    mul-int v5, v5, v2

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v5

    add-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v9, v3, v5

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    mul-int v3, v3, v5

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v3

    add-int v5, v1, v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v6, v1, v3

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x3

    mul-int v3, v3, v5

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v3

    add-int v5, v1, v3

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v6, v1, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    mul-int v3, v3, v5

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v0

    add-int v5, v1, v0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    mul-int v6, v0, v1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v2

    add-int v4, v0, v2

    const/4 v5, 0x1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v0, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x3

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v2

    add-int v4, v0, v2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v0, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getPosY()I

    move-result v0

    add-int v4, p2, v0

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, p2, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
