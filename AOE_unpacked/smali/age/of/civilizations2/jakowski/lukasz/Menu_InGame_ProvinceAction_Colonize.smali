.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_ProvinceAction_Colonize.java"


# direct methods
.method protected constructor <init>()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize$1;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCanColonize_TechLevel(I)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;Ljava/lang/String;IIIZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    move-object v1, p0

    move v3, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->updateLanguage()V

    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->canColonizieWasteland_BorderOrArmy(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    const/4 v6, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42be0000    # 95.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    sput v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    new-instance v8, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getHeight()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_action:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_action:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    sub-float v4, v9, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    float-to-int v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElementsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElementsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    sub-float v1, v9, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, p3

    invoke-super {p0, p1, p2, v0, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void

    :cond_0
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto/16 :goto_0
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Colonize"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_Colonize;->updatedButtonsWidth(II)V

    return-void
.end method
