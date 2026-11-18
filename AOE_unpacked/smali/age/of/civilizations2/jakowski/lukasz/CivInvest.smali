.class Lage/of/civilizations2/jakowski/lukasz/CivInvest;
.super Ljava/lang/Object;
.source "CivInvest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iEconomyLeft:I

.field protected iEconomyPerTurn:I

.field protected iProvinceID:I

.field protected iTurnsLeft:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyPerTurn:I

    return-void
.end method
