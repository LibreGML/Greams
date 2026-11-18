.class Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Dialog.java"


# instance fields
.field private animationChangePosY:I

.field private animationStepID:I

.field private closeMenu:Z

.field private iBackgroundAlpha:I


# direct methods
.method protected constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x8

    sub-int v2, v0, v2

    if-gt v1, v2, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    :cond_0
    move v10, v0

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v0, v11

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;IIII)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sub-int v4, v0, v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    add-int v6, v11, v0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v4, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    add-int v6, v11, v0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v0, v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v4, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3f4ccccd    # 0.8f

    const-string v2, ""

    move-object v0, v12

    move-object v1, p0

    move v5, v10

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->updateLanguage()V

    return-void
.end method

.method private final closeMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->resetAnimation()V

    return-void
.end method

.method private final resetAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-nez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    :cond_0
    return-void
.end method

.method private final updateChangePosY()V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    goto/16 :goto_4

    :pswitch_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41700000    # 15.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    goto :goto_4

    :pswitch_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    goto :goto_4

    :pswitch_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    goto :goto_4

    :pswitch_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_3
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    :goto_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/16 v2, 0x16

    const/16 v3, 0xd

    if-ge v0, v2, :cond_4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    :cond_4
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    if-ne v0, v3, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->setVisible(Z)V

    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    add-int/2addr v0, v4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationStepID:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_False()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_True()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu()V

    :goto_0
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    add-int/lit8 v1, v1, -0x8

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->updateChangePosY()V

    goto :goto_0

    :cond_1
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->updateChangePosY()V

    :cond_2
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    int-to-float v5, v5

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v5, v11

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    int-to-float v2, v2

    const v3, 0x3fb9999a    # 1.45f

    mul-float v2, v2, v3

    div-float/2addr v2, v11

    const v3, 0x3c4ccccd    # 0.0125f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v4, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v4, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    div-float/2addr v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v12, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, -0x4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v6, v2, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    const v13, 0x3f266666    # 0.65f

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, -0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {v9, v14, v14, v14, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, -0x4

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, -0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, -0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->animationChangePosY:I

    move/from16 v2, p3

    invoke-super {p0, v9, v10, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected final onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu()V

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->closeMenu:Z

    const/4 p1, 0x5

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->iBackgroundAlpha:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->resetAnimation()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Yes"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "No"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
