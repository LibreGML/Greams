.class Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;
.super Ljava/lang/Object;
.source "TradeZones_Manager.java"


# instance fields
.field private iTradeZonesSize:I

.field private lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lTradeZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/TradeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addTradeZone(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->iTradeZonesSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTags:Ljava/util/List;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final clearData()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->iTradeZonesSize:I

    return-void
.end method

.method protected final getTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    return-object p1
.end method

.method protected final getTradeZonesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->iTradeZonesSize:I

    return v0
.end method

.method protected final isInAnotherTradeZone(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZonesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvince(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected final loadTradeZones_Age()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->clearData()V

    return-void
.end method

.method protected final loadTradeZones_All()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->clearData()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "trade_zones/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "zones/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;

    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getProvinces()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getCenterOfTradeProvinceID()I

    move-result v16

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getAge()I

    move-result v17

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v4

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v10
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v5

    const v5, 0x3f266666    # 0.65f

    :try_start_2
    invoke-direct {v12, v1, v4, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, v12

    move-object v12, v15

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;-><init>(Ljava/lang/String;Ljava/util/List;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTags:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->iTradeZonesSize:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-object/from16 v19, v4

    :catch_1
    move-object/from16 v18, v5

    :catch_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected final removeTradeZone(I)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "trade_zones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "zones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getAge()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->lTradeZones:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->iTradeZonesSize:I

    return-void
.end method

.method protected final saveTradeZone_GameData(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getAge()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID2:I

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getProvinces()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getCenterOfTradeProvinceID_Real()I

    move-result v5

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getAge()I

    move-result v6

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v7, v1, v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/TradeZone_GameData;-><init>(Ljava/lang/String;Ljava/util/List;IILage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "trade_zones/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "zones/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getAge()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID2:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZones_Manager;->getTradeZone(I)Lage/of/civilizations2/jakowski/lukasz/TradeZone;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/TradeZone;->getAge()I

    :catch_0
    :goto_0
    return-void
.end method
