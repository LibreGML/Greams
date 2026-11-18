.class Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Editor_GameCivs_Edit2.java"


# instance fields
.field private iSRID:I

.field private final sCivTAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 22

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const-string v0, "Civilization TAG"

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->sCivTAG:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->iSRID:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/4 v12, 0x2

    div-int/lit8 v5, v0, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    float-to-int v3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    const/4 v8, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$2;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    const/4 v3, -0x1

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v13, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v19, v1, 0x2

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v15, "<<"

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v21, 0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v6, v1, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v17, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v19, v1, 0x2

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v15, ">>"

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getSRTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRID(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->iSRID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getSRTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSR(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v15, v14, :cond_0

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ServiceRibbon"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v1, v15, 0x3

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v5, v15, 0x4

    mul-int v1, v1, v5

    add-int v5, v0, v1

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v19, v6

    move/from16 v6, v16

    move-object v10, v7

    move/from16 v7, v17

    const/4 v13, 0x1

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    move/from16 v15, v19

    const/4 v10, 0x0

    const/4 v13, 0x3

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, v14, :cond_5

    if-nez v0, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v3, 0x3f7bfbfc

    const v4, 0x3c808081

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-ne v0, v13, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-ne v0, v12, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v3, 0x3e1c9c9d

    const v4, 0x3e9a9a9b

    const v5, 0x3f1b9b9c

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v3, 0x3db0b0b1

    const v4, 0x3e189899

    const v5, 0x3ee6e6e7

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v4, v1, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v6, v1, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v0, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int v6, v0, v6

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElementsSize()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->updateLanguage()V

    return-void
.end method

.method private final saveData()V
    .locals 12

    const-string v0, " -----"

    const-string v1, "game/civilizations_informations/"

    const-string v2, "Error"

    const-string v3, "----- "

    const-string v4, ";"

    const-string v5, "game/civilizations/Age_of_Civilizations"

    :goto_0
    const/16 v6, 0x1770

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->iSRID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSR(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v9, v10, :cond_0

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "game/civilizations/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    return-void

    :catch_1
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v8}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    aget-object v9, v2, v6

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_5

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v8}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->onBackPressed()V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    :goto_4
    :try_start_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_5

    :catch_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.bing.com/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->onBackPressed()V

    return-void

    :goto_6
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElementsSize()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const-string v0, "Civilization TAG"

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setCivTag(Ljava/lang/String;)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->saveData()V

    goto/16 :goto_0

    :cond_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    add-int/lit8 p1, p1, -0x6

    if-ne v1, p1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_2
    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_GAME_COLOR_SR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getSRTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRID(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRSize()I

    move-result v1

    if-lt p1, v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setCivTag(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->setSRTAG(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR_GAME_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewIDWithoutAnimation(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_0

    :cond_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->iSRID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getSRTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRID(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v4

    if-gtz p1, :cond_7

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRSize()I

    move-result p1

    sub-int/2addr p1, v0

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->setCivTag(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->setSRTAG(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR_GAME_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewIDWithoutAnimation(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0

    :cond_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    if-ne p1, v4, :cond_9

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_9
    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_GAME_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    const/4 v11, 0x6

    mul-int/lit8 v2, v2, 0x6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int v12, v2, v3

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v12, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    mul-int v3, v3, v13

    add-int/2addr v2, v3

    add-int v3, v2, p2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuPosY()I

    move-result v2

    add-int/2addr v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->iSRID:I

    move-object v2, p1

    move v5, v13

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSRLevel(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIILjava/util/List;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR_GAME_CIVS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "CivilizationColor"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElementsSize()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Editor_GameCivs_Edit2;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u845b\u58a8\u6797\u00a9\ufe0f\u7248\u6743\u6240\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "GameCivilizations"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
