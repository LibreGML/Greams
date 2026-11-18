.class Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;
.super Ljava/lang/Object;
.source "Province_Animation_MoveUnits2.java"


# instance fields
.field private iLineOffset:I

.field protected iLineOffsetInterval:I

.field private lTimeLine:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    const/16 v0, 0x4b

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->resetData()V

    return-void
.end method


# virtual methods
.method protected getLineOffset()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    return v0
.end method

.method protected final resetData()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    return-void
.end method

.method protected setLineOffsetInterval(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    return-void
.end method

.method protected final update()V
    .locals 6

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffsetInterval:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->iLineOffset:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->lTimeLine:J

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    return-void
.end method

.method protected updateColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v3, 0x1e

    const/16 v4, 0x37

    const/16 v5, 0xff

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v6

    invoke-static {v5, v4, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v8

    invoke-static {v5, v4, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne p2, v5, :cond_0

    const/high16 p2, 0x3fe00000    # 1.75f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    :goto_0
    div-float/2addr v4, p2

    div-float/2addr v4, v2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p2, p2, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float/2addr p2, v1

    mul-float v4, v4, p2

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v6

    invoke-static {v5, v4, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v7

    invoke-static {v5, v4, v7, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v8

    invoke-static {v5, v4, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne p2, v5, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    :goto_1
    div-float/2addr v4, p2

    div-float/2addr v4, v2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p2, p2, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float/2addr p2, v1

    mul-float v4, v4, p2

    invoke-direct {v0, v6, v7, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    return-void
.end method
