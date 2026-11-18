.class Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Editor_Scenarios.java"


# direct methods
.method protected constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios$1;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapAuthor(I)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "MapType"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    float-to-int v11, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    const/4 v3, 0x0

    add-int/lit8 v12, v1, 0x0

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int v14, v1, v4

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v20, v1, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v21, v1, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int v22, v1, v4

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v24, 0x1

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios$2;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v2

    float-to-int v11, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v12, v4, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v0, 0x2

    mul-int v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v7, v0, 0x3

    mul-int v5, v5, v7

    add-int v13, v4, v5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sub-int v14, v4, v5

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x1

    const-string v10, ""

    move-object v7, v1

    move-object/from16 v8, p0

    move v9, v0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;ILjava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->updateLanguage()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoAssignProvincesCivID:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 6

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RELOAD_SCENARIO:Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-le v1, v2, :cond_0

    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->initPlayers()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setCivID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoAssignProvincesCivID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->editScenario(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->loadArmiesData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    return-void

    :cond_1
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RELOAD_SCENARIO:Z

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-le p1, v2, :cond_2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->initPlayers()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setCivID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->setActivePalletID(I)V

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoAssignProvincesCivID:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->createScenarioClearCivilizations()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    const-string p1, ""

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_NAME:Ljava/lang/String;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AUTHOR:Ljava/lang/String;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_WIKI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    const p1, 0x3f4ccccd    # 0.8f

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_IS_PART_OF_CAMPAIGN:Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCREATE_SCENARIO_IS_PART_OF_CAMPAIGN_CIVSIDS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->buildCreateScenario_TechnologyLevelsByContinents()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    const/16 v0, 0x2ee

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingArmyInCapitals(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    const v0, 0xfde8

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingPopulation(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    const/16 v0, 0x7d00

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingEconomy(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    const/16 v0, 0x1194

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingMoney(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_ActivePallet_TAG(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR_SCENARIOS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSELECT_MAP_TYPE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuPosY()I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    add-int v5, v1, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CreateNewScenario"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_Scenarios;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
