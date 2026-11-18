.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$8;
.super Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;
.source "Menu_InGame_CivInfo_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_TechnologyLevel(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$8;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
