.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;
.super Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;
.source "Menu_CreateScenario_AvailableProvinces.java"


# instance fields
.field private iPlayableProvincesWidth:I

.field private iStepWidth:I

.field private iStepWidth2:I

.field private iWastelandProvincesWidth:I

.field private sPlayableProvinces:Ljava/lang/String;

.field private sWastelandProvinces:Ljava/lang/String;

.field private selectMapOfAvailableProvinces:Ljava/lang/String;

.field private selectMapOfAvailableProvinces2:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$1;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v18, v1, v2

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v20, 0x1

    move-object v14, v0

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Minimap;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Minimap;-><init>(II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Slide;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Slide;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$3;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v12, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v13, v1, 0x2

    sget-boolean v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int v20, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v21, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v22, v1, 0x2

    sget-boolean v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v23, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v11, v1, v2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$5;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int v19, v1, v2

    sget-boolean v21, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v20, 0x1

    move-object v13, v0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v11, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    const-string v0, " - "

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REVERSE_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    return-void

    :pswitch_2
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    xor-int/2addr p1, v2

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    const-string v1, "Colonization"

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Disabled"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lCreateScenario_UndoWastelandProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    :cond_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->removeUndoWastelandProvince()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateNumOfAvailableProvinces()V

    :cond_3
    return-void

    :pswitch_4
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    return-void

    :pswitch_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    return-void

    :pswitch_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getPosX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToMinimapClick(II)V

    goto/16 :goto_7

    :pswitch_7
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v4

    if-ge p1, v4, :cond_5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ge v3, p1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Error"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "PlayableProvinces"

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->goToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->goToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_RANDOM_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    if-eq p1, v0, :cond_d

    const/4 p1, 0x0

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v0

    if-ge p1, v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID(IZZ)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x1

    :goto_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge p1, v0, :cond_c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v0, v3, :cond_a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_9

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCapitalProvinceID(I)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->createScenarioRemoveCivilization(I)V

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_c
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildWastelandLevels()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateCreateScenario_Civilizations()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations()V

    goto :goto_6

    :cond_d
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildWastelandLevels()V

    :goto_6
    return-void

    :goto_7
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;->actionElement(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v1

    add-int v1, v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {p1, v9, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R_Reflected(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v5

    sub-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-static {p1, v2, v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorButtons_Top_Edge_R_Reflected(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v4

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v4, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v3

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v9, v1, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorButtons_Bot_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces:Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iStepWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3f733333    # 0.95f

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces2:Ljava/lang/String;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iStepWidth2:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int/2addr v3, v2

    add-int/2addr v3, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int v2, v2, p3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v3, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d75c28f    # 0.06f

    invoke-direct {v1, v2, v2, v2, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v12, 0x3f666666    # 0.9f

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvincesWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v2, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvincesWidth:I

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvincesWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v2, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvincesWidth:I

    add-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sPlayableProvinces:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvinces:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfAvailableProvincesWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvincesWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v2, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvincesWidth:I

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvincesWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_WIDTH:I

    add-int/2addr v2, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvincesWidth:I

    add-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sWastelandProvinces:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvinces:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfWastelandProvincesWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_NAME_BG_EXTRA_HEIGHT:I

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 9

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;->updateLanguage()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "CustomizeWasteland"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iStepWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "SetWhichProvincesOfTheWorldAreWasteland"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces2:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->selectMapOfAvailableProvinces2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iStepWidth2:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Wasteland"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Brush"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "Undo"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "ColonizationofWasteland"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "Reverse"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v0, v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->updatedButtonsWidthFromToID(IIII)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v6

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    invoke-virtual {p0, v2, v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->updatedButtonsWidthFromToID(IIII)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->updatedButtonsWidthFromToID(IIII)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/16 v8, 0x9

    invoke-virtual {p0, v5, v8, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->updatedButtonsWidthFromToID(IIII)V

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v6

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v6, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Playable"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sPlayableProvinces:Ljava/lang/String;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sPlayableProvinces:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iPlayableProvincesWidth:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sWastelandProvinces:Ljava/lang/String;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->sWastelandProvinces:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v3, v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->iWastelandProvincesWidth:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_AvailableProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    return-void
.end method
