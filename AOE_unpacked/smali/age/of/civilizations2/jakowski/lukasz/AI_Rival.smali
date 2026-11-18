.class public Lage/of/civilizations2/jakowski/lukasz/AI_Rival;
.super Ljava/lang/Object;
.source "AI_Rival.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iUntilTurnID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Rival;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Rival;->iUntilTurnID:I

    return-void
.end method
