.class Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$300(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)J

    move-result-wide v0

    const-wide/16 v2, 0x23

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$206(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getWidth()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getTextWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$402(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$204(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$402(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$302(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;J)J

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I

    move-result v0

    return v0
.end method
