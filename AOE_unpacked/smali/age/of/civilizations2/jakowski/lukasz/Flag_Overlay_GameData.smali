.class public Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;
.super Ljava/lang/Object;
.source "Flag_Overlay_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iHeight:I

.field protected iOverlayID:I

.field protected iPosX:I

.field protected iPosY:I

.field protected iWidth:I

.field protected oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;


# direct methods
.method protected constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    return-void
.end method
