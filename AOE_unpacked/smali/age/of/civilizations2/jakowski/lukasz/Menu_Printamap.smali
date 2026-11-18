.class Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Printamap.java"


# instance fields
.field private iMapPosX:I

.field private iMapPosY:I

.field private id:I


# direct methods
.method protected constructor <init>()V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosY:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->id:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosY:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    neg-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosX:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosY:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->iMapPosY:I

    neg-int v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->onBackPressed()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Saved"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method protected final onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewIDWithoutAnimation(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected final saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-static {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    :try_start_1
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PRINT/map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->id:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Printamap;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
