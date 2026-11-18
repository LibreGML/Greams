.class Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;
.super Ljava/lang/Object;
.source "Steam_Game.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUserStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Steam_Game;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Steam_Game;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "onGlobalStatsReceived"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaderboard find result: handle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", found="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaderboard: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v3, p1}, Lcom/codedisaster/steamworks/SteamUserStats;->getLeaderboardName(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", entries="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v3, p1}, Lcom/codedisaster/steamworks/SteamUserStats;->getLeaderboardEntryCount(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    new-array v2, v4, [Lcom/codedisaster/steamworks/SteamID;

    const/4 v3, 0x0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->user:Lcom/codedisaster/steamworks/SteamUser;

    invoke-virtual {v4}, Lcom/codedisaster/steamworks/SteamUser;->getSteamID()Lcom/codedisaster/steamworks/SteamID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats;->downloadLeaderboardEntriesForUsers(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;[Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAPICall;

    :goto_1
    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    sget-object v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/codedisaster/steamworks/SteamUserStats;->uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;

    goto :goto_1
.end method

.method public onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V
    .locals 4

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaderboard score uploaded: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", handle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", score="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", changed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", globalRankNew="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", globalRankPrevious="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    goto :goto_1
.end method

.method public onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V
    .locals 7

    const/4 v6, 0x0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AoC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leaderboard scores downloaded: handle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUserStats;->uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    new-instance v0, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;-><init>()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v2, p2, v1, v0, v6}, Lcom/codedisaster/steamworks/SteamUserStats;->getDownloadedLeaderboardEntry(Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;ILcom/codedisaster/steamworks/SteamLeaderboardEntry;[I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AoC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leaderboard entry #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": steamIDUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->getSteamIDUser()Lcom/codedisaster/steamworks/SteamID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamID;->getAccountID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", globalRank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->getGlobalRank()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", score="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->getScore()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->getScore()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->currentLeaderboard:Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    sget-object v4, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->iScore:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUserStats;->uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onUserAchievementStored(JZLjava/lang/String;II)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "onUserAchievementStored"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 9

    const/4 v8, 0x0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User stats received: gameId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p4}, Lcom/codedisaster/steamworks/SteamResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v4}, Lcom/codedisaster/steamworks/SteamUserStats;->getNumAchievements()I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num of achievements: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v4, v1}, Lcom/codedisaster/steamworks/SteamUserStats;->getAchievementName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v4, v2, v8}, Lcom/codedisaster/steamworks/SteamUserStats;->isAchieved(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "AoC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " : name="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", achieved="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_0

    const-string v4, "yes"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "no"

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v6, "S_VASS"

    invoke-virtual {v5, v6, v8}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S_VASS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_VASS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v6, "S_UNIO"

    invoke-virtual {v5, v6, v8}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S_UNIO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_UNIO:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    const-string v6, "S_ALLI"

    invoke-virtual {v5, v6, v8}, Lcom/codedisaster/steamworks/SteamUserStats;->getStatI(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AoC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S_ALLI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->S_ALLI:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "onUserStatsStored"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "onUserStatsUnloaded"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
