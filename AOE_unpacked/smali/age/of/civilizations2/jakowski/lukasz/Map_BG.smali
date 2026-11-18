.class Lage/of/civilizations2/jakowski/lukasz/Map_BG;
.super Ljava/lang/Object;
.source "Map_BG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;,
        Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;
    }
.end annotation


# instance fields
.field protected final ALPHA_MINIMAPS:I

.field protected final EXTRA_XY:F

.field protected fMinimapScaled_Scale:F

.field private gameMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private iHeight:I

.field private iMaxDistance:I

.field private iMinimapHeight:I

.field protected iMinimapScaled_Height:I

.field protected iMinimapScaled_PosX:I

.field protected iMinimapScaled_PosY:I

.field protected iMinimapScaled_Width:I

.field private iMinimapWidth:I

.field private iWidth:I

.field private minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

.field protected minimapBelowZero:Z

.field private minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

.field protected requestToDisposeMinimap:Z

.field private worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

.field private worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMaxDistance:I

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->requestToDisposeMinimap:Z

    const/16 v0, 0xdc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->ALPHA_MINIMAPS:I

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->EXTRA_XY:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosX:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Width:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Height:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->fMinimapScaled_Scale:F

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapBelowZero:Z

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    return-object v0
.end method


# virtual methods
.method protected final addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final disposeGameMap()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    return-void
.end method

.method protected final disposeMinimapOfCivilizations()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->requestToDisposeMinimap:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final disposeMinimapOfCivilizations_Real()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->requestToDisposeMinimap:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateColorDashed()V

    return-void
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    add-int/lit8 v2, p2, -0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    add-int v3, p3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v0, p1, v2, v1, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    add-int v2, p3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method protected final drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawMap_LogoSquare(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    new-instance v6, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    int-to-float v2, p4

    neg-int v3, p5

    int-to-float v3, v3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    int-to-float v0, p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    float-to-int v4, v1

    move-object v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    float-to-int v4, v1

    move-object v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final drawMinimapTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_0
.end method

.method protected final drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInInitMenu()Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v2

    if-nez v2, :cond_13

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapBelowZero:Z

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v0, v2

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v21

    const/16 v19, 0x0

    const/16 v16, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v15, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v15, v2, :cond_c

    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_3

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v16, v16, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v20

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v18

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v21

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v14

    :try_start_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v20

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v18

    :cond_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v21

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v19

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    :goto_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v15, v2, :cond_c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_b

    add-int/lit8 v16, v16, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_8

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v20

    :cond_8
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v18

    :cond_9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_a

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v21

    :cond_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_b

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v19

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_c
    if-nez v16, :cond_d

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v19

    :cond_d
    sub-int v2, v18, v20

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v25, v0

    sub-int v20, v20, v25

    add-int v18, v18, v25

    sub-int v2, v19, v21

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v25, v0

    sub-int v21, v21, v25

    add-int v19, v19, v25

    if-gez v21, :cond_e

    const/16 v21, 0x0

    :cond_e
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v22, v20

    move/from16 v23, v21

    sub-int v2, v18, v20

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v19, v21

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-int v24, v18, v20

    sub-int v17, v19, v21

    sub-int v2, v18, v20

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v19, v21

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14

    sub-int v2, v18, v20

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    sub-int v2, v19, v21

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v21

    div-int/lit8 v3, v17, 0x2

    sub-int v23, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v18, v20

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    :goto_4
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v24

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_f

    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_f

    if-ltz v21, :cond_f

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_10

    :cond_f
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v17

    :cond_10
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosX:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosY:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Width:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Height:I

    move-object/from16 v0, p0

    iput v6, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->fMinimapScaled_Scale:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v5, v7

    neg-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v13, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v13, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    move/from16 v0, v23

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v4, v3

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :goto_5
    move/from16 v0, v22

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    move/from16 v0, v23

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v3

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_11
    :goto_6
    if-gez v22, :cond_12

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    move/from16 v0, v23

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v3, v4

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapBelowZero:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_12
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v8

    invoke-static {v4, v5, v7, v8}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v12

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_13
    return-void

    :cond_14
    sub-int v2, v19, v21

    int-to-float v2, v2

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v24, v0

    sub-int v2, v18, v20

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v20

    div-int/lit8 v3, v24, 0x2

    sub-int v22, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v19, v21

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    goto/16 :goto_4

    :cond_15
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v4, v3

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v4, 0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v7, v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v9

    invoke-static {v5, v7, v8, v9}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v12

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v4, 0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v7

    div-float/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v7, v7

    int-to-float v7, v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    throw v2

    :cond_16
    :try_start_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v3

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto/16 :goto_6

    :cond_17
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v3, v4

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    :catch_1
    move-exception v2

    goto/16 :goto_8

    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method protected final getHeight()I
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected final getHeight_Real()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    return v0
.end method

.method protected final getMapScale()I
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v0

    return v0
.end method

.method protected final getMaxDistance()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMaxDistance:I

    return v0
.end method

.method protected final getMinimap()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected final getMinimapHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapHeight:I

    return v0
.end method

.method protected final getMinimapOfCivilizationsHeight()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final getMinimapOfCivilizationsWidth()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimapOfCivilizations:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final getMinimapWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapWidth:I

    return v0
.end method

.method protected final getScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 22

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PREVIEW_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    div-float v20, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v20

    float-to-int v0, v2

    move/from16 v19, v0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v10, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v13

    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v8, v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v2

    if-ge v2, v12, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v12

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v2

    if-le v2, v10, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v10

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    if-ge v2, v13, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v13

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v2

    if-le v2, v11, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    sub-int v2, v10, v12

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    sub-int v12, v12, v17

    add-int v10, v10, v17

    sub-int v2, v11, v13

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    sub-int v13, v13, v17

    add-int v11, v11, v17

    if-gez v13, :cond_5

    const/4 v13, 0x0

    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v14, v12

    move v15, v13

    sub-int v2, v10, v12

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v11, v13

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-int v16, v10, v12

    sub-int v9, v11, v13

    sub-int v2, v10, v12

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v11, v13

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    sub-int v2, v10, v12

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v9, v2

    sub-int v2, v11, v13

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v13

    div-int/lit8 v3, v9, 0x2

    sub-int v15, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v10, v12

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    :goto_2
    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    int-to-float v2, v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    if-ltz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    if-lt v11, v2, :cond_7

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v0, v18

    int-to-float v7, v0

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v0, v19

    int-to-float v7, v0

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v7, v7, v21

    mul-float/2addr v5, v7

    neg-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    int-to-float v4, v15

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v4, v3

    int-to-float v3, v15

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v4, v15

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v15

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_8
    if-gez v14, :cond_9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v4, v15

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    int-to-float v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v3, v4

    int-to-float v3, v15

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int v5, v5, v18

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v4, v5, v0, v1}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    return-object v2

    :cond_a
    sub-int v2, v11, v13

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    sub-int v2, v10, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    div-int/lit8 v3, v16, 0x2

    sub-int v14, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v11, v13

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected final getWidth()I
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected final getWidth_Real()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    return v0
.end method

.method protected final loadGameMap()V
    .locals 10

    const/4 v1, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeGameMap()V

    :cond_0
    sput v7, Lage/of/civilizations2/jakowski/lukasz/Game;->MAX_BELOW_ZERO_POINT_X:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/backgrounds/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBackgroundName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_M.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/backgrounds/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBackgroundName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_M.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->addGameMap(Lage/of/civilizations2/jakowski/lukasz/Image;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iWidth:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->gameMap:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iHeight:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth_Real()I

    move-result v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    div-int v0, v2, v0

    int-to-double v2, v0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight_Real()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMaxDistance:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    :cond_1
    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosX:I

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_PosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Width:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapScaled_Height:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->fMinimapScaled_Scale:F

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateMinimapResolution(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final loadMinimap()V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "minimap_aoc2.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->minimap:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateMinimapResolution(I)V

    return-void
.end method

.method protected final saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 27

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PREVIEW_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    div-float v26, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v26

    float-to-int v11, v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    neg-int v15, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v18

    const/16 v16, 0x0

    const/4 v13, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v13, v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v17

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v2

    if-le v2, v15, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxX()I

    move-result v15

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v18

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMaxY()I

    move-result v16

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    sub-int v2, v15, v17

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    sub-int v17, v17, v22

    add-int v15, v15, v22

    sub-int v2, v16, v18

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    sub-int v18, v18, v22

    add-int v16, v16, v22

    if-gez v18, :cond_5

    const/16 v18, 0x0

    :cond_5
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v19, v17

    move/from16 v20, v18

    sub-int v2, v15, v17

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v16, v18

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-int v21, v15, v17

    sub-int v14, v16, v18

    sub-int v2, v15, v17

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int v3, v16, v18

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    sub-int v2, v15, v17

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v14, v2

    sub-int v2, v16, v18

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v18

    div-int/lit8 v3, v14, 0x2

    sub-int v20, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v15, v17

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    :goto_2
    move/from16 v0, v21

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    if-ltz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_7

    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v11

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v12

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v11

    div-float/2addr v5, v7

    mul-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v12

    div-float/2addr v7, v8

    mul-float/2addr v5, v7

    neg-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v4, v3

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    move/from16 v0, v19

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v3

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_8
    if-gez v19, :cond_9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v3, v4

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v5, v3

    const/16 v7, 0xdc

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v25, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v4, v12

    invoke-static {v3, v4, v11, v12}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "scenarios/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "preview.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    # Re-export after preview.png so pack folder is complete
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportCurrent()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {v25 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/16 v25, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v24, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "scenarios/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "preview.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_3
    new-instance v23, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {v24 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {v24 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    invoke-static {v3, v4, v5, v7}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual/range {v23 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    :try_start_5
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "scenarios/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "preview.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportCurrent()V

    invoke-virtual/range {v23 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_7
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-virtual/range {v24 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/16 v24, 0x0

    return-void

    :cond_a
    sub-int v2, v16, v18

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v21, v0

    sub-int v2, v15, v17

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v17

    div-int/lit8 v3, v21, 0x2

    sub-int v19, v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v16, v18

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v6, v2, v3

    goto/16 :goto_2

    :cond_b
    new-instance v24, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "scenarios/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "preview.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_7

    :catch_1
    move-exception v2

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_5

    :catch_3
    move-exception v2

    goto/16 :goto_3

    :catch_4
    move-exception v2

    goto/16 :goto_0
.end method

.method protected final updateMinimapResolution(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->updateMinimapScaleXY()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapHeight:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getMinimapScaleY()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->iMinimapWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->updateMinimapScaleXY()V

    return-void
.end method

.method protected final updateWorldMap()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    goto :goto_0
.end method

.method protected final updateWorldMap_Shaders()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivlizationView()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_EndOfGame()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IMPERIAL_MODE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DISEASES_MODE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->worldMap_Shaders:Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;

    goto :goto_0
.end method
