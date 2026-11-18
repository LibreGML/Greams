.class final Lage/of/civilizations2/jakowski/lukasz/Game_Render$30;
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
    .locals 1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvinces_FormableCiv_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsInFormableCiv(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvince_HoverJust_WithoutDrawingActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder_NextPlayer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_OnlyFormableCivCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawInGame_WithoutScale_MapDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawCities_OnlyFormableCivCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
