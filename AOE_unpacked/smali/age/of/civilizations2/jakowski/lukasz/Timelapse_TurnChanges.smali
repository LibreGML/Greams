.class Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;
.super Ljava/lang/Object;
.source "Timelapse_TurnChanges.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iProvinceID:I

.field protected iToCivID:I

.field protected isOccupied:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->isOccupied:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iToCivID:I

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->isOccupied:Z

    return-void
.end method
