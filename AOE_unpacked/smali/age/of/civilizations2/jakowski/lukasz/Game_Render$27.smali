.class final Lage/of/civilizations2/jakowski/lukasz/Game_Render$27;
.super Ljava/lang/Object;
.source "Game_Render.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder_Only_CivilizationBorder_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_2
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

    if-gez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawAllCivilizations_Flag_InCapitals_WithCrown(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_3
    return-void
.end method

.method public drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawAllCivilizations_Flag_InCapitals_WithCrown(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_WithoutScale_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawAllCivilizations_Flag_InCapitals_WithCrown(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_OnlyCapitals_Images(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    :goto_0
    return-void
.end method
