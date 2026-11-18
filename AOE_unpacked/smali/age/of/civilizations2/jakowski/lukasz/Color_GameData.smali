.class Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
.super Ljava/lang/Object;
.source "Color_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fB:F

.field private fG:F

.field private fR:F


# direct methods
.method protected constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    return-void
.end method


# virtual methods
.method protected final getB()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    return v0
.end method

.method protected final getG()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    return v0
.end method

.method protected final getR()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    return v0
.end method

.method protected final setB(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fB:F

    return-void
.end method

.method protected final setG(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fG:F

    return-void
.end method

.method protected final setR(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->fR:F

    return-void
.end method
