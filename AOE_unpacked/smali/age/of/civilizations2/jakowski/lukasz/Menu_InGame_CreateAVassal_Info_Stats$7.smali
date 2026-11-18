.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$7;
.super Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;
.source "Menu_InGame_CreateAVassal_Info_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;-><init>(IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_PopulationOfCiv_CreateAVassal()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$7;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
