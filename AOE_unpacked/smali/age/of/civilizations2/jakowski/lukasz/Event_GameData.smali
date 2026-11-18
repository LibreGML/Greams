.class Lage/of/civilizations2/jakowski/lukasz/Event_GameData;
.super Ljava/lang/Object;
.source "Event_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

.field private eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

.field private event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

.field private iCivID_Recipient:I

.field protected lDecisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Decision;",
            ">;"
        }
    .end annotation
.end field

.field protected lTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private repeatable:Z

.field private sEventName:Ljava/lang/String;

.field private sEventPicture:Ljava/lang/String;

.field private sEventTag:Ljava/lang/String;

.field private wasFired:Z

.field private wasTriedToRunOnce:Z


# direct methods
.method protected constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_Date;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_Date;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addNewTrigger()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final checkDecisions()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final checkTriggers()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->removeTrigger(I)V

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    return v0
.end method

.method protected final getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    return-object v0
.end method

.method protected final getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    return-object v0
.end method

.method protected final getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getEventPicture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    return-object v0
.end method

.method protected final getEventTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    return-object v0
.end method

.method protected final getRepeatable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    return v0
.end method

.method protected final getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    return-object v0
.end method

.method protected final getTriggersSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getWasFired()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    return v0
.end method

.method protected final getWasTriedToRunOnce()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    return v0
.end method

.method protected final removeTrigger(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    return-void
.end method

.method protected final setEventDate_Since(III)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p2, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p3, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    return-void
.end method

.method protected final setEventDate_Until(III)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p2, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p3, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    return-void
.end method

.method protected final setEventName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    return-void
.end method

.method protected final setEventPicture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    return-void
.end method

.method protected final setEventTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    return-void
.end method

.method protected final setRepeatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    return-void
.end method

.method protected final setWasFired(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    return-void
.end method

.method protected final setWasTriedToRunOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    return-void
.end method
