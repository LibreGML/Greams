.class Lage/of/civilizations2/jakowski/lukasz/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private belowZero:Z

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

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


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iProvincesSize:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->belowZero:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addProvince(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildRegionBounds()V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxY:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iProvincesSize:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iProvincesSize:I

    if-ge v1, v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinX:I

    if-ge v3, v4, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinX:I

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxX:I

    if-le v3, v4, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxX:I

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinY:I

    if-ge v3, v4, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinY:I

    :cond_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxY:I

    if-le v3, v4, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxY:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinX:I

    if-gez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->belowZero:Z

    :cond_6
    return-void
.end method

.method protected final getBelowZero()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->belowZero:Z

    return v0
.end method

.method protected final getMaxX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxX:I

    return v0
.end method

.method protected final getMaxY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMaxY:I

    return v0
.end method

.method protected final getMinX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinX:I

    return v0
.end method

.method protected final getMinY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iMinY:I

    return v0
.end method

.method protected final getProvince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iProvincesSize:I

    return v0
.end method

.method protected final getProvincesSize2()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final removeProvince(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Region;->iProvincesSize:I

    return-void
.end method
