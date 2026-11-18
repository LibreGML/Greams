.class Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;
.source "Event_Outcome_TriggerAnotherEvent.java"


# instance fields
.field protected sText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->sText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canMakeAction()Z
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->sText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_TRIGGERANOTHEREVENT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEventsSize()I

    move-result v3

    if-ge v1, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "TriggerAnotherEvent"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "TriggerAnotherEvent"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected getHoverText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected outcomeAction()V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->canMakeAction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->runEvent_Tag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_TriggerAnotherEvent;->sText:Ljava/lang/String;

    return-void
.end method
