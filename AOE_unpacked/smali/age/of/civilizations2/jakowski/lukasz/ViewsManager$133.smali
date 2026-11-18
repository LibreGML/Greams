.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager$133;
.super Ljava/lang/Object;
.source "ViewsManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ViewsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$133;->this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawHighlightProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateHighlitghtProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder_Only_CivilizationBorder_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawAllCivilizations_Flag_InCapitals_WithCrown_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_ActiveProvince_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->oDrawMoveUnits:Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;->drawMoveUnits_WithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_WithoutScale_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvincesInfo_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_ActiveProvince_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    return-void
.end method
