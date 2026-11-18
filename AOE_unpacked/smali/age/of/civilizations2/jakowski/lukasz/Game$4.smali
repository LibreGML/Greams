.class Lage/of/civilizations2/jakowski/lukasz/Game$4;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOffset()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Game$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game;)Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Animation_MoveUnits2;->update()V

    return-void
.end method
