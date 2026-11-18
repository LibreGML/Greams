.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_FlagAction_Bot_Right_Right.java"


# static fields
.field protected static iSort:I = 0x1

.field protected static iViewMode:I = 0x1

.field protected static final iViewsSize:I = 0x3

.field protected static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 35

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_1

    :cond_2
    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :goto_1
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$1;

    const/4 v6, -0x1

    const/4 v7, 0x1

    mul-int/lit8 v3, v2, 0x7

    div-int/lit8 v13, v3, 0xa

    sub-int/2addr v2, v13

    add-int/lit8 v14, v2, -0x3

    int-to-float v3, v14

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v15, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int v16, v3, v4

    const/4 v8, 0x0

    const-string v5, "<"

    move-object v3, v11

    move-object/from16 v4, p0

    move-wide/from16 v17, v9

    move v9, v15

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$2;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getViewName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v11, 0x1

    add-int/lit8 v23, v4, 0x1

    int-to-double v4, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v26, v7, v8

    const/16 v24, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, p0

    move/from16 v25, v6

    invoke-direct/range {v19 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$3;

    const/16 v30, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v31, v4, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int v34, v5, v6

    const/16 v32, 0x0

    const-string v29, ">"

    move-object/from16 v27, v3

    move-object/from16 v28, p0

    move/from16 v33, v4

    invoke-direct/range {v27 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    add-int/2addr v3, v4

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$4;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Name"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v17, v6, 0x2

    const/16 v18, 0x1

    mul-int/lit8 v6, v2, 0x3

    div-int/lit8 v6, v6, 0x5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v21, v7, v8

    move-object v14, v5

    move-object/from16 v15, p0

    move/from16 v19, v3

    move/from16 v20, v6

    invoke-direct/range {v14 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$5;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getViewName()Ljava/lang/String;

    move-result-object v16

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v17, v7, 0x2

    add-int/lit8 v7, v6, 0x1

    sub-int v8, v2, v6

    const/4 v10, 0x3

    sub-int/2addr v8, v10

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x4

    add-int v21, v9, v14

    move-object v14, v5

    move/from16 v18, v7

    move/from16 v20, v8

    invoke-direct/range {v14 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const-string v9, "Undiscovered"

    const-string v15, ". "

    const-string v4, ""

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget v17, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iSort:I

    if-nez v17, :cond_3

    const/4 v14, 0x0

    :goto_2
    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsSize()I

    move-result v10

    if-ge v14, v10, :cond_8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x3

    goto :goto_2

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    :goto_3
    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v11

    if-ge v14, v11, :cond_5

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v11

    if-lez v11, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    const/4 v11, 0x1

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move/from16 v31, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-le v1, v3, :cond_6

    move v14, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v19

    move/from16 v13, v31

    goto :goto_5

    :cond_7
    move/from16 v19, v3

    move/from16 v31, v13

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    move/from16 v19, v3

    move/from16 v31, v13

    move/from16 v3, v19

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_2e

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$6;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_a

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    const/16 v21, -0x1

    goto :goto_8

    :cond_a
    :goto_7
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v21, v11

    :goto_8
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_c

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_9

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_c
    :goto_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    :goto_a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v24, 0x1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v27, v11, v13

    move-object/from16 v19, v10

    move-object/from16 v20, p0

    move/from16 v25, v3

    move/from16 v26, v6

    invoke-direct/range {v19 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;ILjava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$7;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v25, v11, v13

    move-object/from16 v18, v10

    move-object/from16 v19, p0

    move/from16 v22, v7

    move/from16 v23, v3

    move/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v10

    add-int/2addr v3, v10

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_d
    move/from16 v19, v3

    move/from16 v31, v13

    if-ne v5, v11, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iSort:I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    :goto_b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsSize()I

    move-result v5

    if-ge v3, v5, :cond_13

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    :goto_c
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v11

    if-ge v10, v11, :cond_10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v11

    if-lez v11, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_13

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_12

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v13, v14, :cond_11

    move v11, v10

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_12
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d

    :cond_13
    move/from16 v5, v19

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2e

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$8;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_15

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_10

    :cond_14
    const/16 v21, -0x1

    goto :goto_11

    :cond_15
    :goto_10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v21, v11

    :goto_11
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_17

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_12

    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_13

    :cond_17
    :goto_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    :goto_13
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v24, 0x1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v27, v11, v13

    move-object/from16 v19, v10

    move-object/from16 v20, p0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-direct/range {v19 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;ILjava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$9;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v26, v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int v25, v1, v11

    move-object/from16 v18, v10

    move-object/from16 v19, p0

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v5, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v26

    goto/16 :goto_f

    :cond_18
    const/4 v1, 0x2

    if-ne v5, v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iSort:I

    if-nez v3, :cond_19

    const/4 v3, 0x0

    :goto_14
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsSize()I

    move-result v5

    if-ge v3, v5, :cond_1e

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_15
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v10

    if-ge v5, v10, :cond_1b

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1b
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1e

    const/4 v5, 0x1

    const/4 v10, 0x0

    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1d

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v11

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v13

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1c

    move v10, v5

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_1d
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_1e
    move/from16 v5, v19

    const/4 v3, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2e

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$10;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_20

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_1f

    goto :goto_19

    :cond_1f
    const/16 v21, -0x1

    goto :goto_1a

    :cond_20
    :goto_19
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v21, v11

    :goto_1a
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_22

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_21

    goto :goto_1b

    :cond_21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1c

    :cond_22
    :goto_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    :goto_1c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v24, 0x1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v27, v11, v13

    move-object/from16 v19, v10

    move-object/from16 v20, p0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-direct/range {v19 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;ILjava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$11;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v25, v11, v13

    move-object/from16 v18, v10

    move-object/from16 v19, p0

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :cond_23
    const/4 v1, 0x3

    if-ne v5, v1, :cond_2e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iSort:I

    if-nez v3, :cond_24

    const/4 v3, 0x0

    :goto_1d
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsSize()I

    move-result v5

    if-ge v3, v5, :cond_29

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_1e
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v10

    if-ge v5, v10, :cond_26

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v10

    if-lez v10, :cond_25

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_26
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_29

    const/4 v5, 0x1

    const/4 v10, 0x0

    :goto_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_28

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v11

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v13

    if-le v11, v13, :cond_27

    move v10, v5

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_28
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    :cond_29
    move/from16 v5, v19

    const/4 v3, 0x0

    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2e

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$12;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_2b

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    goto :goto_22

    :cond_2a
    const/16 v21, -0x1

    goto :goto_23

    :cond_2b
    :goto_22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v21, v11

    :goto_23
    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v13, 0x2

    if-lt v11, v13, :cond_2d

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_2c

    goto :goto_24

    :cond_2c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_25

    :cond_2d
    :goto_24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    :goto_25
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v24, 0x1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v27, v11, v13

    move-object/from16 v19, v10

    move-object/from16 v20, p0

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-direct/range {v19 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;ILjava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$13;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int v25, v11, v13

    move-object/from16 v18, v10

    move-object/from16 v19, p0

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    :cond_2e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v15, 0x0

    const/16 v16, 0x0

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x2

    add-int/lit8 v8, v0, -0x2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    if-ge v8, v0, :cond_2f

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    move/from16 v18, v0

    goto :goto_26

    :cond_2f
    move/from16 v18, v8

    :goto_26
    const/16 v19, 0x1

    move-object v14, v1

    move/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v1

    const/4 v10, 0x3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    add-int v0, v0, v31

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int v5, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int v6, v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move-object v9, v12

    const/4 v2, 0x3

    move v10, v0

    const/4 v0, 0x1

    move v11, v1

    invoke-virtual/range {v3 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    :goto_27
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_30

    move-object/from16 v1, p0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    add-int/lit8 v4, v2, -0x3

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/2addr v4, v0

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_30
    move-object/from16 v1, p0

    return-void
.end method

.method protected static final getViewName()Ljava/lang/String;
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const-string v1, "Provinces"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "RankScore"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "TechnologyLevel"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Population"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ccccccd    # 0.025f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getHeight()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v0, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getHeight()I

    move-result v6

    const/4 v5, 0x1

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

.method protected getVisible()Z
    .locals 1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_FlagAction()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->lTime:J

    return-void
.end method
