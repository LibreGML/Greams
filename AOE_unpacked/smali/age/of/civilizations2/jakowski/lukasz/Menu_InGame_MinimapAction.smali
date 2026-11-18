.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_MinimapAction.java"


# instance fields
.field private animationChangePosX:I

.field private animationChangePosY:I

.field private animationStepID:I

.field private closeMenu:Z


# direct methods
.method protected constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;-><init>(III)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    const-string v3, "Map"

    invoke-direct {v2, v3, v1, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    sub-int v5, v1, v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method private final closeMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->resetAnimation()V

    return-void
.end method

.method private final resetAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-nez v1, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    :cond_0
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    return-void
.end method

.method private final updateChangePosX()V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    const/high16 v1, 0x42c80000    # 100.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/16 v1, 0x16

    const/16 v2, 0xd

    if-ge v0, v1, :cond_0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    if-ne v0, v2, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

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

.method private final updateChangePosY()V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    goto/16 :goto_4

    :pswitch_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41700000    # 15.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    goto :goto_4

    :pswitch_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    goto :goto_4

    :pswitch_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    goto :goto_4

    :pswitch_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    int-to-float v0, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_3
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    :goto_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/16 v2, 0x16

    const/16 v3, 0xd

    if-ge v0, v2, :cond_4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    :cond_4
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    if-ne v0, v3, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    invoke-super {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

    add-int/2addr v0, v4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationStepID:I

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
    .locals 0

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->updateChangePosX()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->updateChangePosY()V

    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosX:I

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->animationChangePosY:I

    invoke-super {p0, p1, p2, v0, p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected final onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu()V

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->closeMenu:Z

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_MinimapAction;->resetAnimation()V

    return-void
.end method
