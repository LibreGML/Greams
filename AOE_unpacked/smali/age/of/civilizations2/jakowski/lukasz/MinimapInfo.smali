.class Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "MinimapInfo.java"


# instance fields
.field private scale:F


# direct methods
.method protected constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->MINIMAPINFO:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->setPosY(I)V

    int-to-float p1, p3

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->scale:F

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->setWidth(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->scale:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->setHeight(I)V

    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p5, p5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p5, p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p4, p5, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p5, p5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p5, p5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    neg-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, p5, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object p4, p4, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getPosX()I

    move-result p5

    add-int/2addr p5, p2

    int-to-float p5, p5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p5, p5, v0

    float-to-int p5, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p4, p1, p5, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    int-to-float p2, p4

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    mul-float p2, p2, p4

    float-to-int v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    int-to-float p2, p2

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MinimapInfo;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    mul-float p2, p2, p3

    float-to-int v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xff

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int p4, p4

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    return-void
.end method
