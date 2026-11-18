.class Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.super Ljava/lang/Object;
.source "Event_Conditions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    return-void
.end method


# virtual methods
.method protected editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_CIVEXIST:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getCivID()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getCivID2()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getValue()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected outCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setCivID(I)V
    .locals 0

    return-void
.end method

.method protected setCivID2(I)V
    .locals 0

    return-void
.end method

.method protected setProvinces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setValue(I)V
    .locals 0

    return-void
.end method

.method protected updateCivIDAfterRemove(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
