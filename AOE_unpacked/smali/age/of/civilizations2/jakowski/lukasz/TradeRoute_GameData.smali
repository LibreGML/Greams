.class Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;
.super Ljava/lang/Object;
.source "TradeRoute_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iAgeFoundID:I

.field private sFromTagID:Ljava/lang/String;

.field private sToTagID:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAgeFoundID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->iAgeFoundID:I

    return v0
.end method

.method protected final getFromTagID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sFromTagID:Ljava/lang/String;

    return-object v0
.end method

.method protected final getToTagID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sToTagID:Ljava/lang/String;

    return-object v0
.end method

.method protected final setAgeFoundID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->iAgeFoundID:I

    return-void
.end method

.method protected final setFromTagID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sFromTagID:Ljava/lang/String;

    return-void
.end method

.method protected final setToTagID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRoute_GameData;->sToTagID:Ljava/lang/String;

    return-void
.end method
