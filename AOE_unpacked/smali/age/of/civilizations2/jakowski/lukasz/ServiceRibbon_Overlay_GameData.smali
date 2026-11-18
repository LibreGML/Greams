.class Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;
.super Ljava/lang/Object;
.source "ServiceRibbon_Overlay_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iPosX:I

.field private iWidth:I

.field private reflected:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    return-void
.end method


# virtual methods
.method protected final getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    return v0
.end method

.method protected final getReflected()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    return v0
.end method

.method protected final getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    return v0
.end method

.method protected final setPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iPosX:I

    return-void
.end method

.method protected final setReflected(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->reflected:Z

    return-void
.end method

.method protected final setWidth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->iWidth:I

    return-void
.end method
