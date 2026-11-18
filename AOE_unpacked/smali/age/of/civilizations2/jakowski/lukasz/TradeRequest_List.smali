.class Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;
.super Ljava/lang/Object;
.source "TradeRequest_List.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected defensivePact:Z

.field protected iDeclarWarOnCivID:I

.field protected iFormCoalitionAgainst:I

.field protected iGold:I

.field protected iManPower:I

.field protected lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected militaryAccess:Z

.field protected nonAggressionPact:Z

.field protected proclaimIndependence:Z


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iManPower:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->defensivePact:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->nonAggressionPact:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z

    return-void
.end method
