.class Lage/of/civilizations2/jakowski/lukasz/WarReparations;
.super Ljava/lang/Object;
.source "WarReparations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iFromCivID:I

.field protected iTurnsLeft:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return-void
.end method
