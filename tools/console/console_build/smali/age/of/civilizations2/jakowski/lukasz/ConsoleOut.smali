.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;
.super Ljava/lang/Object;
.source "ConsoleOut.java"


# static fields
.field private static final LINE_SOFT_MAX:I = 0xfa

.field private static final LINE_TRIM_TO:I = 0xc8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static blank()V
    .registers 1

    .line 64
    const-string v0, ""

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static chooseProvince()V
    .registers 3

    .line 82
    const-string v0, "\u8bf7\u9009\u62e9\u9646\u5730\u7701\u4efd"

    .line 84
    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    if-eqz v1, :cond_17

    .line 85
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ChooseAProvince"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_18

    if-lez v2, :cond_17

    .line 87
    move-object v0, v1

    .line 91
    :cond_17
    goto :goto_19

    .line 90
    :catchall_18
    move-exception v1

    .line 92
    :goto_19
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static err(Ljava/lang/String;)V
    .registers 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_f

    const-string p0, ""

    :cond_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 21
    nop

    .line 23
    :try_start_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    .line 25
    goto :goto_20

    .line 24
    :catchall_1e
    move-exception v0

    const/4 v0, 0x0

    .line 26
    :goto_20
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->toast(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 27
    return-void
.end method

.method public static hash(Ljava/lang/String;)V
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_f

    const-string p0, ""

    :cond_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static line(Ljava/lang/String;)V
    .registers 1

    .line 40
    if-nez p0, :cond_4

    :try_start_2
    const-string p0, ""

    :cond_4
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Commands;->addMessage(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->trimLog()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    .line 43
    goto :goto_c

    .line 42
    :catchall_b
    move-exception p0

    .line 44
    :goto_c
    return-void
.end method

.method public static ok(Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->toast(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 16
    return-void
.end method

.method public static toast(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 3

    .line 69
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    if-eqz v0, :cond_15

    if-nez p0, :cond_7

    goto :goto_15

    .line 72
    :cond_7
    if-nez p1, :cond_f

    .line 73
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_14

    .line 75
    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_16

    .line 78
    :goto_14
    goto :goto_17

    .line 70
    :cond_15
    :goto_15
    return-void

    .line 77
    :catchall_16
    move-exception p0

    .line 79
    :goto_17
    return-void
.end method

.method private static trimLog()V
    .registers 2

    .line 49
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    if-nez v0, :cond_5

    .line 50
    return-void

    .line 52
    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    const/16 v1, 0xfa

    if-gt v0, v1, :cond_10

    .line 54
    return-void

    .line 56
    :cond_10
    :goto_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_21

    .line 57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_22

    goto :goto_10

    .line 60
    :cond_21
    goto :goto_23

    .line 59
    :catchall_22
    move-exception v0

    .line 61
    :goto_23
    return-void
.end method

.method public static usage(Ljava/lang/String;)V
    .registers 1

    .line 30
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 31
    return-void
.end method
