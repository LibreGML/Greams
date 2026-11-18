.class public final Lage/of/civilizations2/jakowski/lukasz/CalcParser;
.super Ljava/lang/Object;
.source "CalcParser.java"


# static fields
.field private static final MAX_DEPTH:I = 0x40

.field private static final MAX_LEN:I = 0x800

.field private static final ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;


# instance fields
.field private assignedName:Ljava/lang/String;

.field private depth:I

.field private pos:I

.field private skipEval:Z

.field private final src:Ljava/lang/String;

.field private final vars:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private enter()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 540
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->depth:I

    .line 541
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->depth:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_d

    .line 544
    return-void

    .line 542
    :cond_d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u8868\u8fbe\u5f0f\u5d4c\u5957\u8fc7\u6df1"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static eval(Ljava/lang/String;Ljava/util/Map;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 30
    const-string v0, "\u7a7a\u8868\u8fbe\u5f0f"

    if-eqz p0, :cond_4e

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-gt v0, v1, :cond_40

    .line 40
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;

    invoke-direct {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseStatement()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 42
    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 43
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_38

    .line 46
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 47
    if-eqz p1, :cond_37

    .line 48
    const-string v0, "ans"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_37
    return-object p0

    .line 44
    :cond_38
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u591a\u4f59\u8f93\u5165"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_40
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u8868\u8fbe\u5f0f\u8fc7\u957f"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_48
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_4e
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isDigit(C)Z
    .registers 2

    .line 599
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isDigitForRadix(CI)Z
    .registers 6

    .line 455
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-lt p0, v2, :cond_10

    const/16 v3, 0x39

    if-gt p0, v3, :cond_10

    .line 456
    sub-int/2addr p0, v2

    if-ge p0, p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 458
    :cond_10
    const/16 v2, 0x61

    if-lt p0, v2, :cond_20

    const/16 v3, 0x7a

    if-gt p0, v3, :cond_20

    .line 459
    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0xa

    if-ge p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 461
    :cond_20
    const/16 v2, 0x41

    if-lt p0, v2, :cond_30

    const/16 v3, 0x5a

    if-gt p0, v3, :cond_30

    .line 462
    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0xa

    if-ge p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 464
    :cond_30
    return v1
.end method

.method private static isKeyword(Ljava/lang/String;)Z
    .registers 2

    .line 624
    const-string v0, "pi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "tau"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "inf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 625
    const-string v0, "nan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 626
    const-string v0, "True"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "False"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 627
    const-string v0, "and"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "or"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "not"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 628
    const-string v0, "j"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "i"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    goto :goto_73

    :cond_71
    const/4 p0, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 p0, 0x1

    .line 624
    :goto_74
    return p0
.end method

.method private static isLetter(C)Z
    .registers 2

    .line 603
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static isVarName(Ljava/lang/String;)Z
    .registers 7

    .line 607
    const/4 v0, 0x0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_12

    goto :goto_40

    .line 610
    :cond_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 611
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isLetter(C)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_21

    if-eq v1, v3, :cond_21

    .line 612
    return v0

    .line 614
    :cond_21
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3f

    .line 615
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 616
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3c

    if-eq v4, v3, :cond_3c

    .line 617
    return v0

    .line 614
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 620
    :cond_3f
    return v1

    .line 608
    :cond_40
    :goto_40
    return v0
.end method

.method private leave()V
    .registers 2

    .line 547
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->depth:I

    .line 548
    return-void
.end method

.method private match(C)Z
    .registers 3

    .line 570
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    if-ne v0, p1, :cond_d

    .line 571
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 572
    return v0

    .line 574
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private matchStr(Ljava/lang/String;)Z
    .registers 4

    .line 578
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 579
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 581
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 582
    const/4 p1, 0x1

    return p1

    .line 584
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private matchWord(Ljava/lang/String;)Z
    .registers 4

    .line 588
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 589
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 590
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->readIdent()Ljava/lang/String;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 592
    const/4 p1, 0x1

    return p1

    .line 594
    :cond_13
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 595
    const/4 p1, 0x0

    return p1
.end method

.method private parseAdd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseMul()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 221
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 222
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseMul()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 224
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->add(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 225
    :goto_1e
    goto :goto_4

    :cond_1f
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 226
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseMul()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 227
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_32

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_36

    :cond_32
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->sub(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 228
    :goto_36
    goto :goto_4

    .line 229
    :cond_37
    return-object v0
.end method

.method private parseAnd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseNot()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 108
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 109
    const-string v1, "and"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 111
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result v1

    if-nez v1, :cond_24

    .line 112
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 114
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseNot()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    .line 115
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 116
    goto :goto_4

    .line 117
    :cond_24
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseNot()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 118
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-nez v2, :cond_2d

    .line 119
    move-object v0, v1

    .line 121
    :cond_2d
    goto :goto_4

    .line 123
    :cond_2e
    return-object v0
.end method

.method private parseBitand()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseShift()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 191
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 192
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2b

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    if-eq v1, v2, :cond_2b

    .line 193
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 194
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseShift()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 195
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_26

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_2a

    :cond_26
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->bitAnd(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 196
    :goto_2a
    goto :goto_4

    .line 197
    :cond_2b
    return-object v0
.end method

.method private parseBitor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitxor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 164
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 165
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_2b

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    if-eq v1, v2, :cond_2b

    .line 166
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 167
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitxor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 168
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_26

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_2a

    :cond_26
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->bitOr(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 169
    :goto_2a
    goto :goto_4

    .line 170
    :cond_2b
    return-object v0
.end method

.method private parseBitxor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitand()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 178
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 179
    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 180
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitand()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 181
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->bitXor(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 182
    :goto_1e
    goto :goto_4

    .line 183
    :cond_1f
    return-object v0
.end method

.method private parseCompare()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 140
    nop

    .line 141
    const-string v1, "=="

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 142
    const/4 v1, 0x0

    goto :goto_45

    .line 143
    :cond_12
    const-string v1, "!="

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 144
    const/4 v1, 0x1

    goto :goto_45

    .line 145
    :cond_1c
    const-string v1, "<="

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 146
    const/4 v1, 0x3

    goto :goto_45

    .line 147
    :cond_26
    const-string v1, ">="

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 148
    const/4 v1, 0x5

    goto :goto_45

    .line 149
    :cond_30
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 150
    const/4 v1, 0x2

    goto :goto_45

    .line 151
    :cond_3a
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 152
    const/4 v1, 0x4

    goto :goto_45

    .line 151
    :cond_44
    const/4 v1, -0x1

    .line 154
    :goto_45
    if-gez v1, :cond_48

    .line 155
    return-object v0

    .line 157
    :cond_48
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseBitor()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v2

    .line 158
    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v3, :cond_53

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_57

    :cond_53
    invoke-static {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmp(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    :goto_57
    return-object v0
.end method

.method private parseMul()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 237
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 238
    const-string v1, "//"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 239
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 240
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->floordiv(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 241
    :goto_1e
    goto :goto_4

    :cond_1f
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 242
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 243
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_32

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_36

    :cond_32
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->mul(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 244
    :goto_36
    goto :goto_4

    :cond_37
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 245
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 246
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_4a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_4e

    :cond_4a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->div(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 247
    :goto_4e
    goto :goto_4

    :cond_4f
    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 248
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 249
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_62

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_66

    :cond_62
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->mod(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 250
    :goto_66
    goto :goto_4

    .line 251
    :cond_67
    return-object v0
.end method

.method private parseNot()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 130
    const-string v0, "not"

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchWord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 131
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseNot()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_16

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_20

    :cond_16
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    :goto_20
    return-object v0

    .line 134
    :cond_21
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseCompare()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0
.end method

.method private parseOr()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAnd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 85
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 86
    const-string v1, "or"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 88
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 89
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 91
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAnd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    .line 92
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    .line 93
    goto :goto_4

    .line 94
    :cond_24
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAnd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 95
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-nez v2, :cond_2d

    .line 96
    move-object v0, v1

    .line 98
    :cond_2d
    goto :goto_4

    .line 100
    :cond_2e
    return-object v0
.end method

.method private parsePower()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parsePrimary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 274
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 275
    const-string v1, "**"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 276
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 277
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->pow(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 279
    :cond_1f
    return-object v0
.end method

.method private parsePrimary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->enter()V

    .line 285
    :try_start_3
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 286
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    .line 287
    const/16 v1, 0x28

    const/16 v2, 0x29

    if-ne v0, v1, :cond_30

    .line 288
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 289
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseOr()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 290
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 291
    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_102

    if-eqz v1, :cond_28

    .line 294
    nop

    .line 339
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 294
    return-object v0

    .line 292
    :cond_28
    :try_start_28
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u7f3a\u5c11 )"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_30
    const/16 v3, 0x22

    if-eq v0, v3, :cond_ef

    const/16 v3, 0x27

    if-ne v0, v3, :cond_3a

    goto/16 :goto_ef

    .line 300
    :cond_3a
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_e1

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_50

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_50

    goto/16 :goto_e1

    .line 304
    :cond_50
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->readIdent()Ljava/lang/String;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_d9

    .line 308
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 309
    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 312
    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 314
    :goto_6d
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseOr()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 316
    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 317
    goto :goto_a0

    .line 319
    :cond_7e
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 322
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 323
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v3

    if-eq v3, v2, :cond_90

    goto :goto_6d

    .line 324
    :cond_90
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u591a\u4f59\u7684\u9017\u53f7"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_98
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u7f3a\u5c11 , \u6216 )"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_a0
    :goto_a0
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_aa

    .line 329
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    :try_end_a6
    .catchall {:try_start_28 .. :try_end_a6} :catchall_102

    .line 339
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 329
    return-object v0

    .line 331
    :cond_aa
    :try_start_aa
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    .line 332
    const/4 v3, 0x0

    :goto_b1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c2

    .line 333
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    aput-object v4, v2, v3

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 335
    :cond_c2
    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->call(Ljava/lang/String;[Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_102

    .line 339
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 335
    return-object v0

    .line 337
    :cond_ca
    :try_start_ca
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_d1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_d5

    :cond_d1
    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->resolveName(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_102

    .line 339
    :goto_d5
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 337
    return-object v0

    .line 306
    :cond_d9
    :try_start_d9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u610f\u5916\u5b57\u7b26"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_e1
    :goto_e1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->readNumber()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 302
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_eb

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    :try_end_eb
    .catchall {:try_start_d9 .. :try_end_eb} :catchall_102

    .line 339
    :cond_eb
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 302
    return-object v0

    .line 297
    :cond_ef
    :goto_ef
    :try_start_ef
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_fa

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_fe

    :cond_fa
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0
    :try_end_fe
    .catchall {:try_start_ef .. :try_end_fe} :catchall_102

    .line 339
    :goto_fe
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 298
    return-object v0

    .line 339
    :catchall_102
    move-exception v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->leave()V

    .line 340
    throw v0
.end method

.method private parseShift()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAdd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 205
    :goto_4
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 206
    const-string v1, "<<"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 207
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAdd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 208
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_1a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->shiftLeft(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 209
    :goto_1e
    goto :goto_4

    :cond_1f
    const-string v1, ">>"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->matchStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 210
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseAdd()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v1

    .line 211
    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v2, :cond_32

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_36

    :cond_32
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->shiftRight(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 212
    :goto_36
    goto :goto_4

    .line 213
    :cond_37
    return-object v0
.end method

.method private parseStatement()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 55
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 56
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->readIdent()Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_6b

    .line 58
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 60
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_6b

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v2

    if-eq v2, v3, :cond_6b

    .line 61
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 62
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isVarName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 65
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 68
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 71
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseOr()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 72
    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->assignedName:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v0

    .line 69
    :cond_42
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u65e0\u6cd5\u8d4b\u503c"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u80fd\u8d4b\u503c\u7ed9 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_63
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u975e\u6cd5\u53d8\u91cf\u540d"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_6b
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->assignedName:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseOr()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0
.end method

.method private parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 258
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 259
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 261
    :cond_10
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 262
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 263
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_23

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_27

    :cond_23
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->neg(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    :goto_27
    return-object v0

    .line 265
    :cond_28
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->match(C)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 266
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parseUnary()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 267
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipEval:Z

    if-eqz v1, :cond_3b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->ZERO:Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    goto :goto_3f

    :cond_3b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->bitNot(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    :goto_3f
    return-object v0

    .line 269
    :cond_40
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->parsePower()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0
.end method

.method private peek()C
    .registers 3

    .line 562
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private peek2()C
    .registers 3

    .line 566
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private readIdent()Ljava/lang/String;
    .registers 5

    .line 519
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->skipWs()V

    .line 520
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_f

    .line 521
    return-object v2

    .line 523
    :cond_f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 524
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isLetter(C)Z

    move-result v1

    const/16 v3, 0x5f

    if-nez v1, :cond_22

    if-eq v0, v3, :cond_22

    .line 525
    return-object v2

    .line 527
    :cond_22
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 528
    :goto_28
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 529
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 530
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_48

    if-ne v1, v3, :cond_4f

    .line 531
    :cond_48
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    goto :goto_28

    .line 536
    :cond_4f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readNumber()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 375
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 376
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v2, 0x30

    const-wide/16 v3, 0x0

    const/16 v5, 0x69

    const/16 v6, 0x6a

    const/16 v7, 0x5f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v2, :cond_c9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    const/16 v2, 0x42

    const/16 v10, 0x62

    const/16 v11, 0x58

    const/16 v12, 0x78

    if-eq v1, v12, :cond_44

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    if-eq v1, v11, :cond_44

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    if-eq v1, v10, :cond_44

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    if-eq v1, v2, :cond_44

    .line 377
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    const/16 v13, 0x6f

    if-eq v1, v13, :cond_44

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v1

    const/16 v13, 0x4f

    if-ne v1, v13, :cond_c9

    .line 378
    :cond_44
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek2()C

    move-result v0

    .line 379
    const/4 v1, 0x2

    if-eq v0, v12, :cond_5a

    if-ne v0, v11, :cond_4e

    goto :goto_5a

    :cond_4e
    if-eq v0, v10, :cond_58

    if-ne v0, v2, :cond_53

    goto :goto_58

    :cond_53
    const/16 v0, 0x8

    const/16 v2, 0x8

    goto :goto_5e

    :cond_58
    :goto_58
    const/4 v2, 0x2

    goto :goto_5e

    :cond_5a
    :goto_5a
    const/16 v0, 0x10

    const/16 v2, 0x10

    .line 380
    :goto_5e
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 381
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 382
    :goto_65
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigitForRadix(CI)Z

    move-result v0

    if-nez v0, :cond_c3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    if-ne v0, v7, :cond_76

    goto :goto_c3

    .line 385
    :cond_76
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    if-eq v0, v1, :cond_bb

    .line 388
    nop

    .line 389
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    if-eq v0, v6, :cond_87

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v0

    if-ne v0, v5, :cond_8e

    .line 390
    :cond_87
    nop

    .line 391
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    const/4 v8, 0x1

    .line 393
    :cond_8e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    if-eqz v8, :cond_95

    sub-int/2addr v5, v9

    :cond_95
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->stripUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :try_start_9d
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 396
    if-eqz v8, :cond_ad

    .line 397
    invoke-virtual {v1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 399
    :cond_ad
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_b1} :catch_b2

    return-object v0

    .line 400
    :catch_b2
    move-exception v0

    .line 401
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u574f\u7684\u6570\u5b57"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_bb
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u574f\u7684\u8fdb\u5236\u5b57\u9762\u91cf"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_c3
    :goto_c3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    goto :goto_65

    .line 404
    :cond_c9
    nop

    .line 405
    :goto_ca
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1ef

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    if-ne v1, v7, :cond_dc

    goto/16 :goto_1ef

    .line 408
    :cond_dc
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_103

    .line 409
    nop

    .line 410
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 411
    :goto_ea
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_fd

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    if-ne v1, v7, :cond_fb

    goto :goto_fd

    :cond_fb
    const/4 v1, 0x1

    goto :goto_104

    .line 412
    :cond_fd
    :goto_fd
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    goto :goto_ea

    .line 408
    :cond_103
    const/4 v1, 0x0

    .line 415
    :goto_104
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v10

    const/16 v11, 0x45

    const/16 v12, 0x65

    if-eq v10, v12, :cond_114

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v10

    if-ne v10, v11, :cond_14c

    .line 416
    :cond_114
    nop

    .line 417
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 418
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v10, 0x2b

    if-eq v1, v10, :cond_12a

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_12f

    .line 419
    :cond_12a
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 421
    :cond_12f
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 424
    :goto_139
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1e0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v1

    if-ne v1, v7, :cond_14b

    goto/16 :goto_1e0

    :cond_14b
    const/4 v1, 0x1

    .line 428
    :cond_14c
    nop

    .line 429
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v7

    if-eq v7, v6, :cond_15c

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->peek()C

    move-result v6

    if-ne v6, v5, :cond_15a

    goto :goto_15c

    :cond_15a
    const/4 v5, 0x0

    goto :goto_163

    .line 430
    :cond_15c
    :goto_15c
    nop

    .line 431
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v5, v9

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    const/4 v5, 0x1

    .line 433
    :goto_163
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    if-eqz v5, :cond_186

    const-string v6, "j"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17d

    const-string v6, "i"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_186

    .line 435
    :cond_17d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_186
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->stripUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_192

    .line 439
    const-string v0, "0"

    .line 442
    :cond_192
    if-eqz v5, :cond_19f

    .line 443
    :try_start_194
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 449
    :catch_19d
    move-exception v1

    goto :goto_1c7

    .line 445
    :cond_19f
    if-nez v1, :cond_1be

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1be

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1be

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1b4

    goto :goto_1be

    .line 448
    :cond_1b4
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 446
    :cond_1be
    :goto_1be
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0
    :try_end_1c6
    .catch Ljava/lang/NumberFormatException; {:try_start_194 .. :try_end_1c6} :catch_19d

    return-object v0

    .line 450
    :goto_1c7
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u574f\u7684\u6570\u5b57: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_1e0
    :goto_1e0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    goto/16 :goto_139

    .line 422
    :cond_1e7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u574f\u7684\u6307\u6570"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1ef
    :goto_1ef
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/2addr v1, v9

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    goto/16 :goto_ca
.end method

.method private readString()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    :goto_11
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\u672a\u7ed3\u675f\u7684\u5b57\u7b26\u4e32"

    if-ge v2, v3, :cond_9c

    .line 485
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 486
    const-string v3, "\u5b57\u7b26\u4e32\u8fc7\u957f"

    const/high16 v5, 0x10000

    if-ne v2, v0, :cond_40

    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt v0, v5, :cond_3a

    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 488
    :cond_3a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_40
    const/16 v6, 0x5c

    if-ne v2, v6, :cond_8b

    .line 493
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_85

    .line 496
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 497
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_64

    .line 498
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 499
    :cond_64
    const/16 v4, 0x72

    if-ne v2, v4, :cond_6e

    .line 500
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 501
    :cond_6e
    const/16 v4, 0x74

    if-ne v2, v4, :cond_78

    .line 502
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 503
    :cond_78
    const/16 v4, 0x30

    if-ne v2, v4, :cond_81

    .line 504
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 506
    :cond_81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :goto_84
    goto :goto_8e

    .line 494
    :cond_85
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    :goto_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v2, v5, :cond_96

    .line 514
    goto/16 :goto_11

    .line 512
    :cond_96
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_9c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveName(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 344
    const-string v0, "pi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 345
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 347
    :cond_12
    const-string v0, "e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 348
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 350
    :cond_24
    const-string v0, "tau"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 351
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 353
    :cond_36
    const-string v0, "inf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 354
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 356
    :cond_45
    const-string v0, "nan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 357
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 359
    :cond_54
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string v0, "True"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_c4

    .line 362
    :cond_65
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    const-string v0, "False"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_be

    .line 365
    :cond_76
    const-string v0, "j"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "i"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_b5

    .line 368
    :cond_87
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 369
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->vars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    return-object p1

    .line 371
    :cond_9c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u5b9a\u4e49: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_b5
    :goto_b5
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 363
    :cond_be
    :goto_be
    const/4 p1, 0x0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1

    .line 360
    :cond_c4
    :goto_c4
    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    return-object p1
.end method

.method private skipWs()V
    .registers 3

    .line 551
    nop

    :goto_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 552
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->src:Ljava/lang/String;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 553
    const/16 v1, 0x20

    if-eq v0, v1, :cond_23

    const/16 v1, 0x9

    if-eq v0, v1, :cond_23

    const/16 v1, 0xd

    if-eq v0, v1, :cond_23

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2a

    .line 554
    :cond_23
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcParser;->pos:I

    .line 558
    goto :goto_1

    .line 559
    :cond_2a
    return-void
.end method

.method private static stripUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 468
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 469
    return-object p0

    .line 471
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 472
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 473
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 474
    if-eq v3, v0, :cond_22

    .line 475
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 478
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
