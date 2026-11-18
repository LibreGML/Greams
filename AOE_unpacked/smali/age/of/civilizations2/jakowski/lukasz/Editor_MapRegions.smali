.class public Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;
.super Lage/of/civilizations2/jakowski/lukasz/Editor;
.source "Editor_MapRegions.java"


# static fields
.field protected static iActiveRegionID:I = 0x1

.field protected static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/UndoContinent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    return-void
.end method

.method protected static final actionSave(Z)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->addUndo(I)V

    :cond_0
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRegion(I)V

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->saveProvince_Info_GameData(I)V

    :cond_1
    return-void
.end method

.method private static final addUndo(I)V
    .locals 3

    if-gez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;->iProvinceID:I

    if-eq v0, p0, :cond_3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected static popUndo()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/UndoContinent;->iContinentID:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    const/4 v0, 0x0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->actionSave(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method protected keyDown(I)V
    .locals 2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sub-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    if-gez p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->getRegionsSize()I

    move-result p1

    sub-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x16

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    add-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->getRegionsSize()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    const/4 p1, 0x0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    :cond_1
    :goto_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3e

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    if-ltz p1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->actionSave(Z)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REGION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;->iActiveRegionID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
