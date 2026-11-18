.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;
.super Ljava/lang/Object;
.source "ConsoleHistory.java"


# static fields
.field public static final CAP:I = 0x64

.field private static final FAV_CAP:I = 0x28

.field private static final favs:Ljava/util/List;

.field private static final ring:[Ljava/lang/String;

.field private static size:I

.field private static start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->ring:[Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static expand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 87
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 88
    return-object v0

    .line 90
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string v1, "!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 92
    return-object p0

    .line 95
    :cond_11
    :try_start_11
    const-string v1, "!!"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 96
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->last()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1e
    const-string v1, "!-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 99
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 100
    if-nez p0, :cond_32

    .line 101
    return-object v0

    .line 103
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->relative(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_3b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_47

    .line 107
    return-object v0

    .line 109
    :cond_47
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_56

    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_56
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_11 .. :try_end_5a} :catchall_5b

    return-object p0

    .line 114
    :catchall_5b
    move-exception p0

    .line 115
    return-object v0
.end method

.method public static favAdd(Ljava/lang/String;)V
    .registers 3

    .line 134
    if-nez p0, :cond_3

    .line 135
    return-void

    .line 137
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 139
    return-void

    .line 142
    :cond_e
    :try_start_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1e

    .line 143
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u85cf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_4a

    .line 149
    goto :goto_50

    .line 147
    :catchall_4a
    move-exception p0

    .line 148
    const-string p0, "\u6536\u85cf\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 150
    :goto_50
    return-void
.end method

.method public static favGet(I)Ljava/lang/String;
    .registers 4

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_19

    :try_start_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p0, v2, :cond_d

    goto :goto_19

    .line 157
    :cond_d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    sub-int/2addr p0, v1

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_17

    return-object p0

    .line 158
    :catchall_17
    move-exception p0

    .line 159
    return-object v0

    .line 155
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static favPrint()V
    .registers 4

    .line 169
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 170
    const-string v0, "\u6536\u85cf\u4e3a\u7a7a  fav add \u547d\u4ee4"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 171
    return-void

    .line 173
    :cond_e
    const/4 v0, 0x0

    :goto_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3c

    .line 173
    move v0, v2

    goto :goto_f

    .line 178
    :cond_3b
    goto :goto_42

    .line 176
    :catchall_3c
    move-exception v0

    .line 177
    const-string v0, "\u6536\u85cf\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 179
    :goto_42
    return-void
.end method

.method public static favSize()I
    .registers 1

    .line 164
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static get(I)Ljava/lang/String;
    .registers 5

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_16

    :try_start_4
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    if-le p0, v2, :cond_9

    goto :goto_16

    .line 48
    :cond_9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->ring:[Ljava/lang/String;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->start:I

    add-int/2addr v3, p0

    sub-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x64

    aget-object p0, v2, v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-object p0

    .line 49
    :catchall_14
    move-exception p0

    .line 50
    return-object v0

    .line 46
    :cond_16
    :goto_16
    return-object v0
.end method

.method public static last()Ljava/lang/String;
    .registers 1

    .line 55
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 67
    const/4 v0, 0x0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_22

    .line 71
    :cond_a
    :try_start_a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    :goto_c
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1f

    .line 72
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1c

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_20

    if-eqz v3, :cond_1c

    .line 74
    return-object v2

    .line 71
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 78
    :cond_1f
    goto :goto_21

    .line 77
    :catchall_20
    move-exception p0

    .line 79
    :goto_21
    return-object v0

    .line 68
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static print()V
    .registers 3

    .line 121
    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    if-nez v0, :cond_a

    .line 122
    const-string v0, "\u5386\u53f2\u4e3a\u7a7a"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_a
    const/4 v0, 0x1

    :goto_b
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    if-gt v0, v1, :cond_30

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_31

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 130
    :cond_30
    goto :goto_37

    .line 128
    :catchall_31
    move-exception v0

    .line 129
    const-string v0, "\u5386\u53f2\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 131
    :goto_37
    return-void
.end method

.method public static push(Ljava/lang/String;)V
    .registers 5

    .line 20
    if-nez p0, :cond_3

    .line 21
    return-void

    .line 23
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 25
    return-void

    .line 28
    :cond_e
    :try_start_e
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_21

    .line 29
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->start:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->start:I

    .line 30
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    .line 32
    :cond_21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->ring:[Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->start:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    add-int/2addr v2, v3

    rem-int/2addr v2, v1

    aput-object p0, v0, v2

    .line 33
    sget p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_32

    .line 35
    goto :goto_33

    .line 34
    :catchall_32
    move-exception p0

    .line 36
    :goto_33
    return-void
.end method

.method public static relative(I)Ljava/lang/String;
    .registers 3

    .line 60
    const/4 v0, 0x1

    if-ge p0, v0, :cond_5

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static size()I
    .registers 1

    .line 39
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size:I

    return v0
.end method
