.class Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capital;
.super Ljava/lang/Object;
.source "Timelapse_Capital.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iProvinceID:I

.field protected iSinceTurnID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capital;->iSinceTurnID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capital;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capital;->iSinceTurnID:I

    return-void
.end method
