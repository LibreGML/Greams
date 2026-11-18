.class Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;
.super Ljava/lang/Object;
.source "AI_Frontline_AI.java"


# instance fields
.field private iFrontLinesSize:I

.field private iWithCivID:I

.field private lFrontLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;",
            ">;"
        }
    .end annotation
.end field

.field private lFrontLines_OwnFront:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILage/of/civilizations2/jakowski/lukasz/AI_Frontline;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iFrontLinesSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iWithCivID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iWithCivID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iFrontLinesSize:I

    return-void
.end method


# virtual methods
.method protected final addFrontLine(Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iFrontLinesSize:I

    return-void
.end method

.method protected final getFrontLine(I)Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline;

    return-object p1
.end method

.method protected final getFrontLinesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iFrontLinesSize:I

    return v0
.end method

.method protected final getWithCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->iWithCivID:I

    return v0
.end method

.method protected ownFront(I)Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Frontline_AI;->lFrontLines_OwnFront:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
