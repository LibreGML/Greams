.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_FormableCiv_Provinces_TodayPartOf.java"


# direct methods
.method protected constructor <init>()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    div-int/lit8 v4, v0, 0x4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne v7, v5, :cond_5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvincesSize()I

    move-result v11

    if-ge v7, v11, :cond_a

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v11

    if-gez v11, :cond_4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    goto :goto_1

    :cond_0
    const/4 v11, -0x1

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v11, :cond_1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvincesSize()I

    move-result v11

    if-ge v7, v11, :cond_a

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v11

    if-gez v11, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_7

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v13

    if-ne v12, v13, :cond_6

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x1

    :goto_6
    if-eqz v11, :cond_8

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_a
    move v14, v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_d

    add-int/lit8 v9, v8, 0x1

    move v10, v9

    :goto_8
    if-ge v10, v7, :cond_c

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_b

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    move v8, v9

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_e

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Button_TodayPartOf;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v14, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentage(III)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v18, 0x1

    move-object v7, v12

    move/from16 v11, v17

    move-object v15, v12

    move v12, v4

    move/from16 v19, v13

    move v13, v0

    move/from16 v20, v14

    move/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_TodayPartOf;-><init>(ILjava/lang/String;IIIIZ)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int v17, v17, v7

    add-int/lit8 v13, v19, 0x1

    move/from16 v14, v20

    goto :goto_9

    :cond_e
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf$1;

    const/4 v9, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v10, v0, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v3, v0, v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v7, v5

    add-int/2addr v7, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x2

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v8, v5

    add-int/2addr v1, v8

    sub-int/2addr v0, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_f

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    rem-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 4

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setFromCivID(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Undiscovered"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FormableCiv_Provinces_TodayPartOf;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "TodayPartOf"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
