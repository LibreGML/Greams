.class Lage/of/civilizations2/jakowski/lukasz/TradeZone;
.super Ljava/lang/Object;
.source "TradeZone.java"


# instance fields
.field private cColor:Lcom/badlogic/gdx/graphics/Color;

.field private iAgeID:I

.field private iCenterOfTradeProvinceID:I

.field private iProvincesSize:I

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->cColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iAgeID:I

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->loadName(Ljava/lang/String;)V

    iput-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->cColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    return-void
.end method

.method private final isConnected(I)Z
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    if-ge v0, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-lez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    if-ge v0, v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method private final loadName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->sName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected final addProvinceID(I)V
    .locals 0

    return-void
.end method

.method protected final getAge()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iAgeID:I

    return v0
.end method

.method protected final getCenterOfTradeProvinceID()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getCenterOfTradeProvinceID_Real()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    return v0
.end method

.method protected final getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->cColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getProvince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

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

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    return v0
.end method

.method protected final removeProvinceID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    return-void
.end method

.method protected final setAgeID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iAgeID:I

    return-void
.end method

.method protected final setCenterOfTrade(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->iCenterOfTradeProvinceID:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->cColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->sName:Ljava/lang/String;

    return-void
.end method
