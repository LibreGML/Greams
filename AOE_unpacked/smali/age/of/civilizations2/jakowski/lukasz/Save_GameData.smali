.class Lage/of/civilizations2/jakowski/lukasz/Save_GameData;
.super Ljava/lang/Object;
.source "Save_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected COLONIZATION_TECH_LEVEL:F

.field protected DIFFICULTY:I

.field protected DISEASES_DEATH_REATE_MODIFIER:F

.field protected ECONOMY_GROWTH_RATE_MODIFIER:F

.field protected ENABLE_COLONIZATION:Z

.field protected ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

.field protected FOG_OF_WAR:I

.field protected GAME_SPEED:F

.field protected POPULATION_GROWTH_RATE_MODIFIER:F

.field protected SANDBOX_MODE:Z

.field protected SPECTATOR_MODE:Z

.field protected STARTING_ECONOMY:I

.field protected STARTING_POPULATION:I

.field protected TURNS_SINCE_LAST_WAR:I

.field protected VICTORY_CONTROL_PROVINCES_PERC:I

.field protected VICTORY_LIMIT_OF_TURNS:I

.field protected VICTORY_TECHNOLOGY:F

.field protected eventsGameData:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

.field protected holyRomanEmpire_GameData:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

.field protected iDay:I

.field protected iMonth:I

.field protected iTurnID:I

.field protected iYear:I

.field protected lAlliances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Alliance;",
            ">;"
        }
    .end annotation
.end field

.field protected lCivsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lCivsDiploData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save_CivDiplo_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lPeaceTreaties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData_MessageData;",
            ">;"
        }
    .end annotation
.end field

.field protected lPlagues_INGAME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Plague_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save_Player_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lProvincesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lWars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/War_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected sActiveScenarioTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lCivsData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lCivsDiploData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lProvincesData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPlayers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lAlliances:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lWars:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPeaceTreaties:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPlagues_INGAME:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->COLONIZATION_TECH_LEVEL:F

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->sActiveScenarioTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->iTurnID:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURNS_SINCE_LAST_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->TURNS_SINCE_LAST_WAR:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->iDay:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->iMonth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->iYear:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->GAME_SPEED:F

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->SANDBOX_MODE:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->ENABLE_COLONIZATION:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->COLONIZATION_TECH_LEVEL:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->STARTING_POPULATION:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->STARTING_ECONOMY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->POPULATION_GROWTH_RATE_MODIFIER:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->ECONOMY_GROWTH_RATE_MODIFIER:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_DiseasesDeathRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->DISEASES_DEATH_REATE_MODIFIER:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->VICTORY_CONTROL_PROVINCES_PERC:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_LIMIT_OF_TURNS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->VICTORY_LIMIT_OF_TURNS:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->VICTORY_TECHNOLOGY:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->FOG_OF_WAR:I

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->SPECTATOR_MODE:Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->DIFFICULTY:I

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lCivsData:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lCivsDiploData:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Save_CivDiplo_GameData;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Save_CivDiplo_GameData;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lProvincesData:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPlayers:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Player;->savePlayer:Lage/of/civilizations2/jakowski/lukasz/Save_Player_GameData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliancesSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lAlliances:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarsSize()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lWars:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Game;->lPeaceTreaties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPeaceTreaties:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Game;->lPeaceTreaties:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->plagueManager:Lage/of/civilizations2/jakowski/lukasz/PlagueManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PlagueManager;->lPlagues_INGAME:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->lPlagues_INGAME:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->plagueManager:Lage/of/civilizations2/jakowski/lukasz/PlagueManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PlagueManager;->lPlagues_INGAME:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->holyRomanEmpire_GameData:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->eventsGameData:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData;->sActiveScenarioTag:Ljava/lang/String;

    :cond_8
    return-void
.end method
