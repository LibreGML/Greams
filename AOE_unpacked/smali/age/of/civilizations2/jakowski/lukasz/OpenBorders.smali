.class Lage/of/civilizations2/jakowski/lukasz/OpenBorders;
.super Ljava/lang/Object;
.source "OpenBorders.java"


# instance fields
.field private iNumOfTurns:I

.field private iToCivID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iToCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iNumOfTurns:I

    return-void
.end method


# virtual methods
.method protected final getNumOfTurns()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iNumOfTurns:I

    return v0
.end method

.method protected final getToCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iToCivID:I

    return v0
.end method

.method protected final setNumOfTurns(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iNumOfTurns:I

    return-void
.end method

.method protected final setToCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/OpenBorders;->iToCivID:I

    return-void
.end method
