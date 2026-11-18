.class public Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_FlagAction_GraphModes.java"


# direct methods
.method protected constructor <init>()V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v1, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/16 v16, 0x1

    move-object v9, v2

    move v15, v0

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0x64

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0x6f

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0x66

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0x6a

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/4 v11, 0x1

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0xd

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0xa

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;

    const/16 v11, 0xb

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagAction_GraphModes;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, v9

    move v5, v1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    :goto_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int v4, v0, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v5

    sub-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    :goto_2
    add-int/2addr v0, v2

    move v5, v0

    add-int/lit8 v6, v1, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager;->setActiveGraphID(I)V

    :cond_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ccccccd    # 0.025f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v5

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3ec00000    # 0.375f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getPosY()I

    move-result p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v4, p2, 0x4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_FlagAction()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Income"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Balance"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "MilitaryUpkeep"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "WorldsPopulation"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Population"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Economy"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConqueredProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConstructedBuildings"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_GraphModes;->updatedButtonsWidth_Padding(III)V

    return-void
.end method
