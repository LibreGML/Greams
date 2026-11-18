.class Lage/of/civilizations2/jakowski/lukasz/Game_Render;
.super Ljava/lang/Object;
.source "Game_Render.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;
    }
.end annotation


# static fields
.field private static CIVILIZATIONS_NAMES_TIME:J = 0x0L

.field protected static CIVILIZATION_NAMES_ALPHA:F = 1.0f

.field protected static CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE:F = 1.0f

.field protected static DISABLE_CITIES:Z = false

.field protected static DISABLE_CIVS_NAMES:Z = false

.field protected static DISABLE_INNER_BORDERS:F = 0.4f

.field protected static DISABLE_SEA_ARMIES:F = 0.65f

.field protected static drawCivNamesInCreateNewGame:Z

.field private static lRegions_Civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lRegions_Civs_RegionsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

.field private static oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

.field private static oRenderer_CivRegionNames:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRegionsInView()V

    return-void
.end method

.method protected static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer_CivRegionNames:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;->update()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer_CivRegionNames:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATIONS_NAMES_TIME:J

    :goto_0
    return-void
.end method

.method protected static final drawCivRegions_Names(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 14

    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CIVS_NAMES:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v1, v2, :cond_3

    :try_start_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    :try_start_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawName:Z

    if-eqz v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getFontScale()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v6

    mul-float v5, v5, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getSecondSideOfMap()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getFontScale()F

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getAngle()F

    move-result v11

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxWidth()I

    move-result v12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxHeight()I

    move-result v13

    move-object v7, p0

    invoke-virtual/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFFII)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getFontScale()F

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getAngle()F

    move-result v11

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxWidth()I

    move-result v12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxHeight()I

    move-result v13

    move-object v7, p0

    invoke-virtual/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFFII)V

    goto/16 :goto_2

    :cond_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getShortestPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getFontScale()F

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getAngle()F

    move-result v11

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxWidth()I

    move-result v12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getCharMaxHeight()I

    move-result v13

    move-object v7, p0

    invoke-virtual/range {v6 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFFII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :catch_1
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception p0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method protected static final drawInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawHighlightProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateHighlitghtProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder_Only_CivilizationBorder_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method protected static final drawInGame_MapDetails()Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final drawInGame_WithoutScale_MapDetails()Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;->drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method protected static final drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->generateFlags(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateLoadArmiesWidth_ErrorIDs(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    invoke-interface {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method protected static final updateDrawCivRegionNames_FogOfWar()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->updateDrawRegionName()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static final updateDrawMoveUnits()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$1;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$4;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$4;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_2
    :goto_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$2;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$2;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$3;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$3;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$5;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$5;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$6;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$6;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_6

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$7;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$7;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    goto :goto_1

    :cond_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$8;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$8;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    :goto_1
    return-void
.end method

.method private static final updateRegionsInView()V
    .locals 8

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATIONS_NAMES_TIME:J

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATIONS_NAMES_TIME:J

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const v0, 0x3f666666    # 0.9f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATIONS_NAMES_TIME:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    mul-float v4, v4, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    add-float/2addr v4, v2

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->CIVILIZATION_NAMES_ALPHA:F

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v4, :cond_7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    aget v4, v0, v4

    if-lez v4, :cond_5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    aget v5, v0, v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_2
    if-ltz v4, :cond_4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    aget v6, v0, v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    aget v5, v0, v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v0, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs_RegionsID:Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    aget v5, v0, v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected static final updateRenderer()V
    .locals 3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer_CivNames()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameCanBeContinued:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettingsProvince()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$18;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$18;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$19;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$19;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_c

    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SelectProvinces()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_5

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$22;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$22;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$23;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$23;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ShowProvinces()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_7

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$24;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$24;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$25;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$25;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_TradeSelectCiv()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_9

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$26;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$26;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$27;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$27;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInStartGameMenu()Z

    move-result v0

    if-nez v0, :cond_47

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInEndGameMenu()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_b

    :cond_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Formable_Civ_Provinces()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$30;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$30;-><init>()V

    goto :goto_0

    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$31;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$31;-><init>()V

    :goto_0
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_FormAnimation()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$32;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$32;-><init>()V

    goto :goto_1

    :cond_e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$33;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$33;-><init>()V

    :goto_1
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$34;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$34;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getCreateScenario_ScenarioAge()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_RANDOM_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    if-eq v0, v2, :cond_46

    :cond_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInRandomGame_Civilizations_Select()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_a

    :cond_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInManageDiplomacy()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCustomizeAlliance()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_9

    :cond_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNewGamePlayers()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$37;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$37;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectCiv()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$38;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$38;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations()Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Civilizations_Select()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_8

    :cond_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$40;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$40;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Assign_Select()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$41;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$41;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_WastelandMap()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$42;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$42;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_SetUpArmy()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$43;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$43;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Events_SelectProvinces()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$44;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$44;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Cores()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$45;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$45;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_Edit()Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectFormable()Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_FormableCivs_SelectClaimant()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_7

    :cond_1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_HolyRomanEmpire()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$47;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$47;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Available_Provinces()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$48;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$48;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectAvailableCivilizations()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$49;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$49;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInAboutMenu()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInInitMenu()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_6

    :cond_23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPalletOfCivsColorsEdit()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$51;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$51;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCity()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$52;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$52;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewContinent()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Create_NewRegion()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Create_DiplomacyPackage()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_ReligionAdd()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_TerrainAdd()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInEditor_GameCivs()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateCivilization()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_5

    :cond_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Terrain()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Continents()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Regions()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_4

    :cond_27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_GrowthRate()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$55;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$55;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_TechnologyLevels()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$56;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$56;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Happiness()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$57;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$57;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_StartingMoney()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$58;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$58;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmyPosition()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$59;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$59;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_PortPosition()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$60;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$60;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ProvinceBackground()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$61;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$61;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadPreDefinedBorders()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$62;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$62;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_2f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_LoadSuggestedOwners()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$63;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$63;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_30
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSelectLanguage()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$64;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$64;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_WastelandMaps_Edit()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$65;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$65;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameEditor_Regions()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$66;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$66;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_SeaProvinces()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$67;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$67;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$68;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$68;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_Connections()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$69;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$69;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettingsProvince()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$70;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$70;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Edit()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$71;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$71;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInMapEditor_ArmySeaBoxes_Add()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$72;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$72;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-eqz v0, :cond_3b

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_3a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$73;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$73;-><init>()V

    goto :goto_2

    :cond_3a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$74;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$74;-><init>()V

    :goto_2
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_3b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivlizationView()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_3c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$75;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$75;-><init>()V

    goto :goto_3

    :cond_3c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$76;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$76;-><init>()V

    :goto_3
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateScenario_Preview()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$77;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$77;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_3e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInPrintAMap()Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$78;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$78;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_3f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$79;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$79;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_40
    :goto_4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$54;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$54;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_41
    :goto_5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$53;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$53;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_42
    :goto_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$50;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$50;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_43
    :goto_7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$46;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$46;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_44
    :goto_8
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$39;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$39;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_45
    :goto_9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$36;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$36;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_46
    :goto_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$35;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$35;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_47
    :goto_b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_48

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$28;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$28;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_48
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$29;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$29;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_49
    :goto_c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_4a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$20;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$20;-><init>()V

    goto :goto_d

    :cond_4a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$21;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$21;-><init>()V

    :goto_d
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto/16 :goto_11

    :cond_4b
    :goto_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response;->DRAW_TREATY_PROVINCES:Z

    if-nez v0, :cond_4d

    :cond_4c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_PeaceTreaty_Response()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response;->DRAW_TREATY_PROVINCES:Z

    if-eqz v0, :cond_4f

    :cond_4d
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_4e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$11;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$11;-><init>()V

    goto :goto_f

    :cond_4e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$12;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$12;-><init>()V

    :goto_f
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto :goto_11

    :cond_4f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v2, :cond_51

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->showNextPlayerTurnView()Z

    move-result v0

    if-eqz v0, :cond_51

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_50

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$13;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$13;-><init>()V

    goto :goto_10

    :cond_50
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$14;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$14;-><init>()V

    :goto_10
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto :goto_11

    :cond_51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_52

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto :goto_11

    :cond_52
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$15;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$15;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto :goto_11

    :cond_53
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_54

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$16;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$16;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    goto :goto_11

    :cond_54
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$17;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$17;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    :goto_11
    return-void
.end method

.method protected static final updateRenderer_CivNames()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInSettingsProvince()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$10;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$10;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer_CivRegionNames:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render$9;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$9;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oRenderer_CivRegionNames:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;

    :goto_1
    return-void
.end method
