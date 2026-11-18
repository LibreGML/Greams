.class Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_ManageDiplomacy_Pacts.java"


# direct methods
.method protected constructor <init>()V
    .locals 26

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    move v4, v2

    move v2, v3

    :goto_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v5

    if-ge v2, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Button_Flag;

    const/4 v9, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v17, v4, 0x2

    mul-int v7, v7, v17

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    mul-int v8, v8, v4

    add-int v10, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v11, v7, v8

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    move-object v7, v5

    move v8, v1

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag;-><init>(IIIIILage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Button_Flag;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v9, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v7, v7, v17

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v8, v8, v4

    add-int v10, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v11, v7, v8

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    move-object v7, v5

    move v8, v2

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag;-><init>(IIIIILage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    const/16 v20, -0x1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    mul-int/lit8 v21, v7, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v7, v7, v17

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v8, v8, v4

    add-int v22, v7, v8

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v25, 0x1

    const-string v19, "-"

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Slider_Pact;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v10, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v7, v7, v17

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v8, v8, v4

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v11, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v8, 0x3

    sub-int v12, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v13, v7, v8

    const/4 v14, 0x1

    const/16 v15, 0x96

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v16

    move-object v7, v5

    move v8, v1

    move v9, v2

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Slider_Pact;-><init>(IIIIIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v21, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v7, v7, v17

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v8, v8, v4

    add-int v22, v7, v8

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v19, "+"

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v8, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v7, v7, v17

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v9, v9, v4

    add-int/2addr v9, v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v12, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;-><init>(IIIIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    move v1, v3

    move v2, v4

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v14, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v2, v3, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

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

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    div-int/lit8 v5, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->updateLanguage()V

    return-void
.end method

.method private final centerToPactID(IZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    move v3, v1

    move v1, v2

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v4

    if-lez v4, :cond_2

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    move v0, v2

    move v1, v3

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private final updateNonAggressionPact(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    move v3, v1

    move v1, v2

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v4

    if-lez v4, :cond_2

    if-ne v3, p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivNonAggressionPact(III)Z

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq p1, v0, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq p1, v1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElementsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->update_ExtraAction()V

    return-void

    :cond_0
    rem-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_1

    div-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->centerToPactID(IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    div-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->centerToPactID(IZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    div-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->updateNonAggressionPact(II)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    div-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->updateNonAggressionPact(II)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    div-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->updateNonAggressionPact(II)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    div-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->updateNonAggressionPact(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getScrollableY()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const p4, 0x3f59999a    # 0.85f

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getPosY()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, -0x1

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int v3, p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getPosY()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int v3, p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getWidth()I

    move-result v4

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, p3, 0x2

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewPact"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ManageDiplomacy_Pacts;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CustomizePacts"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
