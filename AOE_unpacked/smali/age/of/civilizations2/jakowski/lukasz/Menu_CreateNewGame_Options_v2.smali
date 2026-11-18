.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateNewGame_Options_v2.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xaf

.field protected static hideAnimation:Z = true

.field protected static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 34

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v11, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v12, v0, 0x4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    add-int v3, v0, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v6, v10

    move v7, v12

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v18, v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v19, v10, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v20, v12, v1

    const-string v16, ""

    const/16 v21, 0x0

    const/16 v22, 0x19

    const/16 v23, 0x0

    move-object v14, v0

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x2

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$5;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$6;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    mul-int/lit8 v1, v12, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v19, v10, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v20, v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v23, v1, 0x1

    const-string v16, ""

    const/16 v22, 0x9

    move-object v14, v0

    invoke-direct/range {v14 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$7;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v27, v1, 0x2

    mul-int/lit8 v1, v12, 0x6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v28, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v29, v10, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v30, v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v33, v1, 0x1

    const-string v26, ""

    const/16 v31, 0x0

    const/16 v32, 0x5

    move-object/from16 v24, v0

    move-object/from16 v25, p0

    invoke-direct/range {v24 .. v33}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$8;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x9

    const/4 v2, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$9;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xa

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$10;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xc

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACMENT:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$11;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xd

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_FILL:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$12;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xe

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$13;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xf

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$14;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x13

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$15;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0xb

    const-string v2, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$16;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x10

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    const/4 v2, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$17;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x11

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$18;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v5, v12, 0x12

    sget-boolean v9, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    move-object v0, v14

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$19;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v18, v1, 0x2

    mul-int/lit8 v1, v12, 0x7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v19, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v20, v10, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v21, v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED_MIN:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED_MAX:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    const-string v17, ""

    move-object v15, v0

    move-object/from16 v16, p0

    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v24, v2

    invoke-direct/range {v15 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$20;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v25, v1, 0x2

    mul-int/lit8 v1, v12, 0x8

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v26, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v27, v10, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v28, v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v24, ""

    const/16 v29, 0x0

    const/16 v30, 0x3e8

    move-object/from16 v22, v0

    move-object/from16 v23, p0

    move/from16 v31, v1

    invoke-direct/range {v22 .. v31}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$21;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v2, v0, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v12

    if-ge v11, v0, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    mul-int v12, v12, v0

    move v5, v12

    :goto_0
    move-object/from16 v0, p0

    move v4, v10

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->updateLanguage()V

    return-void
.end method

.method protected static final clickFillTheMap()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->disableDrawCivlizationsRegions_Players()V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FILL_THE_MAP:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->enableFillTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->disableFillTheMap()V

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->enableDrawCivlizationsRegions_Players()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfo(I)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateActiveCivInfo_CreateNewGame()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 5

    const-string v0, "Enabled"

    const-string v1, "Disabled"

    const-string v2, ": "

    const-string v3, " - "

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    goto/16 :goto_1

    :pswitch_2
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->updateLanguage()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    xor-int/2addr p1, v4

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    const-string v2, "Colonization"

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    goto/16 :goto_1

    :pswitch_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_CreateNewGame_Options_Pallets(Z)V

    goto/16 :goto_1

    :pswitch_6
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    xor-int/2addr v2, v4

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    const-string v2, "AoC1_Mode"

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    goto/16 :goto_1

    :pswitch_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SHUFFLE_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto/16 :goto_1

    :pswitch_9
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_FILL:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_FILL:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_FILL:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    goto/16 :goto_1

    :pswitch_a
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACMENT:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACMENT:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_PLACMENT:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->clickFillTheMap()V

    goto/16 :goto_1

    :pswitch_c
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildManageDiplomacy_Alliances()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->disableDrawCivlizationsRegions_Players()V

    const/4 p1, 0x0

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->resetManageDiplomacyIDs()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMANAGE_DIPLOMACY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->update_ExtraAction()V

    goto/16 :goto_1

    :pswitch_d
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Fogofwar"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFogOfWarName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Difficulty"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getDifficultyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_f
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eVICTORY_CONDITIONS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_1

    :pswitch_10
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_CreateNewGame_Options_Scenarios(Z)V

    goto :goto_1

    :pswitch_11
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_SETTINGS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setScaleBeforeReset(F)V

    goto :goto_1

    :pswitch_13
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSELECT_MAP_TYPE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->hideAnimation:Z

    const/high16 v1, 0x43960000    # 300.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_1
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->hideAnimation:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void

    :cond_2
    :goto_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v2

    invoke-virtual {p4, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosY()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getHeight()I

    move-result v1

    add-int v3, p4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p4, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz p4, :cond_3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getPosY()I

    move-result p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getScrollModeY()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getSliderMode()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, -0x2

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_1
    return-void
.end method

.method protected final setHideAnimation(Z)V
    .locals 8

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->hideAnimation:Z

    if-eq p1, v0, :cond_1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->lTime:J

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_1
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->hideAnimation:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->setHideAnimation(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->setHideAnimation(Z)V

    :goto_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Options"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "MapType"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ScaleOfMap"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Editor"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getNumOfCivs(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Civilizations"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "VictoryConditions"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Domination"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Difficulty"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getDifficultyName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Fogofwar"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFogOfWarName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ManageDiplomacy"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "FillTheMap"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "RandomPlacement"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "RandomFill"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ShuffleCivilizations"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "SandboxMode"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "AoC1_Mode"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "SpectatorMode"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ColonizationofWastelandProvinces"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "NeutralProvinces"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    if-eqz v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Colonization"

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Conquering"

    :goto_0
    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "GameSpeed"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "AIAggressiveness"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
