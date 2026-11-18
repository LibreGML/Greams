.class Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;
.super Ljava/lang/Object;
.source "PalletOfCivsColors_Data.java"


# instance fields
.field private UPDATE_KEY:Ljava/lang/String;

.field private iDataSize:I

.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getDataSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    return v0
.end method

.method protected final getUPDATE_KEY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected final readData(Z)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "/"

    const-string v3, "game/pallets_of_civs_colors/"

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v4

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    goto :goto_2

    :catch_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->loadCivilizationStandardColor(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected final saveData()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "game/civilizations/"

    const-string v2, "Age_of_Civilizations"

    const-string v3, "game/pallets_of_civs_colors/Age_of_Civilizations"

    const-string v4, "/"

    const-string v5, "game/pallets_of_civs_colors/"

    const/4 v7, 0x0

    :goto_0
    iget v8, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    const-string v9, ";"

    if-ge v7, v8, :cond_5

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/high16 v11, 0x437f0000    # 255.0f

    :try_start_0
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v13

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v14

    mul-float v14, v14, v11

    float-to-int v14, v14

    if-ne v13, v14, :cond_0

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v13

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v14

    mul-float v14, v14, v11

    float-to-int v14, v14

    if-ne v13, v14, :cond_0

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v13

    mul-float v13, v13, v11

    float-to-int v13, v13

    if-eq v12, v13, :cond_4

    :cond_0
    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v12

    mul-float v12, v12, v11

    float-to-int v12, v12

    if-nez v12, :cond_2

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v12

    mul-float v12, v12, v11

    float-to-int v12, v12

    if-ne v12, v10, :cond_2

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v10
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-float v10, v10, v11

    float-to-int v10, v10

    if-ne v10, v8, :cond_2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    :try_start_2
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v15, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v13

    mul-float v13, v13, v11

    float-to-int v13, v13

    if-ne v12, v13, :cond_1

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v13

    mul-float v13, v13, v11

    float-to-int v13, v13

    if-ne v12, v13, :cond_1

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v6

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v12

    mul-float v12, v12, v11

    float-to-int v12, v12

    if-eq v6, v12, :cond_4

    :cond_1
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    if-nez v6, :cond_2

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    if-ne v6, v10, :cond_2

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-float v6, v6, v11

    float-to-int v6, v6

    if-ne v6, v8, :cond_2

    goto/16 :goto_3

    :catch_1
    :cond_2
    :try_start_4
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    :goto_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    :try_start_6
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :catch_3
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    :try_start_7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    :cond_7
    :goto_5
    return-void
.end method

.method protected final setCivColor(Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;->setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;

    invoke-direct {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Civ_GameData;-><init>(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lCivsTags:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->iDataSize:I

    return-void
.end method

.method protected final setUPDATE_KEY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/PalletOfCivsColors_Data;->UPDATE_KEY:Ljava/lang/String;

    return-void
.end method
