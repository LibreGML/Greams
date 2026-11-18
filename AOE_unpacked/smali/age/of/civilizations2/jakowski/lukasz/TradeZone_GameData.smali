.class Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;
.super Ljava/lang/Object;
.source "TradeZone_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iAgeID:I

.field private iCenterOfTradeProvinceID:I

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->lProvinces:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->sName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;IILage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lage/of/civilizations2/jakowski/lukasz/Color_GameData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->lProvinces:Ljava/util/List;

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->iCenterOfTradeProvinceID:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->sName:Ljava/lang/String;

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->iAgeID:I

    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method


# virtual methods
.method protected final getAge()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->iAgeID:I

    return v0
.end method

.method protected final getCenterOfTradeProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->iCenterOfTradeProvinceID:I

    return v0
.end method

.method protected final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getProvince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->lProvinces:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final setAge(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->iAgeID:I

    return-void
.end method

.method protected final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->sName:Ljava/lang/String;

    return-void
.end method
