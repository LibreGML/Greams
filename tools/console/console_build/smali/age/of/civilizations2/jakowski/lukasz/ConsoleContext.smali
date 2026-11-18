.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;
.super Ljava/lang/Object;
.source "ConsoleContext.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static activeProvince()I
    .registers 1

    .line 34
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 35
    :catchall_7
    move-exception v0

    .line 36
    const/4 v0, -0x1

    return v0
.end method

.method public static civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .registers 3

    .line 53
    const/4 v0, 0x0

    if-ltz p0, :cond_19

    :try_start_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    if-eqz v1, :cond_19

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-lt p0, v1, :cond_10

    goto :goto_19

    .line 56
    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object p0

    .line 57
    :catchall_17
    move-exception p0

    .line 58
    return-object v0

    .line 54
    :cond_19
    :goto_19
    return-object v0
.end method

.method private static civByName(Ljava/lang/String;)I
    .registers 10

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    .line 349
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_11
    if-ge v2, v0, :cond_6b

    .line 350
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    .line 351
    if-nez v5, :cond_1c

    .line 352
    goto :goto_66

    .line 354
    :cond_1c
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_26

    move-object v6, v7

    goto :goto_2e

    :cond_26
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 355
    :goto_2e
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_35

    goto :goto_3d

    :cond_35
    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 356
    :goto_3d
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    goto :goto_69

    .line 360
    :cond_4a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_56

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_62

    :cond_56
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_66

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_66

    .line 361
    :cond_62
    nop

    .line 362
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    .line 349
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 357
    :cond_69
    :goto_69
    nop

    .line 358
    goto :goto_6c

    .line 349
    :cond_6b
    const/4 v2, -0x1

    .line 365
    :goto_6c
    if-ltz v2, :cond_6f

    .line 366
    return v2

    .line 368
    :cond_6f
    const/4 p0, 0x1

    if-ne v3, p0, :cond_73

    .line 369
    return v4

    .line 371
    :cond_73
    if-le v3, p0, :cond_78

    const-string p0, "\u56fd\u5bb6\u540d\u4e0d\u552f\u4e00"

    goto :goto_7a

    :cond_78
    const-string p0, "\u627e\u4e0d\u5230\u56fd\u5bb6"

    :goto_7a
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 372
    return v1
.end method

.method private static civId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 335
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 336
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->validCiv(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 340
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 337
    :cond_16
    :goto_16
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 338
    const/4 p0, -0x1

    return p0
.end method

.method public static civLabel(I)Ljava/lang/String;
    .registers 6

    .line 289
    const-string v0, " "

    const-string v1, "#"

    :try_start_4
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    .line 290
    if-nez v2, :cond_1c

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 293
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_42

    return-object p0

    .line 294
    :catchall_42
    move-exception v0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static game()Lage/of/civilizations2/jakowski/lukasz/Game;
    .registers 1

    .line 9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    return-object v0
.end method

.method public static intOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 104
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_42

    .line 108
    :cond_a
    nop

    .line 109
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1d

    .line 110
    :cond_1c
    const/4 v1, 0x1

    .line 112
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_24

    .line 113
    return-object v0

    .line 115
    :cond_24
    :goto_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 117
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3a

    const/16 v3, 0x39

    if-le v2, v3, :cond_37

    goto :goto_3a

    .line 115
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 118
    :cond_3a
    :goto_3a
    return-object v0

    .line 121
    :cond_3b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_40

    return-object p0

    .line 122
    :catchall_40
    move-exception p0

    .line 123
    return-object v0

    .line 105
    :cond_42
    :goto_42
    return-object v0
.end method

.method public static isLand(I)Z
    .registers 3

    .line 69
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 70
    if-nez p0, :cond_8

    .line 71
    return v0

    .line 73
    :cond_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 74
    return v0

    .line 76
    :cond_f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    if-gez p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 77
    :catchall_17
    move-exception p0

    .line 78
    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1

    .line 128
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isStar(Ljava/lang/String;)Z
    .registers 2

    .line 331
    if-eqz p0, :cond_1c

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "\u5168\u90e8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static join([Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 247
    if-eqz p0, :cond_23

    array-length v0, p0

    if-lt p1, v0, :cond_6

    goto :goto_23

    .line 250
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    move v1, p1

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 252
    if-le v1, p1, :cond_16

    .line 253
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    :cond_16
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 257
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method public static ownLandProvinces(I)[I
    .registers 9

    .line 302
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 303
    if-nez v1, :cond_a

    .line 304
    new-array p0, v0, [I

    return-object p0

    .line 306
    :cond_a
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    .line 307
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [I

    .line 308
    nop

    .line 309
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    if-ge v4, v2, :cond_39

    .line 310
    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    .line 311
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isLand(I)Z

    move-result v7

    if-nez v7, :cond_24

    .line 312
    goto :goto_36

    .line 314
    :cond_24
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    .line 315
    if-eqz v7, :cond_36

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v7, p0, :cond_31

    .line 316
    goto :goto_36

    .line 318
    :cond_31
    add-int/lit8 v7, v5, 0x1

    aput v6, v3, v5

    move v5, v7

    .line 309
    :cond_36
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 320
    :cond_39
    new-array p0, v5, [I

    .line 321
    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v5, :cond_45

    .line 322
    aget v2, v3, v1

    aput v2, p0, v1
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_46

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 324
    :cond_45
    return-object p0

    .line 325
    :catchall_46
    move-exception p0

    .line 326
    new-array p0, v0, [I

    return-object p0
.end method

.method public static playerCiv()I
    .registers 3

    .line 22
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    .line 23
    if-nez v1, :cond_c

    .line 24
    return v0

    .line 26
    :cond_c
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return v0

    .line 27
    :catchall_11
    move-exception v1

    .line 28
    return v0
.end method

.method public static province(I)Lage/of/civilizations2/jakowski/lukasz/Province;
    .registers 3

    .line 42
    const/4 v0, 0x0

    if-ltz p0, :cond_19

    :try_start_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    if-eqz v1, :cond_19

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-lt p0, v1, :cond_10

    goto :goto_19

    .line 45
    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object p0

    .line 46
    :catchall_17
    move-exception p0

    .line 47
    return-object v0

    .line 43
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static ready()Z
    .registers 2

    .line 14
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    if-eqz v1, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 15
    :catchall_f
    move-exception v1

    .line 16
    return v0
.end method

.method public static requireActive()I
    .registers 1

    .line 83
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result v0

    .line 84
    if-gez v0, :cond_b

    .line 85
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->chooseProvince()V

    .line 86
    const/4 v0, -0x1

    return v0

    .line 88
    :cond_b
    return v0
.end method

.method public static requireLand()I
    .registers 3

    .line 92
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result v0

    .line 93
    const/4 v1, -0x1

    if-gez v0, :cond_8

    .line 94
    return v1

    .line 96
    :cond_8
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isLand(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 97
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->chooseProvince()V

    .line 98
    return v1

    .line 100
    :cond_12
    return v0
.end method

.method public static resolveCiv(Ljava/lang/String;)I
    .registers 6

    .line 137
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->ready()Z

    move-result v1

    if-nez v1, :cond_d

    .line 138
    const-string p0, "\u6ca1\u6709\u8fdb\u884c\u4e2d\u7684\u5bf9\u5c40"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 139
    return v0

    .line 141
    :cond_d
    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_9f

    .line 149
    :cond_1f
    const-string v1, "@"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_b0

    const-string v2, "\u7701\u4efd\u6ca1\u6709\u62e5\u6709\u8005"

    if-eqz v1, :cond_46

    .line 150
    :try_start_29
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result p0

    .line 151
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 152
    if-nez p0, :cond_37

    .line 153
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->chooseProvince()V

    .line 154
    return v0

    .line 156
    :cond_37
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p0

    .line 157
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->validCiv(I)Z

    move-result v1

    if-nez v1, :cond_45

    .line 158
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 159
    return v0

    .line 161
    :cond_45
    return p0

    .line 163
    :cond_46
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_b0

    const-string v3, "\u56fd\u5bb6\u7f16\u53f7\u65e0\u6548"

    const/4 v4, 0x1

    if-eqz v1, :cond_5a

    .line 164
    :try_start_51
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 166
    :cond_5a
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 167
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_b0

    .line 168
    const-string v1, "\u7701\u4efd\u7f16\u53f7\u65e0\u6548"

    if-nez p0, :cond_72

    .line 169
    :try_start_6e
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 170
    return v0

    .line 172
    :cond_72
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 173
    if-nez p0, :cond_80

    .line 174
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 175
    return v0

    .line 177
    :cond_80
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p0

    .line 178
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->validCiv(I)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 179
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 180
    return v0

    .line 182
    :cond_8e
    return p0

    .line 184
    :cond_8f
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_9a

    .line 186
    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 188
    :cond_9a
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civByName(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 142
    :cond_9f
    :goto_9f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 143
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->validCiv(I)Z

    move-result v1

    if-nez v1, :cond_af

    .line 144
    const-string p0, "\u6ca1\u6709\u73a9\u5bb6\u56fd\u5bb6"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_6e .. :try_end_ae} :catchall_b0

    .line 145
    return v0

    .line 147
    :cond_af
    return p0

    .line 189
    :catchall_b0
    move-exception p0

    .line 190
    const-string p0, "\u56fd\u5bb6\u89e3\u6790\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 191
    return v0
.end method

.method public static resolveProv(Ljava/lang/String;)I
    .registers 9

    .line 198
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->ready()Z

    move-result v1

    if-nez v1, :cond_d

    .line 199
    const-string p0, "\u6ca1\u6709\u8fdb\u884c\u4e2d\u7684\u5bf9\u5c40"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 200
    return v0

    .line 202
    :cond_d
    if-eqz p0, :cond_9d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_9d

    .line 205
    :cond_1f
    nop

    .line 206
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_34

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    move-object v1, p0

    goto :goto_38

    .line 207
    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_38
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_53

    .line 211
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    if-nez p0, :cond_4e

    .line 212
    const-string p0, "\u7701\u4efd\u7f16\u53f7\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 213
    return v0

    .line 215
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 217
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 218
    nop

    .line 219
    nop

    .line 220
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    .line 221
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_62
    if-ge v3, v1, :cond_8f

    .line 222
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    .line 223
    if-eqz v6, :cond_8c

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_73

    .line 224
    goto :goto_8c

    .line 226
    :cond_73
    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 228
    return v3

    .line 230
    :cond_82
    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_8c

    .line 231
    nop

    .line 232
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    .line 221
    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 235
    :cond_8f
    if-ne v4, v2, :cond_92

    .line 236
    return v5

    .line 238
    :cond_92
    if-le v4, v2, :cond_97

    const-string p0, "\u7701\u4efd\u540d\u4e0d\u552f\u4e00"

    goto :goto_99

    :cond_97
    const-string p0, "\u627e\u4e0d\u5230\u7701\u4efd"

    :goto_99
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 239
    return v0

    .line 203
    :cond_9d
    :goto_9d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result p0
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_a2

    return p0

    .line 240
    :catchall_a2
    move-exception p0

    .line 241
    const-string p0, "\u7701\u4efd\u89e3\u6790\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 242
    return v0
.end method

.method public static top(I)V
    .registers 2

    .line 262
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-eqz v0, :cond_f

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->validCiv(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_TOP_All(I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 266
    :cond_f
    goto :goto_11

    .line 265
    :catchall_10
    move-exception p0

    .line 267
    :goto_11
    return-void
.end method

.method public static touchProvince(I)V
    .registers 4

    .line 271
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    if-eqz v0, :cond_40

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_40

    .line 274
    :cond_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    .line 275
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    .line 276
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    if-ltz v0, :cond_1c

    move p0, v0

    :cond_1c
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    .line 277
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-eqz p0, :cond_28

    .line 278
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->updateInGame_ProvinceInfo()V

    .line 280
    :cond_28
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-eqz p0, :cond_3f

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_CensusOfProvince()Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 281
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_CensusOfProvince(I)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_41

    .line 284
    :cond_3f
    goto :goto_42

    .line 272
    :cond_40
    :goto_40
    return-void

    .line 283
    :catchall_41
    move-exception p0

    .line 285
    :goto_42
    return-void
.end method

.method public static validCiv(I)Z
    .registers 1

    .line 63
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
