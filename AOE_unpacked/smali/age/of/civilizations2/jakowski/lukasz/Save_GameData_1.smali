.class public Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;
.super Ljava/lang/Object;
.source "Save_GameData_1.java"

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

.field protected iDay:I

.field protected iMonth:I

.field protected iTurnID:I

.field protected iYear:I

.field protected sActiveScenarioTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->COLONIZATION_TECH_LEVEL:F

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->iTurnID:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURNS_SINCE_LAST_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->TURNS_SINCE_LAST_WAR:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->iDay:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->iMonth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->iYear:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->GAME_SPEED:F

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->SANDBOX_MODE:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->ENABLE_COLONIZATION:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->COLONIZATION_TECH_LEVEL:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->STARTING_POPULATION:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingEconomy()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->STARTING_ECONOMY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_PopulationGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->POPULATION_GROWTH_RATE_MODIFIER:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_EconomyGrowthRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->ECONOMY_GROWTH_RATE_MODIFIER:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_DiseasesDeathRate_Modifier()F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->DISEASES_DEATH_REATE_MODIFIER:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->VICTORY_CONTROL_PROVINCES_PERC:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_LIMIT_OF_TURNS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->VICTORY_LIMIT_OF_TURNS:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->VICTORY_TECHNOLOGY:F

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->FOG_OF_WAR:I

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->SPECTATOR_MODE:Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->DIFFICULTY:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

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

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->sActiveScenarioTag:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_GameData_1;->sActiveScenarioTag:Ljava/lang/String;

    :cond_1
    return-void
.end method
