.class Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_ServiceRibbon_Editor_Edit.java"


# direct methods
.method protected constructor <init>()V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v12, v1, v2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x0

    move-object v8, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v19, v1, v2

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int v20, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v21, v1, v2

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v17, ""

    const/16 v23, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$3;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v3, v0, 0x4

    mul-int v2, v2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v0, 0x2

    mul-int v4, v4, v5

    add-int v12, v2, v4

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v15, 0x1

    const-string v9, ""

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    const/16 v18, 0x0

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v2, v2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v4, v4, v5

    add-int v20, v2, v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v21, v2, v4

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v23, 0x1

    const-string v17, ""

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$4;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v9, v2, v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v2, v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v3, v3, v5

    add-int v10, v2, v3

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v13, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;IIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 7

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_8

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_4

    rem-int/lit8 v5, p1, 0x3

    if-ne v5, v0, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    add-int/lit8 p1, p1, -0x5

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->removeServiceRibbon_Overlay(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_0

    :cond_0
    if-ne v5, v1, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    add-int/lit8 p1, p1, -0x5

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    if-ne v1, p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_1
    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

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

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x5

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_SERVICE_RIBBON_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    add-int/lit8 p1, p1, -0x5

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    if-nez p1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_1

    :cond_6
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

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

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    goto :goto_1

    :cond_7
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_SERVICE_RIBBON_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :goto_1
    return-void

    :cond_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    invoke-direct {v1, v3, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;-><init>(IIZ)V

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->addServiceRibbonOverlay(Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors_Add()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result p1

    sub-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT_OVERLAY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :cond_9
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->saveData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadSR()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->onBackPressed()V

    return-void

    :cond_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->onBackPressed()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p2

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move/from16 v10, p3

    invoke-static {p1, v9, v10, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;Ljava/util/List;I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v11, 0x1

    invoke-virtual {v1, p1, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    sub-int v4, v2, v4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v11, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v4, v4, v11

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v11

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    sub-int v4, v2, v4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v9

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v4, v4, v11

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v11

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    sub-int v4, v2, v4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v2, v11}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

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

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewOverlay"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
