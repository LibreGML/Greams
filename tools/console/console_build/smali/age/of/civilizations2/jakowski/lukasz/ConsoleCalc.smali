.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;
.super Ljava/lang/Object;
.source "ConsoleCalc.java"


# static fields
.field private static final VARS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static enterMode()V
    .registers 0

    .line 27
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    .line 28
    return-void
.end method

.method private static evalAndPrint(Ljava/lang/String;)V
    .registers 4

    .line 300
    const-string v0, "\u8ba1\u7b97\u9519\u8bef"

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->eval(Ljava/lang/String;Ljava/util/Map;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 301
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    const-string v2, "ans"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toRepr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V
    :try_end_29
    .catch Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException; {:try_start_2 .. :try_end_29} :catch_3d
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_29} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_29} :catch_2f
    .catchall {:try_start_2 .. :try_end_29} :catchall_2a

    goto :goto_3c

    .line 310
    :catchall_2a
    move-exception p0

    .line 311
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    goto :goto_52

    .line 308
    :catch_2f
    move-exception p0

    .line 309
    const-string p0, "\u6570\u5b57\u683c\u5f0f\u9519\u8bef"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    goto :goto_3c

    .line 306
    :catch_36
    move-exception p0

    .line 307
    const-string p0, "\u6570\u503c\u8d85\u51fa\u8303\u56f4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 312
    :goto_3c
    goto :goto_52

    .line 303
    :catch_3d
    move-exception p0

    .line 304
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    goto :goto_49

    :cond_45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 305
    const-string p0, "\u63d0\u793a: funcs \u51fd\u6570\u5217\u8868 | vars \u53d8\u91cf | = \u8868\u8fbe\u5f0f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    goto :goto_3c

    .line 313
    :goto_52
    return-void
.end method

.method public static handleExplicit(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 46
    const-string v0, "reset"

    const-string v1, "functions"

    const-string v2, "funcs"

    const/4 v3, 0x0

    if-nez p0, :cond_a

    .line 47
    return v3

    .line 49
    :cond_a
    const/4 v4, 0x1

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_16

    .line 51
    return v3

    .line 54
    :cond_16
    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 55
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_32

    .line 57
    const-string p0, "\u7528\u6cd5: = \u8868\u8fbe\u5f0f   \u6216\u76f4\u63a5\u8f93\u5165  2+3  /  sin(pi/2)"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 58
    return v4

    .line 60
    :cond_32
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->evalAndPrint(Ljava/lang/String;)V

    .line 61
    return v4

    .line 64
    :cond_36
    if-nez p1, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_41
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 66
    array-length v5, p1

    if-nez v5, :cond_49

    .line 67
    return v3

    .line 70
    :cond_49
    aget-object v5, p1, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    aget-object v5, p1, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto/16 :goto_123

    .line 74
    :cond_5b
    const-string v5, "vars"

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 75
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printVars()V

    .line 76
    return v4

    .line 78
    :cond_69
    const-string v5, "creset"

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11f

    aget-object v5, p1, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    array-length v5, p1

    if-ne v5, v4, :cond_80

    goto/16 :goto_11f

    .line 83
    :cond_80
    const-string v5, "calc"

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 84
    array-length v3, p1

    if-ne v3, v4, :cond_91

    .line 85
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    .line 86
    return v4

    .line 88
    :cond_91
    invoke-static {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v3, "off"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_115

    const-string v3, "exit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_115

    const-string v3, "q"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_115

    const-string v3, "on"

    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_115

    const-string v3, "mode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    goto :goto_115

    .line 95
    :cond_be
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 96
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->resetVars()V

    .line 97
    return v4

    .line 99
    :cond_c8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "h"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "?"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    goto :goto_100

    .line 108
    :cond_ed
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_fc

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_fc
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->evalAndPrint(Ljava/lang/String;)V

    .line 110
    return v4

    .line 101
    :cond_100
    :goto_100
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_111

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10d

    goto :goto_111

    .line 104
    :cond_10d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    goto :goto_114

    .line 102
    :cond_111
    :goto_111
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->printHelp()V

    .line 106
    :goto_114
    return v4

    .line 91
    :cond_115
    :goto_115
    const-string p0, "\u5df2\u65e0\u5355\u72ec\u8ba1\u7b97\u5668\u6a21\u5f0f\uff0c\u76f4\u63a5\u8f93\u5165\u8868\u8fbe\u5f0f\u5373\u53ef"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    .line 93
    return v4

    .line 112
    :cond_11e
    return v3

    .line 80
    :cond_11f
    :goto_11f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->resetVars()V

    .line 81
    return v4

    .line 71
    :cond_123
    :goto_123
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->printHelp()V
    :try_end_126
    .catchall {:try_start_b .. :try_end_126} :catchall_127

    .line 72
    return v4

    .line 113
    :catchall_127
    move-exception p0

    .line 114
    const-string p0, "\u8ba1\u7b97\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 115
    return v4
.end method

.method public static handleLine(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 142
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->handleExplicit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 143
    const/4 p0, 0x1

    return p0

    .line 145
    :cond_8
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->tryEval(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasMathSyntax(Ljava/lang/String;)Z
    .registers 8

    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    const/4 v4, 0x1

    if-ge v1, v2, :cond_78

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 194
    const/16 v5, 0x2b

    if-eq v2, v5, :cond_77

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_77

    const/16 v6, 0x2f

    if-eq v2, v6, :cond_77

    const/16 v6, 0x25

    if-eq v2, v6, :cond_77

    const/16 v6, 0x5e

    if-eq v2, v6, :cond_77

    if-eq v2, v3, :cond_77

    const/16 v3, 0x29

    if-eq v2, v3, :cond_77

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_77

    const/16 v3, 0x21

    if-eq v2, v3, :cond_77

    const/16 v3, 0x26

    if-eq v2, v3, :cond_77

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_77

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_77

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_77

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_46

    goto :goto_77

    .line 199
    :cond_46
    if-ne v2, v5, :cond_57

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_57

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_57

    .line 200
    return v4

    .line 203
    :cond_57
    const/16 v3, 0x6a

    if-eq v2, v3, :cond_5f

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_74

    .line 204
    :cond_5f
    if-lez v1, :cond_74

    .line 205
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 206
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6f

    const/16 v3, 0x39

    if-le v2, v3, :cond_73

    :cond_6f
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_74

    .line 207
    :cond_73
    return v4

    .line 192
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    :cond_77
    :goto_77
    return v4

    .line 213
    :cond_78
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 214
    if-lez v1, :cond_93

    .line 215
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_93

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->isIdent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_93

    .line 217
    return v4

    .line 220
    :cond_93
    return v0
.end method

.method private static indexOfAssign(Ljava/lang/String;)I
    .registers 6

    .line 251
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 253
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_42

    .line 254
    if-lez v0, :cond_32

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_42

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_42

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_42

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_32

    .line 256
    goto :goto_42

    .line 258
    :cond_32
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_41

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_41

    .line 259
    goto :goto_42

    .line 261
    :cond_41
    return v0

    .line 251
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_45
    const/4 p0, -0x1

    return p0
.end method

.method private static isFuncName(Ljava/lang/String;)Z
    .registers 5

    .line 287
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->names()[Ljava/lang/String;

    move-result-object v1

    .line 288
    const/4 v2, 0x0

    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_16

    .line 289
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    if-eqz v3, :cond_13

    .line 290
    const/4 p0, 0x1

    return p0

    .line 288
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 294
    :cond_16
    goto :goto_18

    .line 293
    :catchall_17
    move-exception p0

    .line 295
    :goto_18
    return v0
.end method

.method private static isIdent(Ljava/lang/String;)Z
    .registers 11

    .line 268
    const/4 v0, 0x0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_47

    .line 271
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    const/16 v2, 0x5a

    const/16 v3, 0x5f

    const/16 v4, 0x7a

    const/16 v5, 0x41

    const/16 v6, 0x61

    if-lt v1, v6, :cond_1c

    if-le v1, v4, :cond_23

    :cond_1c
    if-lt v1, v5, :cond_20

    if-le v1, v2, :cond_23

    :cond_20
    if-eq v1, v3, :cond_23

    .line 273
    return v0

    .line 275
    :cond_23
    const/4 v1, 0x1

    const/4 v7, 0x1

    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_46

    .line 276
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 277
    if-lt v8, v6, :cond_33

    if-le v8, v4, :cond_42

    :cond_33
    if-lt v8, v5, :cond_37

    if-le v8, v2, :cond_42

    :cond_37
    const/16 v9, 0x30

    if-lt v8, v9, :cond_3f

    const/16 v9, 0x39

    if-le v8, v9, :cond_42

    :cond_3f
    if-ne v8, v3, :cond_45

    .line 278
    nop

    .line 275
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 280
    :cond_45
    return v0

    .line 282
    :cond_46
    return v1

    .line 269
    :cond_47
    :goto_47
    return v0
.end method

.method public static isMode()Z
    .registers 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method private static isNumericLiteral(Ljava/lang/String;)Z
    .registers 6

    .line 225
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 226
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 227
    :cond_16
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 229
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 230
    return v0

    .line 233
    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_81

    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_82

    .line 235
    const/16 v4, 0x30

    if-lt v3, v4, :cond_38

    const/16 v4, 0x39

    if-le v3, v4, :cond_7e

    :cond_38
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x65

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x45

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x78

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x58

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x62

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x42

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x61

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x41

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x43

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x64

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x44

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x66

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x46

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_7d

    .line 240
    goto :goto_7e

    .line 242
    :cond_7d
    return v0

    .line 233
    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 244
    :cond_81
    return v2

    .line 245
    :catchall_82
    move-exception p0

    .line 246
    return v0
.end method

.method public static leaveMode()V
    .registers 0

    .line 32
    return-void
.end method

.method public static looksLikeExpression(Ljava/lang/String;)Z
    .registers 5

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 154
    return v0

    .line 156
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 158
    return v0

    .line 161
    :cond_f
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->indexOfAssign(Ljava/lang/String;)I

    move-result v1

    .line 162
    const/4 v2, 0x1

    if-lez v1, :cond_17

    .line 163
    return v2

    .line 165
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 166
    const/16 v3, 0x30

    if-lt v1, v3, :cond_23

    const/16 v3, 0x39

    if-le v1, v3, :cond_33

    :cond_23
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_33

    const/16 v3, 0x28

    if-eq v1, v3, :cond_33

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_33

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_41

    .line 168
    :cond_33
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->hasMathSyntax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 169
    return v2

    .line 172
    :cond_3a
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->isNumericLiteral(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 173
    return v2

    .line 176
    :cond_41
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->hasMathSyntax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 177
    return v2

    .line 180
    :cond_48
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->isFuncName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 182
    return v2

    .line 185
    :cond_53
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 186
    return v2

    .line 188
    :cond_5c
    return v0
.end method

.method public static printTopicHelp()V
    .registers 1

    .line 329
    const-string v0, "--- \u8ba1\u7b97\uff08\u76f4\u63a5\u5728\u63a7\u5236\u53f0\u8f93\u5165\uff0c\u65e0\u9700 calc \u6a21\u5f0f\uff09---"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 330
    const-string v0, "2+3*4 | (1+2j)*(3-1j) | sin(pi/2)"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 331
    const-string v0, "x=2**10   \u4e0a\u6b21\u7ed3\u679c ans   = hex(255)"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 332
    const-string v0, "funcs  \u51fd\u6570\u5217\u8868   vars  \u53d8\u91cf   reset  \u6e05\u7a7a\u53d8\u91cf"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 333
    const-string v0, "\u652f\u6301\u590d\u6570\u3001\u8fdb\u5236\u3001\u7f16\u89e3\u7801\uff1b\u767d\u540d\u5355\u51fd\u6570\uff0c\u65e0\u811a\u672c\u6267\u884c"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private static printVars()V
    .registers 4

    .line 316
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 317
    const-string v0, "(\u65e0\u53d8\u91cf)"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 318
    return-void

    .line 320
    :cond_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toRepr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 325
    goto :goto_18

    .line 326
    :cond_4d
    return-void
.end method

.method public static resetVars()V
    .registers 1

    .line 35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->VARS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    const-string v0, "\u53d8\u91cf\u5df2\u6e05\u7a7a"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static tryEval(Ljava/lang/String;)Z
    .registers 4

    .line 125
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->looksLikeExpression(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1a

    .line 132
    :cond_16
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->evalAndPrint(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    .line 133
    return v1

    .line 130
    :cond_1a
    :goto_1a
    return v0

    .line 134
    :catchall_1b
    move-exception p0

    .line 135
    const-string p0, "\u8ba1\u7b97\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 136
    return v1
.end method
