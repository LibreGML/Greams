.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateCity.java"


# instance fields
.field private iNameWidth:I

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 29

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v14, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v15, v1, v2

    const-string v10, ""

    const/4 v11, -0x1

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v8, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v21, v1, v2

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v11, v1, v2

    const-string v8, "-"

    const/4 v9, -0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v16, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v17, v1, v2

    const-string v14, "+"

    const/4 v15, -0x1

    const/16 v18, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$3;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v22, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v23, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x8

    sub-int v24, v1, v2

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v21, ""

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x2

    move-object/from16 v19, v0

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v28}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowLeft;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowLeft;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowDown;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowDown;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowRight;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowRight;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowUp;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ArrowUp;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v9, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v11, v1, v2

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->sName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->iNameWidth:I

    return p0
.end method

.method private final updateActiveProvince()V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosX()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setProvinceID(II)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getCreateCity_UpdateSaveButton()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    :cond_0
    return-void
.end method

.method private final updateEditorCityLevel(I)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    return-void
.end method

.method private final updatePosX(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosX()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/City;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosX()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    div-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v2

    div-int/2addr v1, v2

    rem-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/City;->setPosX(I)V

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateActiveProvince()V

    :cond_1
    return-void
.end method

.method private final updatePosY(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/City;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    div-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/City;->setPosY(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getPosY()I

    move-result p1

    if-gez p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/City;->setPosY(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateActiveProvince()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    const/4 v0, -0x1

    const-string v1, ": "

    const-string v2, "CityLevel"

    const/4 v3, 0x1

    const/4 v4, 0x5

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updatePosY(I)V

    return-void

    :pswitch_1
    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updatePosX(I)V

    return-void

    :pswitch_2
    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updatePosY(I)V

    return-void

    :pswitch_3
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updatePosX(I)V

    return-void

    :pswitch_4
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateEditorCityLevel(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCityLevelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_5
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateEditorCityLevel(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCityLevelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->updateEditorCityLevel(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCityLevelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_7
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->saveCity()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->onBackPressed()V

    :cond_0
    return-void

    :pswitch_8
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->onBackPressed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v5, v0, 0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    sub-int v5, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v6, v0, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR_CITIES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "CityName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->sName:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->sName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->iNameWidth:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "CityLevel"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCityLevelName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCity:Lage/of/civilizations2/jakowski/lukasz/City;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel_Ref(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_1
    return-void
.end method
