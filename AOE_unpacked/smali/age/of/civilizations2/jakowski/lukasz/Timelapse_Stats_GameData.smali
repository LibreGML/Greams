.class Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;
.super Ljava/lang/Object;
.source "Timelapse_Stats_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected lHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/HistoryLog;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lPlayers_Balance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lPlayers_Income:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lPlayers_MilitarySpendings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lPopulation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lRank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lTechnologyLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addPopulation(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_POPULATION:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_POPULATION:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final addProvinces(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PROVINCES:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PROVINCES:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final addRank(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_RANK:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_RANK:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final addTechLevel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_TECH_LEVEL:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_TECH_LEVEL:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
