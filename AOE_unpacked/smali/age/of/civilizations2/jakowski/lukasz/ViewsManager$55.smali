.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager$55;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$55;->this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->PROVINCE_COLOR_ANIMATION_TIMER:J

    const-wide/16 v2, 0xfa

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-static {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEconomyColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->PROVINCE_COLOR_ANIMATION_TIMER:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0xfa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v6, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v3, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v3

    int-to-float v3, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEconomyColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep_WithAlpha(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    return-void
.end method
