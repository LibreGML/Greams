.class Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
.super Ljava/lang/Object;
.source "CivInvest_Development.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iDevelopemntLeft:F

.field protected iDevelopemntPerTurn:F

.field protected iProvinceID:I

.field protected iTurnsLeft:I


# direct methods
.method protected constructor <init>(IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntPerTurn:F

    return-void
.end method
