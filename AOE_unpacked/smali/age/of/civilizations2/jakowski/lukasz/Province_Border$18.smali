.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$18;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_ActiveLandBySea_Percentage()V
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$18;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Active_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->getBorderAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const v2, 0x3f70f0f1

    const v3, 0x3f40c0c1

    const v4, 0x3e1c9c9d

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$18;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceAnimation_Highlighted_Data()Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->getLineOffset()I

    move-result v8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float v0, v1, v0

    div-float v9, v0, v1

    move-object v6, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    return-void
.end method
