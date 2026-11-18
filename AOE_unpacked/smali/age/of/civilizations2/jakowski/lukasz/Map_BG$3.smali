.class Lage/of/civilizations2/jakowski/lukasz/Map_BG$3;
.super Ljava/lang/Object;
.source "Map_BG.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap_Shaders;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Map_BG;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->nextPlayerTurnShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_BG$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_BG;)Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG$WorldMap;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method
