.class final Lage/of/civilizations2/jakowski/lukasz/Game_Render$9;
.super Ljava/lang/Object;
.source "Game_Render.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer_CivNames()V
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
    .locals 0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawCivRegions_Names(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->access$000()V

    return-void
.end method
