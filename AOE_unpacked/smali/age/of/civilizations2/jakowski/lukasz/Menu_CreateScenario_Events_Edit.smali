.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Events_Edit.java"


# instance fields
.field private iEventTitleWidth:I

.field private iPictureWidth:I

.field private sEventTitle:Ljava/lang/String;

.field private sPicture:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iEventTitleWidth:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iPictureWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int v18, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v17, v1, 0x4

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    div-int/lit8 v6, v6, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$1;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v1, 0x2

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v18, v1

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move v11, v5

    invoke-direct/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$2;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v8

    const-string v9, ""

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v1, 0x2

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v13, v18, v1

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move v12, v5

    invoke-direct/range {v6 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;ILjava/lang/String;IIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    div-int/lit8 v6, v6, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$3;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Repeatable"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v18, v1

    const/4 v13, 0x1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getRepeatable()Z

    move-result v14

    move-object/from16 v7, p0

    move v11, v5

    invoke-direct/range {v6 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$4;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Triggers"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v13, v1, v2

    move-object/from16 v7, p0

    move v11, v5

    move/from16 v12, v18

    invoke-direct/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "AddNewTrigger"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    const/4 v15, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    if-ge v15, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->getTriggerText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$5;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventTypeText(Lage/of/civilizations2/jakowski/lukasz/Event_Type;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v1, v18, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v12, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v13, v1

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move v11, v5

    invoke-direct/range {v6 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$6;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v1, v18, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v1, v3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v3

    float-to-int v6, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v3

    float-to-int v7, v1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;IIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_0
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$7;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "PopUp"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v13, v1, v2

    move-object/from16 v7, p0

    move v11, v5

    move/from16 v12, v18

    invoke-direct/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$8;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ShowPopUp"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v18, v1

    const/4 v13, 0x1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v1

    iget-boolean v14, v1, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    move-object/from16 v7, p0

    move v11, v5

    invoke-direct/range {v6 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$9;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v2

    iget-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v6, v18, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v7

    float-to-int v7, v2

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3f4ccccd    # 0.8f

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$10;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventPicture()Ljava/lang/String;

    move-result-object v8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v1, 0x2

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v18, v1

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move v11, v5

    invoke-direct/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$11;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Outcomes"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v13, v1, v2

    move-object/from16 v7, p0

    move v11, v5

    move/from16 v12, v18

    invoke-direct/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "AddNewOutcome"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    const/4 v15, 0x0

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Game_NewGameBoxStyle_RIGHT_Remove;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v1, v18, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v4, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v6, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v7, v1

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_NewGameBoxStyle_RIGHT_Remove;-><init>(IIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$12;

    const/4 v8, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v9, v1, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v9, v1, v18

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v7, p0

    move-object v8, v6

    move/from16 v11, v18

    move-object/from16 v13, v16

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->updateLanguage()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->setVisible(Z)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sEventTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iEventTitleWidth:I

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sPicture:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iPictureWidth:I

    return v0
.end method

.method private final saveEditData()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventName(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setEventPicture(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 4

    const v3, 0x98967f

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x9

    if-lt p1, v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x9

    if-ge p1, v2, :cond_4

    add-int/lit8 p1, p1, -0x9

    rem-int/lit8 v1, p1, 0x3

    if-nez v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    div-int/lit8 v1, p1, 0x3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_TRIGGER:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v1, p1, 0x3

    if-ne v1, v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    div-int/lit8 v1, p1, 0x3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    :goto_1
    add-int/lit8 v0, p1, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventTypeText(Lage/of/civilizations2/jakowski/lukasz/Event_Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    add-int/lit8 v1, p1, 0x9

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    goto :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    goto :goto_1

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    div-int/lit8 v2, p1, 0x3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->removeTrigger(I)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateScenario_Events_Edit(Z)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xa

    if-ne p1, v2, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    if-nez v3, :cond_5

    :goto_2
    iput-boolean v0, v2, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xb

    if-ne p1, v2, :cond_7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xc

    if-ne p1, v2, :cond_8

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xe

    if-ne p1, v2, :cond_9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_DECISION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xf

    if-lt p1, v2, :cond_b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xf

    sub-int/2addr p1, v1

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_a

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_DECISION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    div-int/lit8 v2, p1, 0x2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateScenario_Events_Edit(Z)V

    goto/16 :goto_0

    :cond_b
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_EVENTS_EDIT_BACK:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_EVENTS_EDIT_SAVE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_RECIPENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setSinceDate:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    if-ne v0, v3, :cond_c

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    :goto_3
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Age:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_DATE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateCreateScanerio_Events_Slider()V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result v0

    goto :goto_3

    :pswitch_6
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->saveEditData()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setSinceDate:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    if-ne v0, v3, :cond_d

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    :goto_4
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Age:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_DATE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateCreateScanerio_Events_Slider()V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result v0

    goto :goto_4

    :pswitch_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getRepeatable()Z

    move-result v3

    if-nez v3, :cond_e

    :goto_5
    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setRepeatable(Z)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_5

    :pswitch_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->addNewTrigger()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_TRIGGER:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

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
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getWidth()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosY()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getWidth()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 5

    const v4, 0x98967f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewEvent"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "EventTitle"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sEventTitle:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sEventTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iEventTitleWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Picture"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sPicture:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->sPicture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->iPictureWidth:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "SaveEvent"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Recipient"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Since"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    if-ne v0, v4, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "NoDate"

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Until"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    if-ne v0, v4, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "NoDate"

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate_CreateEvent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate_CreateEvent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
