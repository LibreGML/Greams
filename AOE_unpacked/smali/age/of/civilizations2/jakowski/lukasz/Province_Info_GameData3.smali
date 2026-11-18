.class public Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;
.super Ljava/lang/Object;
.source "Province_Info_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected fGrowthRate:F

.field protected iContinentID:I

.field protected iRegionID:I

.field protected iShiftX:I

.field protected iShiftY:I

.field protected sTerrainTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iContinentID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iRegionID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftY:I

    return-void
.end method
