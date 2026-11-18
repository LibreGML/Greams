.class Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;
.super Ljava/lang/Object;
.source "Event_Trigger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected lConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;",
            ">;"
        }
    .end annotation
.end field

.field protected triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->triggerType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    return-void
.end method


# virtual methods
.method protected final getTriggerOut()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->outCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->outCondition()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->outCondition()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected final getTriggerText()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    move v5, v3

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    move v2, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->getConditionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    return-object v1
.end method
