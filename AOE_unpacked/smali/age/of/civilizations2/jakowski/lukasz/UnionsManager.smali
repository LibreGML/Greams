.class Lage/of/civilizations2/jakowski/lukasz/UnionsManager;
.super Ljava/lang/Object;
.source "UnionsManager.java"


# instance fields
.field protected createUnion_Data:Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

.field protected unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "game/unions/data"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    :catch_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected final getUnionTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, ""

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p1, v4

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_5

    array-length v4, p1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    :goto_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCreateCivTag:Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCreateCivTag:Ljava/lang/String;

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v3
.end method

.method protected final saveUnions()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/unions/data"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
