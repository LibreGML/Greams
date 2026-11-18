.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Cores_SetUp.java"


# instance fields
.field private brushCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 22

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    add-int v13, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v14, v0, 0x4

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "AddCore"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v13, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v10, 0x3f19999a    # 0.6f

    mul-float v0, v0, v10

    float-to-int v6, v0

    const/4 v2, -0x1

    const/4 v7, 0x1

    move-object v0, v9

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v0

    const-string v9, ""

    const/4 v7, 0x0

    if-ge v0, v12, :cond_3

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    if-lez v0, :cond_0

    :try_start_2
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$1;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Population"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v17, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v8

    move v6, v13

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    goto :goto_0

    :catch_0
    move/from16 v17, v8

    :catch_1
    move-object/from16 v21, v9

    goto/16 :goto_4

    :cond_0
    :goto_0
    move/from16 v17, v8

    const/4 v10, 0x0

    :goto_1
    :try_start_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v0

    if-ge v10, v0, :cond_2

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$2;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sub-int v6, v0, v14

    const/16 v18, 0x1

    const/16 v19, 0x64

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v5

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v7, v0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v17

    move/from16 v20, v7

    move v7, v14

    move-object v12, v8

    move/from16 v8, v18

    move-object/from16 v21, v9

    move/from16 v9, v19

    move/from16 v18, v10

    move/from16 v10, v20

    :try_start_4
    invoke-direct/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;ILjava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$3;

    const-string v2, ""

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v0, v13, v0

    sub-int v4, v0, v14

    if-eqz v18, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v17

    move v6, v14

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    add-int/2addr v0, v1

    add-int v17, v17, v0

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v9, v21

    const/4 v12, 0x2

    goto/16 :goto_1

    :catch_2
    :cond_2
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_5

    :catch_3
    move/from16 v17, v8

    goto :goto_3

    :catch_4
    move-object/from16 v21, v9

    move/from16 v17, v8

    :catch_5
    :goto_4
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$4;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v13, v0

    const/4 v8, 0x1

    const/16 v9, 0x64

    const/16 v10, 0x64

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v5, v17

    move v7, v14

    invoke-direct/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;ILjava/lang/String;IIIIIII)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    :goto_5
    move/from16 v14, v17

    goto/16 :goto_b

    :catch_6
    const/4 v12, 0x0

    move/from16 v17, v8

    goto :goto_5

    :cond_3
    const/4 v12, 0x0

    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v2, 0x0

    goto :goto_9

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_6

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_8
    move v14, v8

    const/4 v8, 0x0

    :goto_a
    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_9

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_CivID_LEFT;

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v4, 0x2

    add-int/lit8 v5, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sub-int v6, v0, v4

    const/16 v17, 0x1

    move-object v0, v7

    move v4, v5

    move v5, v14

    move-object v12, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_CivID_LEFT;-><init>(ILjava/lang/String;IIIIZ)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$5;

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v0, v13, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sub-int v4, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v10

    float-to-int v6, v0

    const/4 v7, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;Ljava/lang/String;IIIIZ)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_9
    :goto_b
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$6;

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v2, v0, v13

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 10

    if-nez p1, :cond_0

    const/16 v0, 0x23

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_CORES_ADD_CORE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_0
    add-int/lit8 p1, p1, -0x2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    if-lez v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    div-int/lit8 v5, p1, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    div-int/lit8 v5, p1, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->removeCore(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->brushCivs:Ljava/util/List;

    div-int/lit8 v6, p1, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->removeCore(II)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v6

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->updatePercOfPopulation(III)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateScenario_Cores_SetUp()V

    goto/16 :goto_2

    :cond_4
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v4

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->updatePercOfPopulation(III)V

    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivsSize()I

    move-result p1

    if-ge v2, p1, :cond_7

    mul-int/lit8 p1, v2, 0x2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v4

    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->removeCore(II)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->removeCore(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->province_Cores_GameData:Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getCivID(I)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->getPercOfPop(II)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p1, v0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Cores_GameData;->updatePercOfPopulation(III)V

    :cond_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateScenario_Cores_SetUp()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getWidth()I

    move-result v1

    invoke-virtual {p3, p1, p4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {p3, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosY()I

    move-result p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getHeight()I

    move-result p4

    add-int v3, p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p3, p4, p4, p4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p3, p1, p4, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const-string v0, "Cores"

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Cores_SetUp;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void
.end method
