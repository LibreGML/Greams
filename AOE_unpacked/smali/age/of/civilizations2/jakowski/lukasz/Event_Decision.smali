.class public Lage/of/civilizations2/jakowski/lukasz/Event_Decision;
.super Ljava/lang/Object;
.source "Event_Decision.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iAIChance:I

.field protected lOutcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;",
            ">;"
        }
    .end annotation
.end field

.field protected sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    return-void
.end method


# virtual methods
.method protected final executeDecision()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;->outcomeAction()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
