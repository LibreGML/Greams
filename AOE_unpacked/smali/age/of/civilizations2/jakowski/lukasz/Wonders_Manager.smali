.class Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;
.super Ljava/lang/Object;
.source "Wonders_Manager.java"


# instance fields
.field protected lWonders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Wonder;",
            ">;"
        }
    .end annotation
.end field

.field protected wonders_Provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->wonders_Provinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final buildWondersProvinceID()V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->wonders_Provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    if-gt v4, v5, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    if-lt v4, v5, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosY:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    if-gt v4, v5, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosY:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    if-lt v4, v5, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosX:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosY:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v7

    mul-int v6, v6, v7

    invoke-virtual {v4, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->addWonder(Lage/of/civilizations2/jakowski/lukasz/Wonder;)V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->wonders_Provinces:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonders_Manager;->lWonders:Ljava/util/List;

    return-void
.end method
