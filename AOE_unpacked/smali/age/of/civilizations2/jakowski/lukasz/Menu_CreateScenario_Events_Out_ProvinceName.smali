.class public final Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Events_Out_ProvinceName.java"


# static fields
.field public static xMenu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->xMenu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    const/4 v11, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v12, v2

    const/4 v13, 0x0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v17, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName$1;

    const/16 v20, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v22, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v23, v3, v4

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v26, 0x1

    move-object/from16 v18, v1

    move-object/from16 v19, p0

    move/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    sub-int v6, v1, v6

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getValue()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->addProvince(I)Z

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCE_NAME:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_SELECT_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ProvinceName;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_ProvinceName;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->onBackPressed()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_DECISION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const-string v2, "SelectProvince"

    if-ltz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "UpdateProvinceName"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
