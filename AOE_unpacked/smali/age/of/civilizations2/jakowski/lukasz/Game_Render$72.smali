.class final Lage/of/civilizations2/jakowski/lukasz/Game_Render$72;
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

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesInMapEditor_ArmySeaBoxes_Add(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawActiveProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    return-void
.end method
