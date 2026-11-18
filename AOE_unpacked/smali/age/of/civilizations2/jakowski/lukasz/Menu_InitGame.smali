.class Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InitGame.java"


# instance fields
.field private iNumOfSteps:I

.field private iStepID:I

.field protected numToLoad:I

.field protected numToLoad2:I


# direct methods
.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/16 v0, 0x21

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iNumOfSteps:I

    # Desktop defaults: textures / province-data per loadAssets tick
    const/16 v0, 0xfa

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad:I

    const/16 v0, 0x1f4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad2:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_0

    # Android: still aggressive — modern devices handle large batches
    const/16 v0, 0xc8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad:I

    const/16 v0, 0x190

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad2:I

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;)V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->loadAssets()V

    return-void
.end method

.method protected static final loadArmyBGImages()V
    .locals 15

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    const-string v1, "/army_seabg.png"

    const-string v2, "/army_sea.png"

    const-string v3, "UI/icons/army/16/army_seabg.png"

    const-string v4, "/army.png"

    const-string v5, "UI/icons/army/16/army_sea.png"

    const-string v6, "UI/icons/army/16/army.png"

    const-string v7, "UI/icons/army/"

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v10, v4, v8, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v14, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v4, v6, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    :goto_0
    :try_start_1
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v2, v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v2, v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    :goto_1
    :try_start_2
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v1, v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v13, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    goto/16 :goto_4

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v4, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v6, v0, v4, v8}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_bg:I

    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v2, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v5, v0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_sea:I

    :goto_3
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v3, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_16_seabg:I

    :goto_4
    return-void
.end method

.method private final loadAssets()V
    .locals 14

    const-string v0, "dialog/"

    const-string v1, "bottom/"

    const-string v2, "main_menu/"

    const-string v3, "new_game/"

    const-string v4, "top/"

    :try_start_0
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "LoadingMap"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v5, :cond_0

    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->loadGameMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    div-int/2addr v1, v7

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    div-int/2addr v1, v7

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateMapPos()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iLoadingWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_0
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    if-ne v5, v8, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "LoadingGraphics"

    if-ne v5, v7, :cond_2

    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->initMapContinents()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->initMapRegions()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontArmy()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/AI;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "RandomCivilization"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->RANDOM_CIVILIZATION:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sVERSION:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Author"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sAUTHOR:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iLoadingWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_2
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x3

    const-string v11, "buttons/"

    const-string v12, "UI/"

    if-ne v5, v10, :cond_3

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "close_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_close:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "icons/bBunker.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bBunker:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "menu_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clear_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_clear:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->loadArmyBGImages()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/PlagueManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/PlagueManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->plagueManager:Lage/of/civilizations2/jakowski/lukasz/PlagueManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_3
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/4 v10, 0x4

    if-ne v5, v10, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_4
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/4 v10, 0x5

    if-ne v5, v10, :cond_5

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->loadIdeologies()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionsManager:Lage/of/civilizations2/jakowski/lukasz/UnionsManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "LoadingGameData"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_5
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/4 v10, 0x6

    if-ne v5, v10, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title_edge.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "desc.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_desc:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "line_2xdesc.png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_line:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "main_menu_edge.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "main_menu_edge2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->main_menu_edge2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pc.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_steam:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_android:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_app:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fb.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_fb:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "twit.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_twit:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "yt.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->logo_yt:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loading/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slider_edge.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_rect_edge:I

    const-string v0, "game/flags/ran.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/16 v2, 0x8

    const/4 v5, 0x0

    if-lt v0, v2, :cond_8

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v13

    invoke-virtual {v10, v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v10

    add-int/2addr v10, v2

    if-ge v0, v10, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad2:I

    if-ge v5, v0, :cond_25

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_25

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvince(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v13

    invoke-virtual {v10, v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v10

    add-int/2addr v10, v2

    if-ne v0, v10, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "LoadingProvinces"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->saveSettings_LoadingStatus()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    if-lt v0, v2, :cond_a

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x9

    if-ge v0, v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "LoadingProvinces"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->numToLoad:I

    if-ge v5, v0, :cond_25

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x9

    if-ge v0, v1, :cond_25

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/lit8 v1, v1, -0x9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvinceTexture(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x9

    if-ne v0, v2, :cond_b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->initGameScenarios()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clear_checkbox_true.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_clear_checkbox_true:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clear_checkbox_false.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_clear_checkbox_false:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_v:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_v_active:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_x:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_x_active:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "menu_1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "menu_1_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_1_h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arrow.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arrow_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow_active:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "remove.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_remove:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_up:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "localization.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_localization:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "show.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_show:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "add.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_add:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg_game_menu.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_menu:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg_game_menu_r.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_menu_r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg_game_action.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_game_action:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg_stats.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bg_stats:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v10

    invoke-virtual {v2, v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    if-ne v0, v2, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top_edge.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top_edge_title.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_title:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top_edge_line.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "top_edge_line_horizontal.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box_hover.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_hover:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box_line_end.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_line:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box_line_end_hover.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_box_line_hover:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor_top.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_top:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor_top_line.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_top_line:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor_line.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_line:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "end_left.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_end_left:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "prov_name.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_prov_name:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "prov_name_left.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_prov_name_left:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "icons_bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_icons_bg:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xb

    if-ne v0, v1, :cond_d

    const-string v0, "UI/icons/city.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->city:I

    const-string v0, "UI/icons/city2.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->city2:I

    const-string v0, "UI/icons/city3.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->city3:I

    const-string v0, "UI/icons/city4.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->city4:I

    const-string v0, "UI/icons/city5.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->city5:I

    const-string v0, "UI/icons/mount.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->mount:I

    const-string v0, "UI/patt.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    const-string v0, "UI/patt2.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    const-string v0, "UI/patt3.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt3:I

    const-string v0, "UI/patt4.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt4:I

    const-string v0, "UI/loadpix.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->loadpix:I

    const-string v0, "UI/pattsquare.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt_square:I

    const-string v0, "UI/icons/port.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->port_ico:I

    const-string v0, "UI/icons/tower.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->tower_ico:I

    const-string v0, "UI/icons/fort.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->fort_ico:I

    const-string v0, "UI/icons/towerfort.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->towerfort_ico:I

    const-string v0, "UI/icons/armoury.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->armoury_ico:I

    const-string v0, "UI/lines/line_11.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_11:I

    const-string v0, "UI/lines/line_top.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_top:I

    const-string v0, "UI/lines/line_22.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_22:I

    const-string v0, "UI/lines/line_32.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const-string v0, "UI/lines/line_33.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    const-string v0, "UI/lines/line_44.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    const-string v0, "UI/lines/line_26.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_26:I

    const-string v0, "UI/lines/line_62.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_62:I

    const-string v0, "UI/lines/line_32_vertical.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xc

    const-string v2, "icons/"

    if-ne v0, v1, :cond_e

    :try_start_4
    const-string v0, "UI/icons/army/army_capital.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_capital:I

    const-string v0, "UI/icons/army/army_capital_frame.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->army_capital_frame:I

    const-string v0, "UI/icons/army/civ_name_bg.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_name_bg:I

    const-string v0, "UI/icons/army/civ_flag_bg.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->civ_flag_bg:I

    const-string v0, "UI/icons/circle_55.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->circle_55:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "population.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "population_growth.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->population_growth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "economy.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disease.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->disease:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "victory_points.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->victoryPoints:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rank.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    const-string v0, "UI/icons/move_0.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_move_attack:I

    const-string v0, "UI/icons/move_1.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_move_ally:I

    const-string v0, "UI/icons/move_2.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_move_sea:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "skull.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->skull:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rect.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "circle.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_circle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "circle_sh.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_circle_shader:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_e
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xd

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scroll_posiotion.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scroll_posiotion_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->scroll_posiotion_active:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slide/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slide_bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slider_gradient.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    const-string v0, "UI/picker/sv.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    const-string v0, "UI/picker/hue.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerHUE:I

    const-string v0, "UI/picker/pos.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSVPos:I

    const-string v0, "UI/picker/edge.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_f
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xe

    if-ne v0, v1, :cond_10

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateProvincesSize()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkLandBySeaProvincesBorders()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_10
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xf

    if-ne v0, v1, :cond_11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkSeaBySeaProvincesBorders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildProvinceBorder()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "LoadingGameData"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_11
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    if-ne v0, v1, :cond_12

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontBorder()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_12
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x11

    if-ne v0, v1, :cond_13

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->initGameCities()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadCities()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_13
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x12

    if-ne v0, v1, :cond_14

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadScenario(Z)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_14
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x13

    if-ne v0, v1, :cond_15

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->initPlayers()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_15
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x14

    if-ne v0, v1, :cond_16

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildDrawArmy()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildBasinsOfSeaProvinces()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_16
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x15

    if-ne v0, v1, :cond_17

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadProvinceNames_ALL()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadRegions()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_17
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x16

    if-ne v0, v1, :cond_18

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->initGameMountains()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->loadMountains()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_left:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left_red.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->bot_left_red:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left3.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left3:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left2_sha.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2_sha:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left_extra.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left_extra:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->messages:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message_g.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->messages_g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message_r.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->messages_r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "circle.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_circle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flag_frame.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flag_frame_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame_h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "civ_color.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_civ_color:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "civ_color_sh.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_civ_color_shader:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "view_right.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "view_right_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right_h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "view_right_last.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_view_right_last:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_18
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x17

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty_box.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_box:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty_heaven.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_heaven:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "difficulty_hell.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gold.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gold_medium.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "movement_points.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diplomacy_points.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ar_up.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->ar_up:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ar_down.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->ar_down:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hre_icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_icon:I

    const-string v0, "UI/icons/hre_flag.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_flag:I

    const-string v0, "UI/icons/crowns/hre.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown:I

    const-string v0, "UI/icons/crowns/hre_x.png"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_x:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crowns/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hre.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->hre_crown_scaled:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stats.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->stats:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dice.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->dice:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_19
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x18

    if-ne v0, v1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "technology.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tech_med.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->tech_med:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Resource.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->Resource:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nuclearBoom.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->nuclear_boom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_shaft.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_shaft:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "provinces.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "research.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "development.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "development_down.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->development_down:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "happiness.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "happiness1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "happiness2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_fort.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_fort:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_tower.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_tower:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_port.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_port:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_farm.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_farm:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_library.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_library:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_armoury.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_armoury:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_workshop.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_workshop:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b_supply.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->b_supply:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1a
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x19

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "war.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "weariness.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_weariness:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "war_preparations.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war_preparations:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "truce.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_truce:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alliance.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_alliance:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "relations.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "relations_inc.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations_inc:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "relations_dec.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations_dec:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trade.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_trade:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "defensive.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_defensive_pact:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nonagg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_non_aggression:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "indepe.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_guarantee_has:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "indepe2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_guarantee_gives:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "military.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_access_has:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "military2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_access_gives:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gift.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_gift:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "revolution.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_revolution:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "popstability.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "union.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_union:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vassal.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_vassal:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lord.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_lord:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loan.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_loan:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loan2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_loan2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "plunder.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_plunder:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "army.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "goldenage.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_goldenage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "goldenage_m.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_goldenage_m:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "goldenage_s.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_goldenage_s:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "defensive_position.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->defensive_position:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "festival.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_festival:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "transfer_control.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->transfer_control:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "heart.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_heart:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rivals.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "az.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_AZ:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_truce:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_alliance:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations_inc:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_relations_dec:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_trade:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_defensive_pact:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_non_aggression:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_access_has:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_guarantee_gives:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_access_has:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_access_gives:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_gift:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_revolution:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_union:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_vassal:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_lord:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_loan:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_loan2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_plunder:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->setMaxDiploWidth(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1a

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_plunder.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_plunder:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_recruit.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_recruit:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_move.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_move:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_moveto.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_moveto:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_more.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_more:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act_migrate.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->act_migrate:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1b

    if-ne v0, v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "editor_game.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_game:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "editor_map.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_map:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "editor_city.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_city:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "editor_civ.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_civ:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "save.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_save:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "editor_leaders.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->editor_leaders:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check_true.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check_false.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_false:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    const-string v1, "bg.png"

    const-string v3, "over.png"

    const-string v4, "frame.png"

    invoke-direct {v0, v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wiki.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->wikipedia:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "picker_icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickeIcon:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_message:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1c

    if-ne v0, v1, :cond_1e

    const-string v0, "UI/lines/map_border.png"

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Images;->map_border:I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/diplomacy_colors/Age_of_Civilizations_Active"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sACTIVE_DIPLOMACY_COLORS_TAG:Ljava/lang/String;
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_0
    :try_start_6
    const-string v0, "DEFAULT"

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sACTIVE_DIPLOMACY_COLORS_TAG:Ljava/lang/String;

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sACTIVE_DIPLOMACY_COLORS_TAG:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadDiplomacyColors_GameData(Ljava/lang/String;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadRandomAlliancesNames()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->buildColors()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setHueWidth(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setSVHeight(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setResizeHeight(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sLoading:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1e
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1d

    if-ne v0, v1, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateDrawMoveUnitsArmy()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_1f
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1e

    if-ne v0, v1, :cond_20

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->loadMinimap()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_20
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1f

    if-ne v0, v1, :cond_21

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/LinesManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto/16 :goto_4

    :cond_21
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x20

    if-ne v0, v1, :cond_23

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Report_Data;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_IDs:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_Armies:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_Armies_Lost:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_IDs:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_Armies:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_ArmiesLost:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->load_DeleteStatusFile()V

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    if-nez v0, :cond_22

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSELECT_LANGUAGE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sput-boolean v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    goto :goto_3

    :cond_22
    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :goto_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    goto :goto_4

    :cond_23
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    add-int/2addr v0, v8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_25

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    if-nez v0, :cond_24

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSELECT_LANGUAGE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sput-boolean v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    goto :goto_4

    :cond_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "Out of RAM"

    invoke-virtual {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    :cond_25
    :goto_4
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int v5, v0, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p4, p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLoadingPadding()F

    move-result v0

    mul-float p4, p4, v0

    float-to-int p4, p4

    add-int v3, p4, p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p4, v0

    add-int v4, p4, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLoadingPadding()F

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p4, p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float p3, p3, v0

    float-to-int v5, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float p3, p3

    mul-float p3, p3, v1

    float-to-int v6, p3

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    int-to-float p3, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iNumOfSteps:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    div-float v7, p3, p4

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iStepID:I

    int-to-float p3, p3

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->iNumOfSteps:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-static {p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawJakowskiGames_RIGHT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    # Load several ticks per frame on the GL thread (no per-frame Thread).
    const/4 p3, 0x0

    :goto_fast_load
    const/16 p4, 0xa

    if-ge p3, p4, :cond_fast_load_done

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InitGame;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_fast_load

    :cond_fast_load_done
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawVersion_LEFT_BOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method
