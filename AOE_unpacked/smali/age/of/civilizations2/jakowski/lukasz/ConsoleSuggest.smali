.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;
.super Ljava/lang/Object;
.source "ConsoleSuggest.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static closest(Ljava/lang/String;Ljava/util/Collection;I)Ljava/util/List;
    .registers 8

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    if-gtz p2, :cond_c

    goto :goto_39

    .line 139
    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 142
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_29

    .line 145
    goto :goto_1a

    .line 147
    :cond_29
    check-cast v3, Ljava/lang/String;

    .line 148
    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 149
    invoke-static {v1, v2, v3, v4, p2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->insertSorted(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 150
    goto :goto_1a

    .line 151
    :cond_33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_37

    .line 153
    goto :goto_38

    .line 152
    :catchall_37
    move-exception p0

    .line 154
    :goto_38
    return-object v0

    .line 136
    :cond_39
    :goto_39
    return-object v0
.end method

.method public static closestByFirstWord(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .registers 11

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    if-gtz p2, :cond_c

    goto :goto_48

    .line 164
    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    array-length v5, p1

    if-ge v4, v5, :cond_42

    .line 167
    aget-object v5, p1, v4

    .line 168
    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 169
    goto :goto_3f

    .line 171
    :cond_26
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 172
    if-gez v6, :cond_30

    move-object v6, v5

    goto :goto_34

    :cond_30
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 173
    :goto_34
    invoke-static {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 174
    const/4 v7, 0x4

    if-le v6, v7, :cond_3c

    .line 175
    goto :goto_3f

    .line 177
    :cond_3c
    invoke-static {v1, v2, v5, v6, p2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->insertSorted(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 166
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 179
    :cond_42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_46

    .line 181
    goto :goto_47

    .line 180
    :catchall_46
    move-exception p0

    .line 182
    :goto_47
    return-object v0

    .line 161
    :cond_48
    :goto_48
    return-object v0
.end method

.method public static editDistance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 14
    const-string v0, ""

    if-nez p0, :cond_5

    .line 15
    move-object p0, v0

    .line 17
    :cond_5
    if-nez p1, :cond_8

    .line 18
    move-object p1, v0

    .line 20
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 22
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [I

    .line 23
    new-array v2, v2, [I

    .line 24
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-gt v5, v1, :cond_1f

    .line 25
    aput v5, v3, v5

    .line 24
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 27
    :cond_1f
    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_21
    if-gt v6, v0, :cond_57

    .line 28
    aput v6, v2, v4

    .line 29
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 30
    const/4 v8, 0x1

    :goto_2c
    if-gt v8, v1, :cond_4e

    .line 31
    add-int/lit8 v9, v8, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v7, v10, :cond_38

    const/4 v10, 0x0

    goto :goto_39

    :cond_38
    const/4 v10, 0x1

    .line 32
    :goto_39
    aget v11, v3, v8

    add-int/2addr v11, v5

    .line 33
    aget v12, v2, v9

    add-int/2addr v12, v5

    .line 34
    aget v9, v3, v9

    add-int/2addr v9, v10

    .line 35
    if-ge v11, v12, :cond_45

    goto :goto_46

    :cond_45
    move v11, v12

    .line 36
    :goto_46
    if-ge v11, v9, :cond_49

    move v9, v11

    :cond_49
    aput v9, v2, v8

    .line 30
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 38
    :cond_4e
    nop

    .line 39
    nop

    .line 40
    nop

    .line 27
    add-int/lit8 v6, v6, 0x1

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_21

    .line 42
    :cond_57
    aget p0, v3, v1
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_5a

    return p0

    .line 43
    :catchall_5a
    move-exception p0

    .line 44
    const/16 p0, 0x3e7

    return p0
.end method

.method public static fuzzyThreshold(Ljava/lang/String;)I
    .registers 2

    .line 50
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 53
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    .line 54
    const/4 v0, 0x1

    if-ge p0, v0, :cond_13

    const/4 p0, 0x1

    :cond_13
    return p0

    .line 51
    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method private static insertSorted(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 8

    .line 217
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 218
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 219
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p3, v2, :cond_1a

    .line 220
    nop

    .line 221
    move v0, v1

    goto :goto_1d

    .line 218
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 224
    :cond_1d
    :goto_1d
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 225
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p4, :cond_3f

    .line 227
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    :cond_3f
    return-void
.end method

.method public static isTrailingJunk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 88
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_6

    goto :goto_1a

    .line 91
    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ne p1, p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 89
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static tokenCost(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 62
    const/4 v0, -0x1

    if-eqz p0, :cond_2e

    if-nez p1, :cond_6

    goto :goto_2e

    .line 65
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 66
    return v2

    .line 68
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 69
    return v2

    .line 71
    :cond_1b
    invoke-static {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->fuzzyThreshold(Ljava/lang/String;)I

    move-result p1

    .line 73
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->fuzzyThreshold(Ljava/lang/String;)I

    move-result p0

    .line 74
    if-le p0, p1, :cond_2a

    .line 75
    move p1, p0

    .line 77
    :cond_2a
    if-gt v1, p1, :cond_2d

    .line 78
    return v1

    .line 80
    :cond_2d
    return v0

    .line 63
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static uniqueFuzzyToken(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 187
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3f

    .line 190
    :cond_c
    nop

    .line 191
    nop

    .line 192
    nop

    .line 193
    const/4 v1, 0x0

    const/16 v2, 0x3e7

    move-object v4, v0

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    :goto_16
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v1, v5, :cond_39

    .line 194
    aget-object v5, p1, v1

    .line 195
    invoke-static {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->tokenCost(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 196
    if-gez v7, :cond_23

    .line 197
    goto :goto_36

    .line 199
    :cond_23
    invoke-static {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->isTrailingJunk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 200
    goto :goto_36

    .line 202
    :cond_2a
    if-ge v7, v3, :cond_32

    .line 203
    nop

    .line 204
    nop

    .line 205
    move-object v4, v5

    move v3, v7

    const/4 v2, 0x1

    goto :goto_36

    .line 206
    :cond_32
    if-ne v7, v3, :cond_36

    .line 207
    add-int/lit8 v2, v2, 0x1

    .line 193
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 210
    :cond_39
    if-ne v2, v6, :cond_3e

    if-eqz v4, :cond_3e

    .line 211
    return-object v4

    .line 213
    :cond_3e
    return-object v0

    .line 188
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public static uniquePrefix(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 8

    .line 99
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_42

    .line 103
    :cond_c
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    :try_start_f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 107
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 109
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_25

    .line 110
    goto :goto_16

    .line 112
    :cond_25
    check-cast v4, Ljava/lang/String;

    .line 113
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 114
    move-object v2, v4

    .line 116
    :cond_2e
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_40

    if-eqz v5, :cond_37

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    move-object v3, v4

    .line 120
    :cond_37
    goto :goto_16

    .line 121
    :cond_38
    if-eqz v2, :cond_3b

    .line 122
    return-object v2

    .line 124
    :cond_3b
    const/4 p0, 0x1

    if-ne v1, p0, :cond_3f

    .line 125
    return-object v3

    .line 127
    :cond_3f
    return-object v0

    .line 128
    :catchall_40
    move-exception p0

    .line 129
    return-object v0

    .line 100
    :cond_42
    :goto_42
    return-object v0
.end method
