.class Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;
.super Ljava/lang/Object;
.source "AoCGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/AoCGame;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v5, 0x0

    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "BEII"

    const-string v8, "TurnListener started!"

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    if-eq v5, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v6

    if-ge v3, v6, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v0, v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v6

    if-lez v6, :cond_1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_Bonus(I)F

    move-result v6

    add-float/2addr v1, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "BEII"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RESLOG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-float v9, v1, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v7

    mul-float v8, v1, v10

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "BEII"

    const-string v8, "RPT: 0 (TIME NOT TESTED"

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v6

    if-ge v4, v6, :cond_0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawNuclearExplosion()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawNuclearExplosion(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
