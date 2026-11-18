.class Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;
.super Ljava/lang/Object;
.source "Vassal_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iTribute:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->setTribute(I)V

    return-void
.end method


# virtual methods
.method protected final setTribute(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/16 p1, -0x64

    :cond_1
    :goto_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iTribute:I

    return-void
.end method
