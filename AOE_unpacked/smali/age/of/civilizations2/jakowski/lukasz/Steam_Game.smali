.class Lage/of/civilizations2/jakowski/lukasz/Steam_Game;
.super Ljava/lang/Object;
.source "Steam_Game.java"


# static fields
.field protected static iScore:I


# instance fields
.field protected S_ALLI:I

.field protected S_UNIO:I

.field protected S_VASS:I

.field protected apps:Lcom/codedisaster/steamworks/SteamApps;

.field protected currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

.field protected friends:Lcom/codedisaster/steamworks/SteamFriends;

.field protected remoteStorage:Lcom/codedisaster/steamworks/SteamRemoteStorage;

.field protected ugc:Lcom/codedisaster/steamworks/SteamUGC;

.field protected user:Lcom/codedisaster/steamworks/SteamUser;

.field protected userStats:Lcom/codedisaster/steamworks/SteamUserStats;

.field protected utils:Lcom/codedisaster/steamworks/SteamUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "isSteamRunning: true"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Register user ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/codedisaster/steamworks/SteamUser;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$1;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUser;-><init>(Lcom/codedisaster/steamworks/SteamUserCallback;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->user:Lcom/codedisaster/steamworks/SteamUser;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Register user stats callback ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;-><init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;-><init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->remoteStorage:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$4;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUGC;-><init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->ugc:Lcom/codedisaster/steamworks/SteamUGC;

    new-instance v0, Lcom/codedisaster/steamworks/SteamApps;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamApps;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->apps:Lcom/codedisaster/steamworks/SteamApps;

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$5;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamFriends;-><init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->friends:Lcom/codedisaster/steamworks/SteamFriends;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->requestCurrentStats()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "isSteamRunning: false"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final checkAchievement()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x5dc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_7"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_7"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_7"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x2ee

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_6"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_6"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_6"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_5"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_5"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_5"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_4"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_4"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_4"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_3"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_3"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_3"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_2"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_2"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_2"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_5
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_1"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_1"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_1"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_6
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_0"

    invoke-virtual {v0, v1, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "CONQ_0"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "CONQ_0"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_7
    return-void
.end method

.method protected final checkFormableAchievement(I)V
    .locals 4

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "atr_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "AUSTR_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "AUSTR_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "kita"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ita"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ita2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "ITAL_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "ITAL_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    const-string v1, "tur_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "OTT_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "OTT_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    const-string v1, "auhh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "AUH_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "AUH_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :cond_5
    const-string v1, "jap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "JAP_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "JAP_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "rus_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "rus2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    const-string v3, "RUS_0"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "RUS_0"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v1}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method protected final checkGovermentAchievement(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_DEM"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_DEM"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_MON"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_MON"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_COM"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_COM"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_FAC"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_FAC"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto :goto_0

    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_REP"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_REP"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_HOR"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_HOR"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "G_CIT"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "G_CIT"

    invoke-virtual {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method protected final uploadAlliance()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "S_ALLI"

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setStatI(Ljava/lang/String;I)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    return-void
.end method

.method protected final uploadScore()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    if-eqz v1, :cond_0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v1, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v2, "Conquered Provinces"

    invoke-virtual {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->findLeaderboard(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->checkAchievement()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final uploadScore_OnSave()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    if-eqz v1, :cond_0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    sget-object v3, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUserStats;->uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final uploadUnions()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "S_UNIO"

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setStatI(Ljava/lang/String;I)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    return-void
.end method

.method protected final uploadVassals()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SANDBOX_MODE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v1, "S_VASS"

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->setStatI(Ljava/lang/String;I)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    :cond_0
    return-void
.end method
