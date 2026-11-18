.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Events_AddCiv_List.java"


# instance fields
.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lLoadedFlags_TagsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v22

    const-string v1, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v23

    const-string v1, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v10, 0x0

    move-object/from16 v0, v18

    array-length v11, v0

    :goto_2
    if-ge v10, v11, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v18, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    aget-object v1, v18, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v18, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v18, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, v19

    array-length v11, v0

    :goto_3
    if-ge v10, v11, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v19, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    aget-object v1, v19, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v19, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v19, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v24, 0x0

    const/4 v10, 0x1

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v24, v10

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v5, v15

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v7, v15, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$1;

    add-int/lit8 v17, v16, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v4, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v2, v15

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v15, 0x1

    mul-int/2addr v3, v5

    add-int v5, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    goto/16 :goto_4

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v10, 0x0

    move-object/from16 v0, v18

    array-length v11, v0

    :goto_6
    if-ge v10, v11, :cond_9

    aget-object v1, v18, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v18, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v18, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, v19

    array-length v11, v0

    :goto_7
    if-ge v10, v11, :cond_b

    aget-object v1, v19, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v19, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v19, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v24, 0x0

    const/4 v10, 0x1

    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_d

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v24, v10

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_d
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v5, v15

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v7, v15, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$2;

    add-int/lit8 v17, v16, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v4, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v2, v15

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v15, 0x1

    mul-int/2addr v3, v5

    add-int v5, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    goto/16 :goto_8

    :cond_e
    const/4 v10, 0x0

    move-object/from16 v0, v18

    array-length v11, v0

    :goto_a
    if-ge v10, v11, :cond_10

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v18, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_f

    aget-object v1, v18, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v18, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v18, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    move-object/from16 v0, v19

    array-length v11, v0

    :goto_b
    if-ge v10, v11, :cond_12

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v19, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_11

    aget-object v1, v19, v10

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v2, v19, v10

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v19, v10

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_12
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v24, 0x0

    const/4 v10, 0x1

    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_14

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move/from16 v24, v10

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v5, v15

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v7, v15, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$3;

    add-int/lit8 v17, v16, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v4, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v2, v15

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v15, 0x1

    mul-int/2addr v3, v5

    add-int v5, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v3, v16

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;IIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v17

    goto/16 :goto_c

    :cond_15
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v7, v14

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->updateLanguage()V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    return-object v0
.end method

.method private final getCivID(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final getFlagID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final loadFlag(I)V
    .locals 10

    :try_start_0
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/flags/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/flags/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-eqz v3, :cond_0

    :try_start_3
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/civilizations_editor/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "_FL.png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/civilizations_editor/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "_FL.png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v7, "game/flags/ran.png"

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    :try_start_5
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/civilizations_editor/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "_FL.png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0
.end method

.method private final onBack()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->selectCivBack()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    const/4 v2, 0x0

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FORMCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    if-ne v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v3, p1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setText(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->onBack()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->onBackPressed()V

    :goto_1
    return-void

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v3, p1, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->createScenarioAddCivilization(Ljava/lang/String;IZ)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v2, p1, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getCivID(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->selectCivAction(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 v2, p1, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto :goto_1
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElementsSize()I

    move-result v0

    if-ge v6, v0, :cond_1

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    sub-int v1, v6, v7

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getFlagID(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    sub-int v4, v6, v7

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getFlagID(I)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v1, v3, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method

.method protected updateMenuElements_IsInView()V
    .locals 5

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElementsSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lCivsTags:Ljava/util/List;

    sub-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_1

    if-gez v2, :cond_0

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->loadFlag(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
