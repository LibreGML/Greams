.class public Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;
.super Ljava/lang/Object;
.source "Event_Outcome.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_CHANGE_OWNER:Lage/of/civilizations2/jakowski/lukasz/Menu;

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

.method protected outcomeAction()V
    .locals 0

    return-void
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
