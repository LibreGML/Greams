.class Lage/of/civilizations2/jakowski/lukasz/AI_Influence;
.super Ljava/lang/Object;
.source "AI_Influence.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iMinRelation:I

.field protected iUntilTurnID:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Influence;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Influence;->iMinRelation:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Influence;->iUntilTurnID:I

    return-void
.end method
