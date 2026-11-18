.class Lage/of/civilizations2/jakowski/lukasz/TextSlider;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "TextSlider.java"


# instance fields
.field private FONT_SCALE:F

.field private extraPosY:I

.field private fScrollNewMenuPosY:F

.field private iHeightOfSlider:I

.field private iMaxHeight:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iSliderPosY:I

.field private lLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;",
            ">;"
        }
    .end annotation
.end field

.field private moveable:Z

.field private scrollModeY:Z


# direct methods
.method protected constructor <init>(IIII)V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->extraPosY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iMaxHeight:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->init(IIIIIF)V

    return-void
.end method

.method protected constructor <init>(IIIIF)V
    .locals 7

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->extraPosY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iMaxHeight:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->init(IIIIIF)V

    return-void
.end method

.method protected constructor <init>(IIIIIF)V
    .locals 3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->extraPosY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iMaxHeight:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->init(IIIIIF)V

    return-void
.end method

.method private final init(IIIIIF)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT_SLIDER:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iMaxHeight:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->setPosY(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->setWidth(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->setHeight(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->updateMoveable()V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->updateSlider(I)V

    return-void
.end method


# virtual methods
.method protected final addText(Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    move-object v1, v7

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;-><init>(Ljava/lang/String;IILage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;F)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->updateMoveable()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sub-int v3, v3, p3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v5

    neg-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f5cdcdd

    const/high16 v8, 0x3f800000    # 1.0f

    const v3, 0x3f66e6e7

    invoke-direct {v1, v2, v3, v2, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v9, :cond_0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->extraPosY:I

    add-int/2addr v2, v4

    add-int/2addr v2, v12

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v5

    move/from16 v13, p4

    invoke-virtual {p0, v13}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move/from16 v13, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->updateSlider(I)V

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    const v2, 0x3f7851ec    # 0.97f

    mul-float v1, v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    goto :goto_1

    :cond_1
    iput-boolean v10, v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int v4, p4, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v5, p4, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v5, p4, p5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int v4, p4, p5

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected final drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    :try_start_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p4, v1, v1, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v6, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v8, p4, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v6, p4, p3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuMode()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3da3d70a    # 0.08f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e23d70a    # 0.16f

    const v1, 0x3dc8b439

    invoke-direct {p4, v1, v1, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int/2addr p4, p2

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p4

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 v4, p4, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v1

    mul-int p4, p4, v1

    div-int/lit8 p4, p4, 0x64

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int/2addr p4, p2

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getPosY()I

    move-result p2

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v1

    mul-int p4, p4, v1

    div-int/lit8 p4, p4, 0x64

    add-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    return v0
.end method

.method protected getHeight()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iMaxHeight:I

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method protected getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    return v0
.end method

.method protected final scrollTheMenu()V
    .locals 3

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    if-lez v0, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    if-lez v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->fScrollNewMenuPosY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    :cond_0
    return-void
.end method

.method protected final setScrollPosY(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iScrollPosY:I

    return-void
.end method

.method protected final updateMoveable()V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->extraPosY:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->lLine:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->moveable:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    return-void
.end method

.method protected updateSlider(I)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "--------------------"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nSliderPosY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeight(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iHeightOfSlider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->getHeight()I

    move-result p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iHeightOfSlider:I

    sub-int/2addr p1, v2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->scrollModeY:Z

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider;->iSliderPosY:I

    :goto_0
    return-void
.end method
