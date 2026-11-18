.class Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Settings_Province.java"


# instance fields
.field private sScale:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int v15, v0, v1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const-string v1, "-"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const-string v1, "+"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Clear;

    const-string v2, ""

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v5, v15, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v6

    float-to-int v6, v0

    const/16 v7, 0x19

    const/16 v8, 0xff

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Clear;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$1;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x64

    const/16 v8, 0x190

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$2;

    const/4 v7, 0x0

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    const/4 v12, 0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v13, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIZZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$3;

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/lit8 v11, v15, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v12, v0, v1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$4;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x64

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$5;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0xa

    const/16 v8, 0xc8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_FONT_SCALE:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$6;

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/lit8 v11, v15, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v12, v0, v1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$7;

    const/4 v7, 0x0

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    const/4 v12, 0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v13, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIZZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const-string v1, "-"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const-string v1, "+"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$8;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x64

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$9;

    const-string v7, ""

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$10;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x64

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$11;

    const-string v7, ""

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$12;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x64

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$13;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    int-to-float v1, v1

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v8

    float-to-int v8, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$14;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x1388

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$15;

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/lit8 v11, v15, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v12, v0, v1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;

    const-string v7, ""

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$17;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0xff

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$18;

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/lit8 v11, v15, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v12, v0, v1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$19;

    const-string v7, ""

    const/4 v8, -0x1

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v11, v15, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$20;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x0

    const/16 v8, 0xff

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const-string v1, "<<"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$21;

    const-string v7, ""

    const/4 v8, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v9, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v15, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const-string v1, ">>"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const-string v1, "<<"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;

    const-string v7, ""

    const/4 v8, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v9, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v15, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const-string v1, ">>"

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$23;

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v9, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    add-int/lit8 v11, v15, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v12, v0, v1

    move-object/from16 v6, p0

    move v10, v4

    invoke-direct/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIII)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$24;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x19

    const/16 v8, 0xff

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$25;

    const-string v2, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v15, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v7, 0x1

    const/16 v8, 0x64

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v1, v9

    float-to-int v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v15, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$26;

    const/4 v7, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v8, v0, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v8, v0, v15

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int v9, v0, v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v6, p0

    move-object v7, v5

    move v10, v15

    move-object v12, v14

    invoke-virtual/range {v6 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 8

    const/16 v7, 0x8

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->saveSettings()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->onBackPressed()V

    goto :goto_0

    :pswitch_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    const/16 v5, 0xc

    if-ge v3, v5, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    const/16 v5, 0xc

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontArmy()V

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameCanBeContinued:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateArmyWidth()V

    :cond_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->loadArmyBGImages()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :pswitch_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    const/16 v5, 0x80

    if-le v3, v5, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    const/16 v5, 0x80

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontArmy()V

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameCanBeContinued:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateArmyWidth()V

    :cond_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->loadArmyBGImages()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    goto/16 :goto_0

    :pswitch_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    goto/16 :goto_0

    :pswitch_7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    if-nez v6, :cond_7

    :goto_3
    iput-boolean v3, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_3

    :pswitch_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    const/4 v0, 0x1

    :goto_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->updateCities(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_FONT_SCALE:F

    const/4 v0, 0x0

    :goto_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v1, 0x0

    :goto_7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v3

    if-ge v1, v3, :cond_8

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/City;->updateCityNameWidth()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    if-nez v6, :cond_9

    :goto_8
    iput-boolean v3, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer_CivNames()V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_8

    :pswitch_b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    if-ge v3, v7, :cond_a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iput v7, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    :cond_a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    const/4 v0, 0x0

    :goto_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_c

    const/4 v1, 0x0

    :goto_a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v1, v3, :cond_b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    const/16 v4, 0x100

    if-le v3, v4, :cond_d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    const/16 v4, 0x100

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    :cond_d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    const/4 v0, 0x0

    :goto_b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_f

    const/4 v1, 0x0

    :goto_c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v1, v3, :cond_e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    goto/16 :goto_0

    :pswitch_e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->CIV_NAMES_OVER_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v4, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    goto/16 :goto_0

    :pswitch_10
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->CIV_NAMES_OVER_PROVINCES_BORDER:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v4, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    goto/16 :goto_0

    :pswitch_14
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->PROVINCE_SETTINGS_WASTELAND_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v4, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    goto/16 :goto_0

    :pswitch_16
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->PROVINCE_SETTINGS_DISCOVERY_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v4, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    goto/16 :goto_0

    :pswitch_18
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->moveLandTAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadNext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sMoveLine:Ljava/lang/String;

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->moveLandTAG:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadMoveLand()V

    goto/16 :goto_0

    :pswitch_19
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->moveLandTAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadNext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sMoveLine:Ljava/lang/String;

    iput-object v3, v4, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->moveLandTAG:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadMoveLand()V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightTAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadNext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sHighlightLine:Ljava/lang/String;

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightTAG:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadHighlight()V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightTAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadNext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sHighlightLine:Ljava/lang/String;

    iput-object v3, v4, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightTAG:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadHighlight()V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    goto/16 :goto_0

    :pswitch_1d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    goto/16 :goto_0

    :pswitch_1e
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v5, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    iput-boolean v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    iput v5, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateArmyFontSize()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontArmy()V

    const/4 v0, 0x0

    :goto_d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_10

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_10
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    const/4 v0, 0x1

    :goto_e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_11

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->updateCities(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_11
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->updateCitiesFontScale()V

    const/4 v0, 0x0

    :goto_f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_13

    const/4 v1, 0x0

    :goto_10
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v3

    if-ge v1, v3, :cond_12

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/City;->updateCityNameWidth()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_13
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    iput-boolean v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    const/4 v0, 0x0

    :goto_11
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_14

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_14
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setR(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setG(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setB(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setR(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setG(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setB(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setR(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setG(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->setB(F)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sMoveLine:Ljava/lang/String;

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sMoveLine:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadMoveLand()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sHighlightLine:Ljava/lang/String;

    iput-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sHighlightLine:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->loadHighlight()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer_CivNames()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateLanguage()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    neg-int v1, v1

    add-int v3, v1, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const-string v0, "\u845b\u58a8\u6797\u00a9\ufe0f\u7248\u6743\u6240\u6709"

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->sScale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSETTINGS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->updateArmyWidth()V

    return-void
.end method

.method protected final updateArmyWidth()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth_Just(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_4

    const/4 v1, 0x0

    :goto_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->setArmy(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->setNumOfUnits(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected updateLanguage()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "FontSizeofArmy"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ProvinceAlpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Scale"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "InnerBorders"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Cities"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "NumberOfCities"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ScaleOfCitiesNames"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CivilizationsNames"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "NamesOfCivilizationsOverProvinces"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "FontSize"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "MinScaleofCivilizationsNames"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "BorderColor"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Width"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AnimationTime"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Wasteland"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Fogofwar"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "OccupiedProvinces"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Scale"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Defaults"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_FONT_SCALE:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ProvinceSettings"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Scale"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->sScale:Ljava/lang/String;

    return-void
.end method
