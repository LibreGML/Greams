.class Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_ServiceRibbon_Editor_Edit_Overlay.java"


# direct methods
.method protected constructor <init>()V
    .locals 33

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ColorPicker;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_ColorPicker;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v10, v1, v2

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v17, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v18, v1, 0x2

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v14, "-"

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v24, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v25, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v26, v1, v2

    sget v27, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v22, ""

    const/16 v23, -0x1

    const/16 v28, 0x1

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v28}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v11, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v12, v1, 0x2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v8, "+"

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v19, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v20, v1, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v16, "-"

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v10, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v11, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v12, v1, v2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v8, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v19, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v20, v1, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v16, "+"

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v28, v1, v2

    sget v29, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v30, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v23, v0

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "Position"

    const/4 v2, 0x3

    const-string v3, "Width"

    const/4 v4, 0x6

    const-string v5, ": "

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setReflected(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    if-lt p1, v0, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p1

    if-gtz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    :cond_4
    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_8

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_5

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    if-lt p1, v0, :cond_8

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sub-int/2addr v0, v6

    if-lt p1, v0, :cond_7

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setWidth(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :pswitch_5
    return-void

    :pswitch_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p1

    if-gez p1, :cond_9

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->setPosX(I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->onBackPressed()V

    return-void

    :pswitch_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_3

    :cond_a
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_SERVICE_RIBBON_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    sub-int v3, v1, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;Ljava/util/List;I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;Ljava/util/List;I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v2, v1

    add-int/2addr v2, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v2, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

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

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Position"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Width"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Reflected"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    return-void
.end method
