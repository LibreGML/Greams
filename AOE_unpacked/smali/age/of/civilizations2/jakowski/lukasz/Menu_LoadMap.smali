.class Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_LoadMap.java"


# instance fields
.field private iNumOfSteps:I

.field private iStepID:I


# direct methods
.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    const/4 v0, 0x5

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iNumOfSteps:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;)V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->loadMap()V

    return-void
.end method

.method private final loadMap()V
    .locals 10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameCanBeContinued:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->loadGameMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    div-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateMapPos()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "LoadingGraphics"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_0
    const-string v4, "LoadingMap"

    if-ne v0, v2, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->disposeMapData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->initMapContinents()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->initMapRegions()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_1
    const-string v5, "] - "

    const-string v6, "/"

    const-string v7, " [#"

    if-lt v0, v3, :cond_2

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v8

    add-int/2addr v8, v3

    if-ge v0, v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x190

    if-ge v1, v0, :cond_b

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvince(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    add-int/2addr v4, v3

    const-string v8, "LoadingProvinces"

    if-ne v0, v4, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v9

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    if-lt v0, v4, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v9

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    if-ge v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    :goto_1
    const/16 v0, 0xc8

    if-ge v1, v0, :cond_b

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/lit8 v2, v2, -0x3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvinceTexture(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    if-ne v0, v4, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateProvincesSize()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildBasinsOfSeaProvinces()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadRegions()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "LoadingGameData"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    if-ne v0, v4, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvinceNames_ALL()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkLandBySeaProvincesBorders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkSeaBySeaProvincesBorders()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x5

    if-ne v0, v4, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildProvinceBorder()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    if-ne v0, v4, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadGame_Scenarios(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    if-ne v0, v4, :cond_9

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->initMetProvince(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadScenario(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto :goto_2

    :cond_9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    if-ne v0, v4, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->initPlayers()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildDrawArmy()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    goto :goto_2

    :cond_a
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x9

    if-ne v0, v2, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadCities()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadMountains()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToRandomMapPosition()V

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->goToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->saveSettings_ActiveMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->load_DeleteStatusFile()V

    :cond_b
    :goto_2
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f19999a    # 0.6f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    neg-int p4, p4

    add-int v4, p4, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, p4, 0x3

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr p4, v2

    add-int v4, p4, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, p4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p4, p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLoadingPadding()F

    move-result v1

    mul-float p4, p4, v1

    float-to-int p4, p4

    add-int v2, p4, p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLoadingPadding()F

    move-result p4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p4, p4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    mul-float p3, p3, v1

    float-to-int v4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-int v5, p3

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iStepID:I

    int-to-float p3, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->iNumOfSteps:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    div-float v6, p3, p4

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawJakowskiGames_RIGHT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    # Load several ticks per frame on the GL thread (no per-frame Thread).
    const/4 p3, 0x0

    :goto_fast_load
    const/16 p4, 0xa

    if-ge p3, p4, :cond_fast_load_done

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_LoadMap;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_fast_load

    :cond_fast_load_done
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawVersion_LEFT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method
