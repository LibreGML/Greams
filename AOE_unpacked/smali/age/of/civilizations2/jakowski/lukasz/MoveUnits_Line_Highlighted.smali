.class Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;
.super Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;
.source "MoveUnits_Line_Highlighted.java"


# static fields
.field protected static MOVE_SRC_X2:I

.field protected static MOVE_WIDTH2:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;-><init>(II)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->getImageID()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->MOVE_WIDTH2:I

    return-void
.end method


# virtual methods
.method protected getFlipX()Z
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightFlipX:Z

    return v0
.end method

.method protected getImageID()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected getMoveSrcX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->MOVE_SRC_X2:I

    return v0
.end method

.method protected updateColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBackAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getStepID()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    goto :goto_1

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getStepID()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateMovingLine()V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->fMovingPercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->lMovingTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;->fMovingPercentage:F

    return-void
.end method
