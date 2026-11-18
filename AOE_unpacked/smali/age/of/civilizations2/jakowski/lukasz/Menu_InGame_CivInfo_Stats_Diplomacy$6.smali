.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_InGameWar;
.source "Menu_InGame_CivInfo_Stats_Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;ILjava/util/List;III)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_InGameWar;-><init>(ILjava/util/List;III)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v2

    float-to-int v2, v2

    const/16 v4, -0x64

    if-ne v2, v4, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_WarDetails()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;->WAR_ID:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_4

    add-int/2addr v0, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_WarDetails(Z)V

    goto :goto_5

    :cond_6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;->WAR_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WarDetails()V

    goto :goto_5

    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;->WAR_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WarDetails()V

    goto :goto_5

    :cond_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_WarDetails(Z)V

    :goto_5
    return-void
.end method
