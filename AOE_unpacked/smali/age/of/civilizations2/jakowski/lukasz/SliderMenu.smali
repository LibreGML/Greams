.class Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.super Ljava/lang/Object;
.source "SliderMenu.java"


# instance fields
.field private closeable:Z

.field private fScrollNewMenuPosX:F

.field private fScrollNewMenuPosY:F

.field private iHeight:I

.field private iMaxSliderPositionX:I

.field protected iMaxSliderPositionY:I

.field private iMenuElementsSize:I

.field private iMenuPosX:I

.field private iMenuPosY:I

.field private iNewMenuPositionX:I

.field private iNewMenuPositionY:I

.field private iPosX:I

.field private iPosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iWidth:I

.field private menuElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;"
        }
    .end annotation
.end field

.field private scrollModeX:Z

.field private scrollModeY:Z

.field private scrollableX:Z

.field private scrollableY:Z

.field private sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

.field private visible:Z


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->visible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->closeable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY2:I

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeX:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX2:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    return-void
.end method

.method private final getMenuElementIsInView(I)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    if-ge v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getMenuElementIsInView_X(I)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    if-gt v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final resetScrollINFO()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY2:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    return-void
.end method


# virtual methods
.method protected actionClose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected actionElement(I)V
    .locals 0

    return-void
.end method

.method protected beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    invoke-virtual {p0, p1, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V

    new-instance p4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    int-to-float p3, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p4, p2, p3, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    # ALWAYS endClip after beginClip. If drawMenu throws, a leaked ScissorStack
    # keeps GL_SCISSOR_TEST on and the rest of the HUD is clipped away (map-only flash/vanish).
    move v0, p2

    move v1, p3

    move v2, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :try_start_draw_menu
    invoke-virtual {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    :try_end_draw_menu
    .catchall {:try_start_draw_menu .. :try_end_draw_menu} :catchall_draw_menu

    invoke-virtual {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void

    :catchall_draw_menu
    move-exception p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    throw p2
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected final drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V
    .locals 6

    if-eqz p2, :cond_1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeMode()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuTitleMode()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    neg-int v3, p2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method protected drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result p2

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElementID()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementIsActive(ZI)Z

    move-result p3

    invoke-virtual {p4, p1, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->drawMenuElementHover2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected final drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    const v0, 0x3e48b439

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v6

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0, p4, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementIsActive(ZI)Z

    move-result v6

    iget-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9

    const v0, 0x3e48b439

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeLEFT()Z

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v6, v0, v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v0, 0x6

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto/16 :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v5, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    sub-int v6, v0, v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v0, 0x6

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    :try_start_0
    iget-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    if-ge p4, v0, :cond_1

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p4, v1, v1, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    add-int v5, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int/2addr p4, p2

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v1, v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v1, v3

    add-int/2addr p4, v1

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int/2addr p4, p2

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    div-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v3

    mul-int v1, v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int p4, p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr p4, v1

    add-int/2addr p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v1

    mul-int p4, p4, v1

    div-int/lit8 p4, p4, 0x64

    add-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V
    .locals 7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    :cond_0
    if-eqz p4, :cond_2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuResizeMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuTitleMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getCloseable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected extraAction()V
    .locals 0

    return-void
.end method

.method protected final getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMenuCloseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_close:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    return-object p1

    :cond_0
    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    return-object p1
.end method

.method protected final getCloseable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->closeable:Z

    return v0
.end method

.method protected getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    return v0
.end method

.method protected final getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    return-object p1
.end method

.method protected getMenuElementIsActive(ZI)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getActiveMenuElementID()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final getMenuElementsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    return v0
.end method

.method protected getMenuPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    return v0
.end method

.method protected getMenuPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    return v0
.end method

.method protected final getMinHeight()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getMinWidth()I
    .locals 1

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :catch_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected final getMoveable()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getMoveable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected final getNewMenuPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    return v0
.end method

.method protected final getNewMenuPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I

    return v0
.end method

.method protected getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosX:I

    return v0
.end method

.method protected getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosY:I

    return v0
.end method

.method protected final getResizable()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getResizable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected final getScrollModeY()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    return v0
.end method

.method protected final getScrollPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    return v0
.end method

.method protected final getScrollableX()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    return v0
.end method

.method protected final getScrollableY()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    return v0
.end method

.method protected final getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    return-object v0
.end method

.method protected getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->visible:Z

    return v0
.end method

.method protected getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iWidth:I

    return v0
.end method

.method protected final initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V

    return-void
.end method

.method protected final initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V

    return-void
.end method

.method protected final initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;ZZZ)V"
        }
    .end annotation

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosX:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosY:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iWidth:I

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    iput-boolean p9, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->closeable:Z

    iput-boolean p7, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->visible:Z

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    if-eqz p8, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    if-ge p2, p4, :cond_1

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result p4

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p7

    add-int/2addr p4, p7

    if-le p4, p3, :cond_0

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result p3

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, p3

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int p2, p5, p2

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    if-le p3, p2, :cond_2

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    goto :goto_1

    :cond_2
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p2, p5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    :cond_3
    :goto_1
    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    return-void
.end method

.method protected final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V

    return-void
.end method

.method protected final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V

    return-void
.end method

.method protected final initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onHovered()V
    .locals 0

    return-void
.end method

.method protected onMenuPressed()V
    .locals 0

    return-void
.end method

.method protected final scrollTheMenu()V
    .locals 5

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    const/4 v1, 0x1

    const v2, 0x3fb9999a    # 1.45f

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    if-lez v0, :cond_0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY2:I

    if-lez v3, :cond_0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v4, v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    if-lez v0, :cond_1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX2:I

    if-lez v3, :cond_1

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeX:Z

    :cond_1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->resetScrollINFO()V

    return-void
.end method

.method protected setHeight(I)V
    .locals 3

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMinHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMinHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-lt p1, v0, :cond_3

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->sliderMenuTitle:Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    return-void
.end method

.method protected final setMenuElement(ILage/of/civilizations2/jakowski/lukasz/MenuElement;)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final setMenuPosX(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosX(I)V

    return-void
.end method

.method protected final setMenuPosY(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosY(I)V

    return-void
.end method

.method protected setPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosX(I)V

    return-void
.end method

.method protected final setPosX_Force(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    return-void
.end method

.method protected setPosY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosY(I)V

    return-void
.end method

.method protected final setScrollPosX(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosX:I

    return-void
.end method

.method protected final setScrollPosY(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY2:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iScrollPosY:I

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->visible:Z

    return-void
.end method

.method protected setWidth(I)Z
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMinWidth()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iWidth:I

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iWidth:I

    return v1

    :cond_1
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iWidth:I

    return v1
.end method

.method protected final stopScrolling()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->resetScrollINFO()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeX:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    return-void
.end method

.method protected update()V
    .locals 6

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    const v1, 0x3f7851ec    # 0.97f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    float-to-int v5, v5

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosY(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    :goto_0
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_1
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeX:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosX(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->fScrollNewMenuPosX:F

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeX:Z

    :goto_1
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_3
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuPosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_5
    return-void
.end method

.method protected final updateButtonWidth(III)I
    .locals 2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    if-le v0, p3, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p3

    invoke-virtual {p3, p2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p1

    return p1
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method

.method protected updateMenuElements_IsInView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementIsInView(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setIsInView(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateMenuElements_IsInView_X()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementIsInView_X(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setIsInView(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final updateMenuPosX(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionX:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected final updateMenuPosY(I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollModeY:Z

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iNewMenuPositionY:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected final updateScrollable()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMenuElementsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iMaxSliderPositionY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iHeight:I

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableY:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosY:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosY(I)V

    :cond_5
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->scrollableX:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->iPosX:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuPosX(I)V

    :cond_6
    return-void
.end method

.method protected final updatedButtonsWidth(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    return-void
.end method

.method protected final updatedButtonsWidthFromToID(IIII)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateButtonWidth(III)I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    return-void
.end method

.method protected final updatedButtonsWidth_Padding(III)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateButtonWidth(III)I

    move-result v1

    add-int/2addr v1, p3

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    return-void
.end method
