.class Lage/of/civilizations2/jakowski/lukasz/ReligionManager;
.super Ljava/lang/Object;
.source "ReligionManager.java"


# instance fields
.field private iReligionsSize:I

.field private lReligionsColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lReligionsIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lReligionsNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lReligionsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->iReligionsSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->loadReligions()V

    return-void
.end method


# virtual methods
.method protected final getReligionColor(I)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method protected final getReligionIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object p1
.end method

.method protected final getReligionName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getReligionTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getReligionsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->iReligionsSize:I

    return v0
.end method

.method protected final loadReligions()V
    .locals 11

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsColors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    const-string v0, "game/religions/"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->iReligionsSize:I

    :goto_1
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->iReligionsSize:I

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsNames:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v6

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v7

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/icons/religions/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->getIconName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v3, v8, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ReligionManager;->lReligionsIcons:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "UI/icons/religions/notfound.png"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method protected final saveReligionData()V
    .locals 0

    return-void
.end method
