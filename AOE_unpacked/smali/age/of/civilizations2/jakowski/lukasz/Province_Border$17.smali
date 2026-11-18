.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$17;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_ActiveSeaBySea_Percentage()V
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Highlighted_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->getLineOffset()I

    move-result v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float v1, v4, v1

    div-float v4, v1, v4

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    const v5, 0x3f70f0f1

    const v7, 0x3f40c0c1

    const v8, 0x3e1c9c9d

    invoke-direct {v6, v5, v7, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
