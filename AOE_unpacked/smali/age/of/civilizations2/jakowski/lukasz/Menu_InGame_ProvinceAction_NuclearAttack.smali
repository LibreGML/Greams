.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_ProvinceAction_NuclearAttack.java"


# direct methods
.method protected constructor <init>()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;

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

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;Ljava/lang/String;IIIZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->updateLanguage()V

    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 21

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v15

    if-gtz v15, :cond_d

    :try_start_0
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getNuclearAttackCost(II)I

    move-result v13

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getColonizeCost_Movement(II)I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v18

    div-int/lit8 v18, v18, 0x3

    add-int v17, v17, v18

    sub-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    const/4 v9, 0x0

    :goto_1
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v15

    if-ge v9, v15, :cond_0

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v10

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v17

    div-int/lit8 v17, v17, 0x3

    add-int v16, v16, v17

    sub-int v11, v15, v16

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_2
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v15

    if-ge v9, v15, :cond_2

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v17

    const/high16 v18, 0x40400000    # 3.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceStability(F)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_2
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v16

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceStability(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfArmoury(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfNuclearReactor(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v15

    if-lez v15, :cond_3

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFarm(I)V

    :cond_3
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v15

    if-lez v15, :cond_4

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    :cond_4
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v15

    if-lez v15, :cond_5

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    :cond_5
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v15

    if-lez v15, :cond_6

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfLibrary(I)V

    :cond_6
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfSupply(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v15

    if-lez v15, :cond_7

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWorkshop(I)V

    :cond_7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    const/4 v9, 0x0

    :goto_3
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmySize()I

    move-result v15

    if-ge v9, v15, :cond_9

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v15

    if-lez v15, :cond_8

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v17

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    add-int v18, v18, v19

    sub-int v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_9
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeapons()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeapons(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v16

    int-to-long v0, v13

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v16

    sub-int v16, v16, v14

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->updateInGame_ProvinceInfo()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "NuclearAttacked"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v15

    if-nez v15, :cond_a

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->declareWar(IIZ)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "IsWar"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    :cond_a
    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawNuclearExplosion(Z)V

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "InRuines"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v15

    const/16 v16, 0x0

    const v17, 0x186a0

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NuclearExplosionA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventTag(Ljava/lang/String;)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const-string v16, "Test?"

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getYear()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x640

    move/from16 v0, v16

    if-le v15, v0, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/nuclear_event/nuclearExplosion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NuclearAttacker"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cDefender"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cAttacker"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cName"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-direct {v8}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "ENOkay"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v19, "ENOkay"

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    aget-object v15, v15, v16

    iput-object v15, v8, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    iget-object v15, v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setRepeatable(Z)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Since(III)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/lit8 v15, v15, 0x1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Until(III)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasTriedToRunOnce(Z)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Hey!"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NuclearExplosionA"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvent_Tag(Ljava/lang/String;)V

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "InRuines"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v15

    const/16 v16, 0x0

    const v17, 0x186a0

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NuclearExplosionD"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventTag(Ljava/lang/String;)V

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const-string v16, "Test?"

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getYear()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x640

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/nuclear_event/nuclearExplosion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NuclearDefender"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cDefender"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cAttacker"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cName"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "ENBad"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v19, "ENBad"

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    aget-object v15, v15, v16

    iput-object v15, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    iget-object v15, v4, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setRepeatable(Z)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Since(III)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/lit8 v15, v15, 0x1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Until(III)V

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasTriedToRunOnce(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NuclearExplosionD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvent_Tag(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_TOP_All(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_NuclearAttack(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_NuclearAttack(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    const-string v15, "/nuclear_event/secret.png"

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v15, "/nuclear_event/secret.png"

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_d
    :try_start_2
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getNuclearAttackCost(II)I

    move-result v13

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getColonizeCost_Movement(II)I

    move-result v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v18

    div-int/lit8 v18, v18, 0x3

    add-int v17, v17, v18

    sub-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    const/4 v9, 0x0

    :goto_6
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v15

    if-ge v9, v15, :cond_e

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getCivID()I

    move-result v10

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v16

    div-int/lit8 v16, v16, 0x3

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNational(I)Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province_Population_Nationalities;->getPopulation()I

    move-result v17

    div-int/lit8 v17, v17, 0x4

    add-int v16, v16, v17

    sub-int v11, v15, v16

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_7
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v15

    if-ge v9, v15, :cond_10

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v15

    if-nez v15, :cond_f

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v17

    const/high16 v18, 0x40400000    # 3.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v17

    const/high16 v18, 0x40400000    # 3.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceStability(F)V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_10
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v16

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceStability(F)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfArmoury(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfNuclearReactor(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v15

    if-lez v15, :cond_11

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFarm(I)V

    :cond_11
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v15

    if-lez v15, :cond_12

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    :cond_12
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v15

    if-lez v15, :cond_13

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    :cond_13
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v15

    if-lez v15, :cond_14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfLibrary(I)V

    :cond_14
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfSupply(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v15

    if-lez v15, :cond_15

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWorkshop(I)V

    :cond_15
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    const/4 v9, 0x0

    :goto_8
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmySize()I

    move-result v15

    if-ge v9, v15, :cond_17

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v15

    if-lez v15, :cond_16

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v17

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v18

    div-int/lit8 v18, v18, 0x3

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v19

    div-int/lit8 v19, v19, 0x4

    add-int v18, v18, v19

    sub-int v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_17
    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeapons()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeapons(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v16

    int-to-long v0, v13

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v16

    sub-int v16, v16, v14

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->updateInGame_ProvinceInfo()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "NuclearAttacked"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v15

    if-nez v15, :cond_18

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->declareWar(IIZ)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "IsWar"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v15 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    :cond_18
    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawNuclearExplosion(Z)V

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "InRuines"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v15

    const/16 v16, 0x0

    const v17, 0x186a0

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NuclearExplosionA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventTag(Ljava/lang/String;)V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const-string v16, "Test?"

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getYear()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x640

    move/from16 v0, v16

    if-le v15, v0, :cond_19

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/nuclear_event/nuclearExplosion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NuclearAttacker"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cDefender"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cAttacker"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cName"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-direct {v8}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "ENOkay"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v19, "ENOkay"

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    aget-object v15, v15, v16

    iput-object v15, v8, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    iget-object v15, v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v15

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setRepeatable(Z)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Since(III)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/lit8 v15, v15, 0x1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Until(III)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasTriedToRunOnce(Z)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Hey!"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NuclearExplosionA"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvent_Tag(Ljava/lang/String;)V

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v17, "InRuines"

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v15

    const/16 v16, 0x0

    const v17, 0x186a0

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NuclearExplosionD"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventTag(Ljava/lang/String;)V

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const-string v16, "Test?"

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getYear()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x640

    move/from16 v0, v16

    if-le v15, v0, :cond_1a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/nuclear_event/nuclearExplosion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NuclearDefender"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cDefender"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cAttacker"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v19 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%cName"

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "ENBad"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v19, "ENBad"

    invoke-virtual/range {v18 .. v19}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v16

    aget-object v15, v15, v16

    iput-object v15, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    iget-object v15, v4, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v15

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setRepeatable(Z)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Since(III)V

    sget v15, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/lit8 v15, v15, 0x1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v15, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventDate_Until(III)V

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasTriedToRunOnce(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NuclearExplosionD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvent_Tag(Ljava/lang/String;)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_TOP_All(I)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_NuclearAttack(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceAction_NuclearAttack(Z)V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAtNuclearWar()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    :cond_19
    :try_start_3
    const-string v15, "/nuclear_event/secret.png"

    invoke-virtual {v6, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1a
    const-string v15, "/nuclear_event/secret.png"

    invoke-virtual {v4, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_a

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

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    sput v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->fMOVE_MENU_PERCENTAGE:F

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lMOVE_MENU_TIME:J

    new-instance v8, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_action:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getMenuElementsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getMenuElementsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getVisible()Z

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

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "NuclearAttack"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;->updatedButtonsWidth(II)V

    return-void
.end method
