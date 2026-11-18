.class Lage/of/civilizations2/jakowski/lukasz/Editor_Wasteland;
.super Lage/of/civilizations2/jakowski/lukasz/Editor;
.source "Editor_Wasteland.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor;-><init>()V

    return-void
.end method

.method protected static final actionSave()V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wasteland_maps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    const/16 v5, 0x31

    const/16 v6, 0x30

    if-ltz v3, :cond_0

    const/16 v3, 0x31

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_1
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v7

    if-ge v4, v7, :cond_3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v8

    if-ltz v8, :cond_1

    const/16 v8, 0x31

    goto :goto_2

    :cond_1
    const/16 v8, 0x30

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected keyDown(I)V
    .locals 3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x16

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    xor-int/2addr p1, v0

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3e

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    if-ltz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    invoke-virtual {p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setWasteland(IZ)V

    :cond_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x43

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result p1

    if-ge v0, p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x42

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Editor_Wasteland;->actionSave()V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WASTELAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->bSetWasteland_AvailableProvinces:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
