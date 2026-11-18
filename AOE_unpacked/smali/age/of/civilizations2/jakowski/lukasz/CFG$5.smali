.class final Lage/of/civilizations2/jakowski/lukasz/CFG$5;
.super Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;
.source "CFG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;->updateCreateAVassal_CivInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;-><init>(IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_PopulationOfCiv_CreateAVassal()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CFG$5;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
