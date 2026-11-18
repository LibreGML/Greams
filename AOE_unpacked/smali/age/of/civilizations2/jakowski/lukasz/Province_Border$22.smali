.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$22;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_MoveUnits_Percentage_LandBySea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$22;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 12

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v1

    const/16 v2, 0x3c

    const/16 v3, 0xe0

    const/16 v4, 0xfa

    invoke-static {v3, v4, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v3

    const/16 v4, 0xce

    const/16 v5, 0xea

    invoke-static {v4, v5, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v4

    const/16 v5, 0x5b

    const/4 v6, 0x4

    invoke-static {v5, v6, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const v5, 0x3efafafb

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$22;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Highlighted_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->getLineOffset()I

    move-result v9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    div-float v10, v0, v5

    move-object v7, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    return-void
.end method
