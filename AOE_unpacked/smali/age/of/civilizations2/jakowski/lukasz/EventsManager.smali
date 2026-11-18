.class public final Lage/of/civilizations2/jakowski/lukasz/EventsManager;
.super Ljava/lang/Object;
.source "EventsManager.java"


# instance fields
.field public eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

.field public eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

.field public iCreateEvent_Age:I

.field public iCreateEvent_Day:I

.field public iCreateEvent_EditConditionID:I

.field public iCreateEvent_EditEventID:I

.field public iCreateEvent_EditTriggerID:I

.field public iCreateEvent_Month:I

.field public iCreateEvent_Year:I

.field public lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

.field public setSinceDate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Age:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setSinceDate:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditEventID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_RECIPENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    return-void
.end method


# virtual methods
.method public addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    return-void
.end method

.method protected final checkCondtsitionsAndTryRun(I)V
    .locals 7

    const/4 v0, 0x0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCondtsitionsAndTryRun: name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " 000"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->getTriggerOut()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCondtsitionsAndTryRun: name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " canRunEvent1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->getTriggerOut()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    :cond_1
    :goto_2
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCondtsitionsAndTryRun: name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " canRunEvent1.5: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCondtsitionsAndTryRun: name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " checked: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCondtsitionsAndTryRun: name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " canRunEvent2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->tryRunEvent(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->getTriggerOut()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public checkEvents()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getWasFired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    if-gt v2, v3, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    if-gt v2, v3, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    if-gt v2, v3, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getWasTriedToRunOnce()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    const v3, 0x98967f

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    if-lt v2, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->checkCondtsitionsAndTryRun(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasTriedToRunOnce(Z)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->checkCondtsitionsAndTryRun(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public clearEvents()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    return-void
.end method

.method public getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    return-object v0
.end method

.method public getEventTypeText(Lage/of/civilizations2/jakowski/lukasz/Event_Type;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne p1, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne p1, v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "OR"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    return v0
.end method

.method public removeEvent(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    return-void
.end method

.method public runEvent_Tag(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->tryRunEvent(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectCivAction(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
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

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setValue(I)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvinces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

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

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvinces()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setValue(I)V

    goto :goto_0

    :cond_0
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

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setValue(I)V

    :goto_0
    return-void

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

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvinces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setProvinces(Ljava/util/List;)V

    return-void

    :pswitch_3
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

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID2(I)V

    return-void

    :pswitch_4
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

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setValue(I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvinces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setProvinces(Ljava/util/List;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID2(I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectCivBack()V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eSelectCivAction:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_TRIGGERANOTHEREVENT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3
    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_CivName;

    aput-object v3, v0, v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/X;->setMyView([Ljava/lang/Class;)V

    :pswitch_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvinces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setValue(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_ProvinceName;

    aput-object v1, v0, v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/X;->setMyView([Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Leader;

    aput-object v1, v0, v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/X;->setMyView([Ljava/lang/Class;)V

    return-void

    :pswitch_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_FORM_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_MOVEMENTPOINTS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_DIPLOMACYPOINTS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_MONEY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_HAPPINESS_OF_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_DEVELOPEMNT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_TECHLEVEL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMY_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEECONOMYPERC:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION_PERC:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_UPDATEPOPULATION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_LIBERATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_INDEPENENCE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_MILITARY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_JOINUNION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_LEAVEALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_JOINALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_CREATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_DECRELATION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_INCRELATION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_WHITEPEACE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_DECLAREWAR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_CHANGE_OWNER:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_PORT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_FARM:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_FORT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_WATCHTOWER:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_DEVELOPMENT_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_2f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_30
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_CONTROLLEDBYPLAYER:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_TREASURY_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_TREASURY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_HAPPINESS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_TECHNOLOGY_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ISPARTOFHRE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ISVASSAL_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ISVASSAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_MILITARYACCESS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_INDEPENDENCE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_3f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ATWAR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_40
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ALLIES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ISATWAR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_RELATION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_RELATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ECONOMY_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_POPULATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFNEIGHBORS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFNEIGHBORS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFALLIES_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFALLIES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFWARS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFWARS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFVASSALS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_4f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFVASSALS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFUNITS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFUNITS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_52
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFPROVINCES_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_NUMOFPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_55
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_HAVECORE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_56
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_HAVEARMY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_OCCUPIED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_CONTROLS_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_5a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_CIVEXIST:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :pswitch_5b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateScenario_Events_Edit(Z)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_42
        :pswitch_43
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_39
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_37
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_3
        :pswitch_27
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_6
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_20
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_18
        :pswitch_16
        :pswitch_59
        :pswitch_7
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sortEventsByDate()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    if-le v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V

    goto :goto_4

    :cond_2
    :goto_2
    goto :goto_4

    :cond_3
    :goto_3
    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public swapIDsOfCivs(II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    if-ge v0, v1, :cond_e

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->getCivID()I

    move-result v3

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID(I)V

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->getCivID()I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID(I)V

    :cond_3
    :goto_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->getCivID2()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID2(I)V

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->getCivID2()I

    move-result v3

    if-ne v3, p2, :cond_5

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->setCivID2(I)V

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getCivID()I

    move-result v3

    if-ne v3, p1, :cond_8

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID(I)V

    goto :goto_8

    :cond_8
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getCivID()I

    move-result v3

    if-ne v3, p2, :cond_9

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID(I)V

    :cond_9
    :goto_8
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getCivID2()I

    move-result v3

    if-ne v3, p1, :cond_a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID2(I)V

    goto :goto_9

    :cond_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->getCivID2()I

    move-result v3

    if-ne v3, p2, :cond_b

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->setCivID2(I)V

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public tryRunEvent(I)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addEventToRunID(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getRepeatable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    return-void
.end method

.method public updateEventsAferRemoveCiv(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->iEventsSize:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->removeEvent(I)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v1

    if-le v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setCivID(I)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->updateCivIDAfterRemove(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->updateCivIDAfterRemove(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
