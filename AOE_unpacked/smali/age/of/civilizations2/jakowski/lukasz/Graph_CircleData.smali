.class Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;
.super Ljava/lang/Object;
.source "Graph_CircleData.java"


# instance fields
.field private fPercentage:F

.field private iDataID:I


# direct methods
.method protected constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->iDataID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->fPercentage:F

    return-void
.end method


# virtual methods
.method protected final getDataID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->iDataID:I

    return v0
.end method

.method protected final getPercentage()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->fPercentage:F

    return v0
.end method

.method protected final setPercentage(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->fPercentage:F

    return-void
.end method
