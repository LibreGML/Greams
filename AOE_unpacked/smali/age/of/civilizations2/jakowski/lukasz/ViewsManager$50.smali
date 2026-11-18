.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager$50;
.super Ljava/lang/Object;
.source "ViewsManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;


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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$50;->this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MAX:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MIN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MAX:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    const/16 v5, 0x64

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v2, v4, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :goto_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    if-eqz v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method
