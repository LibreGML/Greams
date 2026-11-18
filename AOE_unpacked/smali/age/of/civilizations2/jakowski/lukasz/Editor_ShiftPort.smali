.class public Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;
.super Lage/of/civilizations2/jakowski/lukasz/Editor;
.source "Editor_ShiftPort.java"


# instance fields
.field private iDiff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    return-void
.end method

.method protected static final savePortPosition(II)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvincePort(II)V

    return-void
.end method


# virtual methods
.method protected keyDown(I)V
    .locals 8

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    if-ltz p1, :cond_7

    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "provinces/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x33

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    add-int/2addr v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    :cond_0
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v7, 0x2d

    invoke-interface {v5, v7}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v5, v6

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    if-ge v5, v6, :cond_1

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    :cond_1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x15

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v0, v5

    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x16

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    add-int/2addr v0, v5

    :cond_3
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x13

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v4, v5

    :cond_4
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x14

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    add-int/2addr v4, v5

    :cond_5
    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    iput v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_0
    :try_start_3
    invoke-static {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->savePortPosition(II)V

    goto :goto_2

    :goto_1
    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHIFT PORT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSHIFT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;->iDiff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Q--, W++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
