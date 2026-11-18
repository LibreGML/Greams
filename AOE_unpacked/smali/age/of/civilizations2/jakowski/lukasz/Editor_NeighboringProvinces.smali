.class Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;
.super Lage/of/civilizations2/jakowski/lukasz/Editor;
.source "Editor_NeighboringProvinces.java"


# instance fields
.field protected activeProvinceID:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    return-void
.end method

.method protected static final updateProvince(I)V
    .locals 8

    const-string v0, ","

    const-string v1, "update/"

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_0

    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->setPoints(Ljava/util/List;Ljava/util/List;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceBG(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceBG()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE NOT FOUND: [map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected keyDown(I)V
    .locals 14

    const-string p1, "updatePB/"

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMapEditor_Connections_IDs(I)V

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    const-string v1, "map/"

    const-string v2, "]"

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x13

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v4

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v0, v0, v8

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_0
    array-length v11, v7

    if-ge v10, v11, :cond_1

    aget-object v11, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-short v11, v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v0, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-short v11, v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeProvinceBorder(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILE NOT FOUND: [map/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->updateProvince(I)V

    :cond_3
    :goto_1
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x2d

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    if-gez p1, :cond_4

    return-void

    :cond_4
    const-string p1, ""

    move-object v6, p1

    move-object v7, v6

    const/4 v0, 0x0

    :goto_2
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v8

    if-ge v0, v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v6

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v9

    div-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v9

    div-int/2addr v7, v9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MAP_POINTS"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_3
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v6

    if-ge v1, v6, :cond_9

    move-object v7, p1

    move-object v8, v7

    const/4 v6, 0x0

    :goto_4
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    if-ge v6, v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v10

    div-int/2addr v7, v10

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v7, v6, :cond_6

    move-object v7, p1

    goto :goto_5

    :cond_6
    move-object v7, v3

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v10

    div-int/2addr v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v8, v6, :cond_7

    move-object v8, p1

    goto :goto_6

    :cond_7
    move-object v8, v3

    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_9
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    if-gez p1, :cond_a

    return-void

    :cond_a
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x42

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    const-string v0, " - "

    const-string v1, " ["

    if-eqz p1, :cond_31

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    if-eq p1, v3, :cond_31

    const/4 p1, 0x0

    :goto_7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge p1, v3, :cond_c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    if-ne v3, v6, :cond_b

    return-void

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_c
    const/4 p1, 0x0

    :goto_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge p1, v3, :cond_e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    if-ne v3, v6, :cond_d

    return-void

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_e
    const/4 p1, 0x0

    :goto_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge p1, v3, :cond_10

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    if-ne v3, v6, :cond_f

    return-void

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_10
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringProvince(I)V

    goto :goto_a

    :cond_11
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringSeaProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    goto :goto_a

    :cond_12
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringProvince(I)V

    :goto_a
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringProvince(I)V

    goto :goto_b

    :cond_13
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringSeaProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    goto :goto_b

    :cond_14
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addNeighboringProvince(I)V

    :goto_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_c
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_2e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    if-lez v7, :cond_2c

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v8, v7, :cond_16

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_15

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    if-ne v10, v11, :cond_15

    const/4 v9, 0x1

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_16
    if-eqz v9, :cond_25

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_e
    if-ge v8, v7, :cond_18

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_17

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    if-ne v10, v11, :cond_17

    const/4 v9, 0x1

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_18
    if-nez v9, :cond_1e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    sub-int/2addr v7, v5

    const/4 v8, 0x0

    :goto_f
    if-ltz v7, :cond_2b

    if-nez v8, :cond_1a

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v9, :cond_1d

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_19

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_19

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto/16 :goto_13

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1a
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v9, :cond_1c

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_1b

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_1b

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    goto :goto_12

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1c
    const/4 v9, 0x1

    :goto_12
    if-eqz v9, :cond_1d

    goto/16 :goto_20

    :cond_1d
    :goto_13
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_f

    :cond_1e
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_14
    if-ltz v7, :cond_22

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v8

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v8, :cond_20

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_1f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    if-ne v10, v11, :cond_1f

    const/4 v8, 0x1

    goto :goto_16

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_20
    const/4 v8, 0x0

    :goto_16
    if-nez v8, :cond_21

    :goto_17
    add-int/lit8 v7, v7, 0x1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_22

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_21
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_14

    :cond_22
    const/4 v7, 0x0

    :goto_18
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v8

    if-ge v7, v8, :cond_2b

    const/4 v8, 0x0

    :goto_19
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    if-ge v8, v9, :cond_24

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_23

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_23

    const/4 v8, 0x1

    goto :goto_1a

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_24
    const/4 v8, 0x0

    :goto_1a
    if-eqz v8, :cond_2b

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18

    :cond_25
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v7

    sub-int/2addr v7, v5

    const/4 v8, 0x0

    :goto_1b
    if-ltz v7, :cond_2b

    if-nez v8, :cond_27

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v9, :cond_2a

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v13, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_26

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v13, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_26

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto/16 :goto_1f

    :cond_26
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_27
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsSize()I

    move-result v9

    const/4 v10, 0x0

    :goto_1d
    if-ge v10, v9, :cond_29

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v13, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v12

    if-ne v11, v12, :cond_28

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v13, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v12

    if-ne v11, v12, :cond_28

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsX(I)I

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPointsY(I)I

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    goto :goto_1e

    :cond_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_29
    const/4 v9, 0x1

    :goto_1e
    if-eqz v9, :cond_2a

    goto :goto_20

    :cond_2a
    :goto_1f
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1b

    :cond_2b
    :goto_20
    const/4 v7, 0x1

    goto :goto_21

    :cond_2c
    const/4 v7, 0x0

    :goto_21
    if-eqz v7, :cond_2d

    goto :goto_22

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_2e
    :goto_22
    const/4 v6, 0x0

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2f

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v8

    div-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v8

    div-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_2f
    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    if-le v6, v7, :cond_30

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_24

    :cond_30
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    :goto_24
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Added"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMapEditor_Connections_IDs(I)V

    :cond_31
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x29

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    if-eq p1, v3, :cond_3a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    if-le v6, v7, :cond_34

    const/4 v6, 0x0

    :goto_25
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_32

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_25

    :cond_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_33

    const/4 v6, 0x0

    :goto_26
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_33

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_26

    :cond_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_37

    :goto_27
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_37

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_27

    :cond_34
    const/4 v6, 0x0

    :goto_28
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_35

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_28

    :cond_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_36

    const/4 v6, 0x0

    :goto_29
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_36

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_29

    :cond_36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_37

    :goto_2a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_37

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsX:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->lPointsY:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a

    :cond_37
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    if-le v4, v5, :cond_38

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeProvinceBorder(I)V

    goto :goto_2b

    :cond_38
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeProvinceBorder(I)V

    :goto_2b
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    if-le v4, v5, :cond_39

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v4, v5, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_2c

    :cond_39
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    :goto_2c
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    :cond_3a
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x43

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    if-eq p1, v3, :cond_3e

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeNeighboringProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeNeighboringSeaProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeNeighboringProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeNeighboringSeaProvince(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    const/4 v3, -0x1

    if-nez p1, :cond_3b

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result p1

    if-nez p1, :cond_3b

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    :cond_3b
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-nez p1, :cond_3c

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result p1

    if-nez p1, :cond_3c

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    :cond_3c
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    if-le p1, v3, :cond_3d

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeProvinceBorder(I)V

    goto :goto_2d

    :cond_3d
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeProvinceBorder(I)V

    :goto_2d
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildGameProvinceData(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Removed"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMapEditor_Connections_IDs(I)V

    :cond_3e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVE PROVINCE ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->activeProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\nSPACE -> SET ACTIVE PROVINCE\nENTER -> ADD CONNECTION\nBACKSPACE -> REMOVE CONNECTION\nM -> REFLECT PROVINCE BORDER\n\nUP -> UPDATE PB VIA FILE\nDOWN -> UPDATE PROVINCE VIA FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
