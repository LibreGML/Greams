.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$23;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_MoveUnits_Percentage_Sea()V
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 12

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$23;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Highlighted_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->getLineOffset()I

    move-result v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v5, v1, v4

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v1

    const/16 v7, 0x3c

    const/16 v8, 0xe0

    const/16 v9, 0xfa

    invoke-static {v8, v9, v1, v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v1

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v8

    const/16 v9, 0xce

    const/16 v10, 0xea

    invoke-static {v9, v10, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getColorStepID()I

    move-result v9

    const/16 v10, 0x5b

    const/4 v11, 0x4

    invoke-static {v10, v11, v9, v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const v10, 0x3efafafb

    mul-float v9, v9, v10

    div-float/2addr v9, v4

    invoke-direct {v6, v1, v8, v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    move v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth_Full_SeaBySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
