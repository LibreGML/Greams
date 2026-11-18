.class Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;
.super Ljava/lang/Object;
.source "Civilization_Friends_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCivID:I

.field protected iSinceTurnID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    return-void
.end method
