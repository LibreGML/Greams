.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder_OwnerAnimation(ZI)V
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->access$000(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPROVINCE_BORDER_ANIMATION_TIME(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-float v0, v5

    const v3, 0x44354000    # 725.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PROVINCE_BORDER_ANIMATION_TIME:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->access$000(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3f7d70a4    # 0.99f

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    const v5, 0x3f7d70a4    # 0.99f

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v10

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth_Full_Straight(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)V

    return-void
.end method
