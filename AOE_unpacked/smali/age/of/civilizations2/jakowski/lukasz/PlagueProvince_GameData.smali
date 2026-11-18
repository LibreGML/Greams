.class Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;
.super Ljava/lang/Object;
.source "PlagueProvince_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iDeaths:I

.field protected iDurationTurnsLeft:F

.field protected iPlagueID_InGame:I

.field protected iSinceTurnID:I


# direct methods
.method protected constructor <init>(IIFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iPlagueID_InGame:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iSinceTurnID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iDeaths:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iDurationTurnsLeft:F

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iPlagueID_InGame:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iSinceTurnID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iDurationTurnsLeft:F

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iDeaths:I

    return-void
.end method
