.class public final Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$1;

    const-string v4, ""

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v2, 0x2

    const/4 v6, 0x0

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v2, v12

    move-object v3, p0

    move v7, v11

    move v8, v0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "AddNewEvent"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v8, v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v12

    float-to-int v9, v3

    move-object v3, v2

    move v7, v11

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v0, v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->addEventItem(Ljava/util/List;III)V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v11, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v1, v0, v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->addEventItem(Ljava/util/List;III)V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v11, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$2;

    const/4 v4, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v5, v2, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;Ljava/lang/String;IZZ)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v4, v2, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int v5, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x5

    add-int/2addr v3, v6

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object v2, p0

    move-object v3, v8

    move v6, v0

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    add-int/lit8 p1, p1, -0x2

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateScenario_Events_Edit(Z)V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateScenario_Events_Edit(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_REMOVE_EVENT:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addEventItem(Ljava/util/List;III)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p1

    move/from16 v1, p4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$3;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v4

    const-string v5, ", "

    if-lez v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v7

    if-ge v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    const v5, 0x98967f

    if-ne v4, v5, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "NoDate"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate_CreateEvent()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v3, 0x2

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v13

    float-to-int v4, v4

    sub-int v11, v3, v4

    const/4 v12, 0x1

    move-object v4, v2

    move-object v5, p0

    move/from16 v10, p3

    invoke-direct/range {v4 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;ILjava/lang/String;IIIIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Game_NewGameBoxStyle_RIGHT_Remove;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, p2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-int v4, v4

    sub-int v4, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v13

    float-to-int v6, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v13

    float-to-int v7, v3

    const/4 v8, 0x1

    move-object v3, v2

    move/from16 v5, p3

    invoke-direct/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_NewGameBoxStyle_RIGHT_Remove;-><init>(IIIIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getWidth()I

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

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getHeight()I

    move-result v2

    add-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Events"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
