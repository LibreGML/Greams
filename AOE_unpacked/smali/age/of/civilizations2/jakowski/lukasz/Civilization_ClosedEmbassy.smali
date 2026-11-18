.class Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;
.super Ljava/lang/Object;
.source "Civilization_ClosedEmbassy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iNumOfTurns:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    return-void
.end method
