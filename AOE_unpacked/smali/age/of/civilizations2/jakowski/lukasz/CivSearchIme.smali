.class public final Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;
.super Ljava/lang/Object;
.source "CivSearchIme.java"


# static fields
.field public static active:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .registers 1

    .line 37
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;->active:Z

    if-nez v0, :cond_5

    .line 38
    return-void

    .line 40
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;->active:Z

    .line 42
    :try_start_8
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hideSystemIme()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 44
    goto :goto_d

    .line 43
    :catchall_c
    move-exception v0

    .line 45
    :goto_d
    return-void
.end method

.method public static isActive()Z
    .registers 1

    .line 48
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;->active:Z

    return v0
.end method

.method public static open()V
    .registers 2

    .line 15
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 16
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    .line 18
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;->active:Z

    .line 19
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V

    .line 21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    goto :goto_1a

    .line 24
    :cond_16
    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 27
    :goto_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-eqz v0, :cond_2f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    .line 30
    :cond_2f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->showSystemIme()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    .line 33
    goto :goto_37

    .line 31
    :catchall_33
    move-exception v0

    .line 32
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 34
    :goto_37
    return-void
.end method
