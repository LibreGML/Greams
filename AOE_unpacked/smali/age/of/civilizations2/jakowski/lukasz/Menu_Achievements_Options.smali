.class Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Achievements_Options.java"


# direct methods
.method protected constructor <init>()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v4, v1, v2

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Text_Logo;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v13, v2, v3

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    move v11, v0

    move v12, v4

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Text_Logo;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :try_start_0
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "saves/stats/civ/Age_of_Civilizations"

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    array-length v10, v3
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    const-string v15, "saves/stats/civ/"

    if-ge v9, v10, :cond_0

    :try_start_1
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v3, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getTurns()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v10, v9

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_1

    :cond_3
    move v14, v0

    const/4 v0, 0x0

    :goto_3
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    if-ge v0, v7, :cond_d

    :try_start_4
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v7
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    sub-int/2addr v7, v2

    if-gez v7, :cond_5

    :try_start_5
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getTurns()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v7

    sub-int/2addr v7, v2

    if-gez v7, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getRecruitedArmy()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy_Level(I)I

    move-result v7
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    sub-int/2addr v7, v2

    if-ltz v7, :cond_4

    goto :goto_5

    :cond_4
    move/from16 v16, v14

    goto :goto_4

    :catch_1
    move/from16 v16, v14

    goto :goto_4

    :catch_2
    move/from16 v16, v14

    goto :goto_4

    :catch_3
    move/from16 v16, v14

    :catch_4
    :goto_4
    move-object/from16 v17, v15

    goto/16 :goto_d

    :cond_5
    :goto_5
    :try_start_6
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Text_AchievementCiv;

    iget-object v8, v13, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v11, v13, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getGamesWon()I

    move-result v7

    if-lez v7, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    move-object v7, v12

    move v10, v14

    move-object/from16 v17, v11

    move v11, v4

    move-object v1, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Text_AchievementCiv;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v14, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v7

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v1
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    sub-int/2addr v1, v2

    move/from16 v16, v14

    move v14, v1

    :goto_7
    const-string v13, ": "

    if-ltz v14, :cond_8

    :try_start_7
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "ConqueredProvinces"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v13, v17

    iget-object v11, v13, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    if-ne v14, v1, :cond_7

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v7

    goto :goto_8

    :cond_7
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v7, v14}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v7
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    move/from16 v17, v7

    const/16 v18, 0x0

    move-object v7, v12

    move/from16 v10, v16

    move-object/from16 v19, v11

    move v11, v4

    move-object v2, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move v13, v14

    move/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move/from16 v15, v18

    :try_start_8
    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v16, v16, v2

    add-int/lit8 v14, v20, -0x1

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v19, v17

    move-object/from16 v17, v15

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual/range {v19 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getRecruitedArmy()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy_Level(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v1

    :goto_9
    if-ltz v2, :cond_a

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "RecruitedArmy"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v14, v19

    iget-object v12, v14, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    if-ne v2, v1, :cond_9

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getRecruitedArmy()I

    move-result v7

    goto :goto_a

    :cond_9
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v7

    :goto_a
    move/from16 v18, v7

    const/16 v19, 0x1

    move-object v7, v15

    move/from16 v10, v16

    move v11, v4

    move-object/from16 v21, v13

    move v13, v2

    move-object/from16 v20, v14

    move/from16 v14, v18

    move/from16 v18, v1

    move-object v1, v15

    move/from16 v15, v19

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int v16, v16, v1

    add-int/lit8 v2, v2, -0x1

    move/from16 v1, v18

    move-object/from16 v19, v20

    move-object/from16 v13, v21

    goto :goto_9

    :cond_a
    move-object/from16 v21, v13

    move-object/from16 v20, v19

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual/range {v20 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getTurns()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v1

    :goto_b
    if-ltz v2, :cond_c

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "Turns"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v13, v20

    iget-object v12, v13, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    if-ne v2, v1, :cond_b

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getTurns()I

    move-result v7

    goto :goto_c

    :cond_b
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v7

    :goto_c
    move/from16 v18, v7

    const/16 v19, 0x2

    move-object v7, v15

    move/from16 v10, v16

    move v11, v4

    move-object/from16 v20, v13

    move v13, v2

    move-object/from16 v21, v14

    move/from16 v14, v18

    move/from16 v18, v1

    move-object v1, v15

    move/from16 v15, v19

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Text_ServiceRibbon;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    add-int/2addr v1, v7

    add-int v16, v16, v1

    add-int/lit8 v2, v2, -0x1

    move/from16 v1, v18

    goto :goto_b

    :catch_5
    move-object/from16 v17, v15

    move/from16 v16, v14

    :catch_6
    :cond_c
    :goto_d
    move/from16 v14, v16

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v17

    const/4 v2, 0x1

    goto/16 :goto_3

    :catch_7
    move v11, v14

    goto :goto_e

    :catch_8
    move v11, v0

    :goto_e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/high16 v14, 0x3f400000    # 0.75f

    move-object v7, v0

    move v12, v4

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Text_Scale;-><init>(Ljava/lang/String;IIIIIF)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    :cond_d
    const/4 v1, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3d99999a    # 0.075f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Achievements_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "MapType"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
