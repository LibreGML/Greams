.class Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
.super Ljava/lang/Object;
.source "Civilization_Region.java"


# instance fields
.field protected drawName:Z

.field private fAngle:F

.field private fontScale:F

.field private haveNotOccupiedProvince:Z

.field private iAvaragePointPosX:I

.field private iAvaragePointPosY:I

.field protected iAveragePotential:I

.field private iCharMaxHeight:I

.field private iCharMaxWidth:I

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private iRegionID:I

.field protected isKeyRegion:Z

.field private isSupplied:Z

.field protected lCostalineProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsAngle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seaAccess:Z

.field private seaAccess_HavePort:Z

.field private shortestLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triedToUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->addProvince(I)V

    return-void
.end method

.method private final buildAvaragePoint()V
    .locals 14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v5

    if-ge v5, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v0

    :cond_0
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v5

    if-le v5, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v1

    :cond_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v5

    if-ge v5, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    :cond_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v5

    if-le v5, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v4

    :cond_3
    const-wide/16 v5, 0x0

    move-wide v9, v5

    move-wide v6, v9

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v11

    if-ge v3, v11, :cond_a

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v12

    add-int/2addr v11, v12

    if-lt v11, v0, :cond_4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v11, v1, :cond_4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    add-int/2addr v11, v12

    if-lt v11, v2, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v11, v4, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v11, v11

    add-long/2addr v6, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    :goto_1
    add-int/2addr v11, v12

    int-to-long v11, v11

    add-long/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_4
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v11

    if-le v11, v0, :cond_5

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v11

    if-le v11, v1, :cond_6

    :cond_5
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v11

    if-le v11, v0, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v11

    if-gt v11, v1, :cond_9

    :cond_6
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v11

    if-lt v11, v2, :cond_7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v11

    if-le v11, v4, :cond_8

    :cond_7
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v11

    if-lt v11, v2, :cond_9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v11

    if-gt v11, v4, :cond_9

    :cond_8
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v11, v11

    add-long/2addr v6, v11

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    goto/16 :goto_1

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v5, :cond_b

    const/4 v5, 0x1

    :cond_b
    int-to-long v0, v5

    div-long/2addr v6, v0

    long-to-int v2, v6

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosX:I

    div-long/2addr v9, v0

    long-to-int v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosY:I

    return-void
.end method

.method private final buildDrawData()V
    .locals 15

    const-string v0, ""

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    :cond_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v4, :cond_3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v4, :cond_2

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    :catch_3
    move-exception v3

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v4, :cond_3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-double v3, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    neg-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v3, v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v7, v6, v5

    int-to-float v7, v7

    const v8, 0x3e19999a    # 0.15f

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, -0x1

    if-le v5, v6, :cond_4

    const/4 v11, -0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    :goto_2
    mul-int v9, v9, v11

    add-int/2addr v9, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    if-le v6, v5, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    :goto_3
    mul-int v7, v7, v5

    add-int/2addr v6, v7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v4

    add-int/2addr v7, v4

    sub-int v4, v7, v5

    int-to-float v4, v4

    mul-float v4, v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    if-le v5, v7, :cond_6

    const/4 v11, -0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x1

    :goto_4
    mul-int v8, v8, v11

    add-int/2addr v8, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-le v7, v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v10, 0x1

    :goto_5
    mul-int v4, v4, v10

    add-int/2addr v7, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    new-array v5, v4, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v9, v9

    int-to-float v8, v8

    invoke-direct {v11, v9, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v9, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v10, v1

    const/4 v8, 0x2

    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosX:I

    int-to-float v11, v11

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosY:I

    int-to-float v12, v12

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v9, v10, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-direct {v9, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v9, v10, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v9, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v9, v10, v8

    new-instance v6, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v6, v10, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_8

    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v8}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v8, v5, v7

    aget-object v8, v5, v7

    int-to-float v9, v7

    int-to-float v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    div-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_9

    aget-object v8, v5, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v9, v5, v6

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    add-int/lit8 v6, v6, 0x1

    aget-object v10, v5, v6

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v10, v10

    aget-object v11, v5, v6

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    invoke-virtual {p0, v8, v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_7

    :cond_9
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    aget-object v9, v5, v2

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    aget-object v10, v5, v2

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-direct {v6, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v4

    sub-int/2addr v4, v1

    div-int v4, v7, v4
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_8

    :catch_4
    move-exception v4

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_a

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    const/4 v4, 0x0

    :goto_8
    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_9
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v9

    if-ge v6, v9, :cond_d

    const/4 v9, 0x0

    :goto_a
    if-ge v7, v8, :cond_c

    aget-object v10, v5, v7

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v10, v10

    aget-object v11, v5, v7

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    add-int/lit8 v12, v7, 0x1

    aget-object v13, v5, v12

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v13, v13

    aget-object v14, v5, v12

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v14, v14

    invoke-virtual {p0, v10, v11, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v10

    add-int/2addr v10, v9

    if-lt v10, v4, :cond_b

    if-gt v9, v4, :cond_b

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    aget-object v11, v5, v7

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    aget-object v12, v5, v7

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_b
    move v9, v10

    move v7, v12

    goto :goto_a

    :cond_c
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_c
    :try_start_3
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v5

    if-ge v4, v5, :cond_14

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->setPosX(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_c

    :try_start_4
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_e

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v7

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v9

    invoke-virtual {p0, v5, v6, v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v7

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v10

    invoke-virtual {p0, v6, v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    goto :goto_d

    :cond_e
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v5

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v5

    :goto_d
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c

    goto/16 :goto_f

    :catch_5
    move-exception v5

    :try_start_5
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_f

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_f
    if-nez v4, :cond_10

    :try_start_6
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v8

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_e

    :catch_6
    :try_start_7
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_e

    :cond_10
    :try_start_8
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_e

    :catch_7
    :try_start_9
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_c

    :goto_e
    :try_start_a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_f

    :catch_8
    move-exception v5

    :try_start_b
    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_11

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_c

    :cond_11
    if-nez v4, :cond_12

    :try_start_c
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v8

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_f

    :catch_9
    :try_start_d
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_f

    :cond_12
    :try_start_e
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v6

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v7

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLinesAngle(IIII)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_f

    :catch_a
    :try_start_f
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_c

    :catch_b
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :catch_c
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_14

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_d
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_13

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_13
    :try_start_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_10

    :catch_e
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_14

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :catch_f
    :cond_14
    :goto_10
    return-void
.end method

.method private final buildMinMaxBounds()V
    .locals 3

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

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

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    if-ge v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    if-le v1, v2, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private final canBeUsedInPath(I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v1, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-lez v2, :cond_3

    if-le v3, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    return p1
.end method

.method private final canDrawTextProperly(II)Lage/of/civilizations2/jakowski/lukasz/Point_XY;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildAvaragePoint()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v5, v4

    int-to-float v6, v6

    const v7, 0x3e19999a    # 0.15f

    mul-float v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-le v4, v5, :cond_0

    const/4 v11, -0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x1

    :goto_0
    mul-int v8, v8, v11

    add-int/2addr v8, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    if-le v5, v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    mul-int v6, v6, v4

    add-int/2addr v5, v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v4, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v6

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v0

    add-int/2addr v6, v0

    sub-int v0, v6, v4

    int-to-float v0, v0

    mul-float v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    if-le v4, v6, :cond_2

    const/4 v11, -0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    mul-int v7, v7, v11

    add-int/2addr v7, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v6, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x1

    :goto_3
    mul-int v0, v0, v9

    add-int/2addr v6, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    new-array v4, v0, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v8

    int-to-float v7, v7

    invoke-direct {v11, v8, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v12, 0x0

    aput-object v11, v9, v12

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v8, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v9, v10

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosX:I

    int-to-float v8, v8

    iget v11, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAvaragePointPosY:I

    int-to-float v11, v11

    invoke-direct {v7, v8, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x2

    aput-object v7, v9, v8

    const/4 v7, 0x3

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct {v11, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v9, v7

    const/4 v7, 0x4

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v9, v7

    new-instance v5, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v5, v9, v12}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v0, :cond_4

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v7, v4, v6

    aget-object v7, v4, v6

    int-to-float v9, v6

    int-to-float v11, v0

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v11, v13

    div-float/2addr v9, v11

    invoke-virtual {v5, v7, v9}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v7, v0, -0x1

    if-ge v5, v7, :cond_5

    aget-object v7, v4, v5

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v7, v7

    aget-object v9, v4, v5

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    add-int/lit8 v5, v5, 0x1

    aget-object v11, v4, v5

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    aget-object v13, v4, v5

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v13, v13

    invoke-virtual {v1, v7, v9, v11, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_5

    :cond_5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    aget-object v5, v4, v12

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v9, v4, v12

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-direct {v0, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v0

    sub-int/2addr v0, v10

    div-int v0, v6, v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v5, :cond_6

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    const/4 v0, 0x0

    :goto_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_7
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result v9

    if-ge v5, v9, :cond_9

    const/4 v9, 0x0

    :goto_8
    if-ge v6, v7, :cond_8

    aget-object v11, v4, v6

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    aget-object v13, v4, v6

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v13, v13

    add-int/lit8 v14, v6, 0x1

    aget-object v15, v4, v14

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v15, v15

    aget-object v12, v4, v14

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-virtual {v1, v11, v13, v15, v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v11

    add-int/2addr v11, v9

    if-lt v11, v0, :cond_7

    if-gt v9, v0, :cond_7

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    aget-object v11, v4, v6

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    aget-object v12, v4, v6

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-direct {v9, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7
    move v9, v11

    move v6, v14

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    :goto_9
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_a
    if-ltz v0, :cond_b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->setProvinceID_Point(II)I

    move-result v4

    if-ltz v4, :cond_a

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-eq v5, v4, :cond_a

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    return-object v0

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final addProvince(I)V
    .locals 5

    const/4 v3, 0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isKeyRegion:Z

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    :cond_2
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-nez v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    if-lez v1, :cond_3

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    :cond_3
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    if-nez v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->haveNotMoney:Z

    if-nez v4, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-nez v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final buildRegionPath()Z
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildMinMaxBounds()V

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_1f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v2, v6, :cond_2

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v2, v6, :cond_4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBelowZero()Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    const/4 v7, -0x1

    if-ge v2, v6, :cond_5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    :cond_6
    if-ne v2, v7, :cond_7

    return v1

    :cond_7
    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v10

    sub-int/2addr v7, v10

    int-to-double v10, v7

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v12

    sub-int/2addr v7, v12

    int-to-double v12, v7

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v7, v10

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-double v12, v12

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v15, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-double v13, v13

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/lit8 v9, v2, 0x1

    move v11, v2

    move v13, v11

    move v14, v13

    move v12, v6

    move v15, v7

    move v1, v8

    move v3, v10

    move v6, v14

    move v7, v6

    move v8, v7

    move v10, v8

    :goto_3
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v9, v5, :cond_12

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/4 v7, 0x2

    goto/16 :goto_6

    :cond_8
    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    move-object/from16 v16, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    move/from16 v17, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v18, v8

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v19, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v2

    add-int/2addr v7, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v2

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v20, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v0, v5, v4, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    if-ge v2, v12, :cond_9

    move/from16 v19, v9

    goto :goto_4

    :cond_9
    move v2, v12

    :goto_4
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v4

    if-ge v4, v15, :cond_a

    move v15, v4

    move/from16 v20, v9

    :cond_a
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v4

    if-ge v4, v3, :cond_b

    move v3, v4

    move/from16 v17, v9

    :cond_b
    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinX:I

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v4

    if-ge v4, v1, :cond_c

    move v1, v4

    move/from16 v18, v9

    :cond_c
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_d

    move v10, v9

    :cond_d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_e

    move v11, v9

    :cond_e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sub-int/2addr v6, v5

    const/4 v7, 0x2

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_f

    move v13, v9

    :cond_f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMinY:I

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iMaxY:I

    sub-int/2addr v6, v5

    const/4 v7, 0x2

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_11

    move v12, v2

    move v14, v9

    goto :goto_5

    :cond_10
    const/4 v7, 0x2

    :cond_11
    move v12, v2

    :goto_5
    move/from16 v8, v18

    move/from16 v2, v19

    move/from16 v6, v20

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    move/from16 v7, v17

    goto/16 :goto_3

    :cond_12
    move-object/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual {v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    move/from16 v3, v17

    invoke-virtual {v0, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v4

    if-le v1, v4, :cond_16

    invoke-virtual {v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v3

    if-le v1, v3, :cond_14

    invoke-virtual {v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v3

    if-le v1, v3, :cond_13

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_13
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v0, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v2

    if-le v1, v2, :cond_15

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    invoke-virtual {v0, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v2

    if-le v1, v2, :cond_18

    invoke-virtual {v0, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v2

    if-le v1, v2, :cond_17

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    invoke-virtual {v0, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v1

    invoke-virtual {v0, v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(II)I

    move-result v2

    if-le v1, v2, :cond_19

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v2

    if-le v1, v2, :cond_1a

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_8
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1b

    goto/16 :goto_a

    :cond_1b
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->canDrawTextProperly(II)Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v1, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result v1

    if-ge v2, v1, :cond_1c

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, v16

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1c
    move-object/from16 v3, v16

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildRegionPath()Z

    move-result v1

    return v1

    :cond_1d
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    goto :goto_b

    :cond_1e
    :goto_a
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->triedToUse:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    return v1

    :cond_1f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->updateDrawRegionName()V

    const/4 v1, 0x1

    return v1
.end method

.method protected final buildScaleOfText()V
    .locals 12

    const/4 v0, 0x1

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    sub-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v4, 0x0

    :goto_0
    int-to-float v5, v3

    :try_start_1
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    sub-float/2addr v3, v1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_1

    :cond_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    sub-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v3, v1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto/16 :goto_0

    :catch_0
    :try_start_2
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_1

    :catch_1
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    :try_start_4
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    :catch_3
    :goto_1
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2

    :cond_3
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3e666666    # 0.225f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2

    :cond_4
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2

    :cond_5
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x401e000000000000L    # 7.5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_6

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3e99999a    # 0.3f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto/16 :goto_2

    :cond_6
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3ea66666    # 0.325f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_7
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_8

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3eb33333    # 0.35f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_8
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_9

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x3ec00000    # 0.375f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_9
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_a
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ffc000000000000L    # 1.75

    cmpl-double v7, v3, v5

    if-lez v7, :cond_b

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3ee66666    # 0.45f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_b
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_c

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const v4, 0x3ef33333    # 0.475f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    goto :goto_2

    :cond_c
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildAvaragePoint()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildDrawData()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    :try_start_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_d
    :goto_3
    return-void
.end method

.method protected final checkRegionBordersWithEnemy(I)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected final containsProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFFII)V
    .locals 6

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 p3, 0x0

    :goto_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p5

    invoke-virtual {p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p6, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p6

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p6

    invoke-virtual {p5, p6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p5

    invoke-virtual {p5, p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result p4

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result p5

    add-int v2, p4, p5

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result p4

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p5

    add-int/2addr p4, p5

    div-int/lit8 p5, p7, 0x2

    sub-int v3, p4, p5

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {v4, p5, p5, p5, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method protected final drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFFII)V
    .locals 6

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result p3

    if-lez p3, :cond_0

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 p3, 0x0

    :goto_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p5, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p5

    invoke-virtual {p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameLength()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p6, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p6

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p6

    invoke-virtual {p5, p6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p5

    invoke-virtual {p5, p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivNameCharacter(I)C

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getSecondSideOfMap_MoveX()I

    move-result p4

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result p5

    add-int v2, p4, p5

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result p4

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPoints:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p5

    add-int/2addr p4, p5

    div-int/lit8 p5, p7, 0x2

    sub-int v3, p4, p5

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {v4, p5, p5, p5, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lPointsAngle:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method protected final getAngle()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fAngle:F

    return v0
.end method

.method protected final getCharMaxHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxHeight:I

    return v0
.end method

.method protected final getCharMaxWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iCharMaxWidth:I

    return v0
.end method

.method protected final getFontScale()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->fontScale:F

    return v0
.end method

.method protected final getHaveNotOccupiedProvince()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    return v0
.end method

.method protected final getIsSupplied()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    return v0
.end method

.method protected getLineWidth(II)I
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result p1

    add-int/2addr v1, p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v2

    add-int/2addr p1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result p2

    add-int/2addr v2, p2

    invoke-virtual {p0, v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getLineWidth(IIII)I

    move-result p1

    return p1
.end method

.method protected getLineWidth(IIII)I
    .locals 4

    sub-int/2addr p1, p3

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p2, p4

    int-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method protected getLinesAngle(IIII)F
    .locals 2

    sub-int/2addr p2, p4

    int-to-double v0, p2

    neg-int p1, p1

    add-int/2addr p1, p3

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double p1, p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    double-to-float p1, p1

    return p1
.end method

.method protected final getProvince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    return v0
.end method

.method protected final getRegionID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    return v0
.end method

.method protected final getSeaAccess()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    return v0
.end method

.method protected final getSeaAccess_HavePort()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    return v0
.end method

.method protected final getSeaAccess_HavePort_Check()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getShortestPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->shortestLine:Ljava/util/List;

    return-object v0
.end method

.method protected final removeProvince(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    return-void
.end method

.method protected final removeProvinceID(I)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lCostalineProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    :cond_1
    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-eqz v3, :cond_7

    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v2, v3, :cond_6

    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess:Z

    if-nez v3, :cond_b

    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    :cond_7
    :goto_4
    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    if-eqz v3, :cond_a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v3

    if-gtz v3, :cond_8

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-nez v3, :cond_8

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v2, v3, :cond_a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->haveNotMoney:Z

    if-nez v4, :cond_d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v3

    if-gtz v3, :cond_9

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-nez v3, :cond_9

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_9
    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->haveNotOccupiedProvince:Z

    :cond_a
    return-void

    :cond_b
    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    if-eqz v3, :cond_7

    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v2, v3, :cond_7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v3

    if-lez v3, :cond_c

    iput-boolean v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method protected final setIsSupplied(Z)Z
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->isSupplied:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getIsSupplied()Z

    move-result p1

    return p1
.end method

.method protected final setRegionID(I)V
    .locals 2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iRegionID:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iProvincesSize:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final setSeaAccess_HavePort(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->seaAccess_HavePort:Z

    return-void
.end method

.method protected final updateDrawRegionName()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
