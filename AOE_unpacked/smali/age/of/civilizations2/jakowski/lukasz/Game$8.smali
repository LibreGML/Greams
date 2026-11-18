.class Lage/of/civilizations2/jakowski/lukasz/Game$8;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game$HighlightedProvince_Animation_UpdateOffset;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game;->updateActiveProvinceBorderStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Game;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOffset()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$100(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$200(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game;)Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->update()V

    :cond_2
    return-void
.end method
