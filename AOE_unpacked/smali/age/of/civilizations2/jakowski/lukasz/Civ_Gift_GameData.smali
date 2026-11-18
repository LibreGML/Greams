.class Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;
.super Ljava/lang/Object;
.source "Civ_Gift_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iFromCivID:I

.field protected iTurnID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;->iFromCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;->iTurnID:I

    return-void
.end method
