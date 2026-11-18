.class public final Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;
.super Ljava/lang/Object;
.source "CivSelectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;
    }
.end annotation


# static fields
.field private static cachedCount:I

.field private static cachedFirstChars:[C

.field private static cachedInitials:[Ljava/lang/String;

.field private static cachedNameLower:[Ljava/lang/String;

.field private static cachedNames:[Ljava/lang/String;

.field private static cachedPinyin:[Ljava/lang/String;

.field private static cachedTagKey:[Ljava/lang/String;

.field private static cachedTags:[Ljava/lang/String;

.field private static editorStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->editorStamp:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendResolved([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    if-nez p0, :cond_3

    .line 413
    return-void

    .line 415
    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    .line 416
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_3d

    .line 417
    aget-object v2, p0, v1

    .line 418
    if-nez v2, :cond_e

    .line 419
    goto :goto_3a

    .line 421
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 423
    goto :goto_3a

    .line 427
    :cond_1f
    if-eqz v0, :cond_29

    :try_start_21
    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_26

    goto :goto_2a

    .line 428
    :catchall_26
    move-exception v3

    .line 429
    move-object v3, v2

    goto :goto_2b

    .line 427
    :cond_29
    move-object v3, v2

    .line 430
    :goto_2a
    nop

    .line 431
    :goto_2b
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_34

    .line 432
    :cond_33
    move-object v3, v2

    .line 434
    :cond_34
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 437
    :cond_3d
    return-void
.end method

.method private static buildPlacedSet()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 292
    :try_start_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    .line 293
    if-nez v1, :cond_a

    .line 294
    return-object v0

    .line 296
    :cond_a
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    .line 297
    const/4 v3, 0x1

    :goto_f
    if-ge v3, v2, :cond_23

    .line 298
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    .line 299
    if-eqz v4, :cond_20

    .line 300
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    .line 301
    if-eqz v4, :cond_20

    .line 302
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    .line 297
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 307
    :cond_23
    goto :goto_25

    .line 306
    :catchall_24
    move-exception v1

    .line 308
    :goto_25
    return-object v0
.end method

.method public static cachedSize()I
    .registers 1

    .line 116
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->ensureLoaded()V

    .line 117
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    return v0
.end method

.method private static declared-synchronized ensureLoaded()V
    .registers 14

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;

    monitor-enter v0

    .line 312
    :try_start_3
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->readEditorStamp()J

    move-result-wide v1

    .line 313
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    if-eqz v3, :cond_13

    sget-wide v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->editorStamp:J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f4

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    .line 314
    monitor-exit v0

    return-void

    .line 316
    :cond_13
    :try_start_13
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xaf0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 320
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->loadBaseTags()[Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->loadEditorTags()[Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-static {v6, v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->appendResolved([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 323
    invoke-static {v7, v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->appendResolved([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 325
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->loadPinyinIndex()Ljava/util/HashMap;

    move-result-object v4

    .line 327
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_41
    if-ge v9, v6, :cond_4d

    .line 330
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    .line 332
    :cond_4d
    nop

    .line 333
    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;

    invoke-direct {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    .line 350
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    .line 351
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNameLower:[Ljava/lang/String;

    .line 352
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    .line 353
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    .line 354
    new-array v9, v6, [Ljava/lang/String;

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    .line 355
    new-array v9, v6, [C

    sput-object v9, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedFirstChars:[C

    .line 356
    const/4 v9, 0x0

    :goto_73
    if-ge v9, v6, :cond_ee

    .line 357
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 358
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 359
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 360
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    aput-object v11, v12, v9

    .line 361
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    aput-object v10, v12, v9

    .line 362
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNameLower:[Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 363
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedFirstChars:[C

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_aa

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_ac

    :cond_aa
    const/16 v10, 0x3f

    :goto_ac
    aput-char v10, v12, v9

    .line 364
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 365
    if-eqz v10, :cond_cb

    .line 366
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    aget-object v12, v10, v8

    aput-object v12, v11, v9

    .line 367
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v12, v10, v12

    aput-object v12, v11, v9

    .line 368
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v10, v10, v12

    aput-object v10, v11, v9

    goto :goto_eb

    .line 370
    :cond_cb
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNameLower:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->onlyAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v9

    .line 371
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v10, v9

    .line 372
    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->onlyAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    .line 356
    :goto_eb
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 375
    :cond_ee
    sput v6, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    .line 376
    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->editorStamp:J
    :try_end_f2
    .catchall {:try_start_13 .. :try_end_f2} :catchall_f4

    .line 377
    monitor-exit v0

    return-void

    .line 311
    :catchall_f4
    move-exception v1

    :try_start_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v1
.end method

.method public static fillAlphabet(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->ensureLoaded()V

    .line 100
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 101
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->buildPlacedSet()Ljava/util/HashSet;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 103
    const/4 v2, 0x0

    :goto_10
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    if-ge v2, v3, :cond_33

    .line 104
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 105
    goto :goto_30

    .line 107
    :cond_1f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedFirstChars:[C

    aget-char v3, v3, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 109
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 112
    :cond_33
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method public static fillSortedLists(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->ensureLoaded()V

    .line 47
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 50
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->buildPlacedSet()Ljava/util/HashSet;

    move-result-object v0

    .line 51
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    .line 52
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 53
    :goto_1c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    .line 54
    if-nez v4, :cond_29

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    .line 55
    :goto_2a
    if-eqz v2, :cond_31

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    .line 57
    :goto_32
    if-eqz v4, :cond_89

    .line 58
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->tokenize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    const/4 v4, 0x0

    :goto_40
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    if-ge v4, v5, :cond_60

    .line 61
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 62
    goto :goto_5d

    .line 64
    :cond_4f
    invoke-static {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->scoreMatch(I[Ljava/lang/String;)I

    move-result v5

    .line 65
    if-lez v5, :cond_5d

    .line 66
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;

    invoke-direct {v6, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 69
    :cond_60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$1;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    nop

    :goto_69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_88

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->index:I

    .line 79
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 82
    :cond_88
    return-void

    .line 85
    :cond_89
    nop

    :goto_8a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    if-ge v3, v1, :cond_af

    .line 86
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 88
    goto :goto_ac

    .line 90
    :cond_99
    if-eqz v2, :cond_a2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedFirstChars:[C

    aget-char v4, v4, v3

    if-eq v4, v5, :cond_a2

    .line 91
    goto :goto_ac

    .line 93
    :cond_a2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 96
    :cond_af
    return-void
.end method

.method public static invalidate()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTags:[Ljava/lang/String;

    .line 35
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    .line 36
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNameLower:[Ljava/lang/String;

    .line 37
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    .line 38
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    .line 39
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    .line 40
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedFirstChars:[C

    .line 41
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedCount:I

    .line 42
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->editorStamp:J

    .line 43
    return-void
.end method

.method private static isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 263
    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3d

    .line 266
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_17

    .line 267
    return v0

    .line 269
    :cond_17
    nop

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 271
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_32

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 270
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 275
    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v2, p0, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    .line 264
    :cond_3d
    :goto_3d
    return v0
.end method

.method private static loadBaseTags()[Ljava/lang/String;
    .registers 6

    .line 441
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 442
    const-string v1, "game/civilizations/"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    if-eqz v1, :cond_3c

    .line 445
    const/4 v3, 0x0

    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 446
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 447
    if-nez v4, :cond_22

    .line 448
    goto :goto_39

    .line 450
    :cond_22
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    const-string v5, "Age_of_Civilizations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    const-string v5, "CivSearchIndex.txt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 452
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 456
    :cond_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 458
    :cond_49
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->splitTags(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    return-object v0

    .line 460
    :catchall_5a
    move-exception v1

    .line 461
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static loadEditorTags()[Ljava/lang/String;
    .registers 3

    .line 468
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_5} :catch_23
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    const-string v2, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v1, :cond_10

    .line 469
    :try_start_9
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_16

    .line 471
    :cond_10
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 473
    :goto_16
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->splitTags(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_1e} :catch_23
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    return-object v0

    .line 476
    :catchall_1f
    move-exception v1

    .line 477
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 474
    :catch_23
    move-exception v1

    .line 475
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static loadPinyinIndex()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 382
    :try_start_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations/CivSearchIndex.txt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_8e

    .line 386
    :cond_19
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_28

    goto :goto_8d

    .line 390
    :cond_28
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_30
    array-length v4, v1

    if-ge v3, v4, :cond_8c

    .line 392
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_48

    .line 394
    goto :goto_89

    .line 396
    :cond_48
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 397
    array-length v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_53

    .line 398
    goto :goto_89

    .line 400
    :cond_53
    aget-object v5, v4, v2

    .line 401
    const/4 v7, 0x1

    aget-object v8, v4, v7

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 402
    const/4 v9, 0x2

    aget-object v10, v4, v9

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 403
    array-length v11, v4

    const/4 v12, 0x4

    if-lt v11, v12, :cond_74

    aget-object v4, v4, v6

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7e

    :cond_74
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->onlyAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    :goto_7e
    new-array v6, v6, [Ljava/lang/String;

    aput-object v8, v6, v2

    aput-object v10, v6, v7

    aput-object v4, v6, v9

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_8f

    .line 391
    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 407
    :cond_8c
    goto :goto_90

    .line 388
    :cond_8d
    :goto_8d
    return-object v0

    .line 384
    :cond_8e
    :goto_8e
    return-object v0

    .line 406
    :catchall_8f
    move-exception v1

    .line 408
    :goto_90
    return-object v0
.end method

.method private static onlyAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 282
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x7a

    if-le v2, v3, :cond_24

    :cond_1c
    const/16 v3, 0x30

    if-lt v2, v3, :cond_27

    const/16 v3, 0x39

    if-gt v2, v3, :cond_27

    .line 283
    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 286
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readEditorStamp()J
    .registers 2

    .line 484
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_23

    const-string v1, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v0, :cond_f

    .line 485
    :try_start_8
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_15

    .line 487
    :cond_f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 489
    :goto_15
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 490
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_23

    return-wide v0

    .line 493
    :cond_22
    goto :goto_24

    .line 492
    :catchall_23
    move-exception v0

    .line 494
    :goto_24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static scoreMatch(I[Ljava/lang/String;)I
    .registers 6

    .line 150
    if-eqz p1, :cond_1b

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1b

    .line 153
    :cond_6
    nop

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    .line 155
    aget-object v3, p1, v1

    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->scoreToken(ILjava/lang/String;)I

    move-result v3

    .line 156
    if-gtz v3, :cond_16

    .line 157
    return v0

    .line 159
    :cond_16
    add-int/2addr v2, v3

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 161
    :cond_1a
    return v2

    .line 151
    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private static scoreToken(ILjava/lang/String;)I
    .registers 8

    .line 165
    if-eqz p1, :cond_f3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_f3

    .line 168
    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNameLower:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 169
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 170
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    aget-object v2, v2, p0

    .line 171
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    aget-object v3, v3, p0

    .line 172
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedNames:[Ljava/lang/String;

    aget-object v4, v4, p0

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto/16 :goto_f0

    .line 178
    :cond_2c
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ed

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto/16 :goto_ed

    .line 181
    :cond_3a
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_ea

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_48

    goto/16 :goto_ea

    .line 186
    :cond_48
    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6b

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 188
    const/16 p0, 0x3b6

    return p0

    .line 190
    :cond_59
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 191
    const/16 p0, 0x352

    return p0

    .line 193
    :cond_62
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6b

    .line 194
    const/16 p0, 0x2bc

    return p0

    .line 199
    :cond_6b
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_97

    .line 200
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 201
    const/16 p0, 0x398

    return p0

    .line 203
    :cond_7c
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 204
    const/16 p0, 0x334

    return p0

    .line 206
    :cond_85
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8e

    .line 207
    const/16 p0, 0x2d0

    return p0

    .line 209
    :cond_8e
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 210
    const/16 p0, 0x208

    return p0

    .line 215
    :cond_97
    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c3

    .line 216
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 217
    const/16 p0, 0x370

    return p0

    .line 219
    :cond_a8
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 220
    const/16 p0, 0x30c

    return p0

    .line 222
    :cond_b1
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_ba

    .line 223
    const/16 p0, 0x2a8

    return p0

    .line 225
    :cond_ba
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 226
    const/16 p0, 0x1e0

    return p0

    .line 231
    :cond_c3
    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-static {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    goto :goto_e7

    .line 236
    :cond_d0
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->onlyAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e5

    .line 238
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->scoreTokenAscii(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 240
    :cond_e5
    const/4 p0, 0x0

    return p0

    .line 232
    :cond_e7
    :goto_e7
    const/16 p0, 0x190

    return p0

    .line 182
    :cond_ea
    :goto_ea
    const/16 p0, 0x320

    return p0

    .line 179
    :cond_ed
    :goto_ed
    const/16 p0, 0x384

    return p0

    .line 176
    :cond_f0
    :goto_f0
    const/16 p0, 0x3e8

    return p0

    .line 166
    :cond_f3
    :goto_f3
    const/4 p0, 0x1

    return p0
.end method

.method private static scoreTokenAscii(ILjava/lang/String;)I
    .registers 5

    .line 244
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedTagKey:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 245
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedPinyin:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 246
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->cachedInitials:[Ljava/lang/String;

    aget-object p0, v2, p0

    .line 247
    const/16 v2, 0x28a

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 248
    return v2

    .line 250
    :cond_17
    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_20

    .line 251
    return v2

    .line 253
    :cond_20
    if-eqz p0, :cond_37

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_37

    .line 254
    :cond_34
    const/16 p0, 0x280

    return p0

    .line 256
    :cond_37
    if-eqz v1, :cond_42

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->isSubsequence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 257
    const/16 p0, 0x1a4

    return p0

    .line 259
    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method private static splitTags(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 498
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 501
    :cond_9
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 499
    :cond_10
    :goto_10
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 131
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 133
    const/16 v0, 0x3000

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff0c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    :goto_37
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 137
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4e

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_4e
    goto :goto_37

    .line 142
    :cond_4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5e

    .line 143
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
