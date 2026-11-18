.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;
.super Ljava/lang/Object;
.source "ConsoleEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;
    }
.end annotation


# static fields
.field static final HELP:Ljava/util/Map;

.field private static NAME_CACHE:[Ljava/lang/String;

.field private static depth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    if-nez p1, :cond_e

    const-string p1, ""

    :cond_e
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 p0, 0x0

    sput-object p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;

    .line 25
    :cond_14
    return-void
.end method

.method public static closeConsole()V
    .registers 2

    .line 406
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->restore()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_26

    .line 408
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_7

    .line 410
    goto :goto_8

    .line 409
    :catchall_7
    move-exception v1

    .line 411
    :goto_8
    :try_start_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v1, :cond_d

    .line 412
    return-void

    .line 414
    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 415
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction_Console(Z)V

    .line 417
    :cond_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_25

    .line 419
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_26

    .line 422
    :cond_25
    goto :goto_27

    .line 421
    :catchall_26
    move-exception v0

    .line 423
    :goto_27
    return-void
.end method

.method public static execute(Ljava/lang/String;)V
    .registers 3

    .line 162
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_c

    .line 163
    const-string p0, "\u811a\u672c\u5d4c\u5957\u8fc7\u6df1"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 164
    return-void

    .line 166
    :cond_c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    .line 168
    :try_start_12
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->runLine(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    .line 176
    :goto_15
    sget p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    .line 177
    goto :goto_41

    .line 169
    :catchall_1c
    move-exception p0

    .line 171
    :try_start_1d
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 173
    goto :goto_22

    .line 172
    :catchall_21
    move-exception v0

    .line 174
    :goto_22
    :try_start_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6267\u884c\u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_42

    goto :goto_15

    .line 178
    :goto_41
    return-void

    .line 176
    :catchall_42
    move-exception p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->depth:I

    .line 177
    throw p0
.end method

.method static fuzzyCandidates([Ljava/lang/String;I)Ljava/util/List;
    .registers 15

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    if-eqz p0, :cond_9f

    array-length v1, p0

    if-eqz v1, :cond_9f

    if-gtz p1, :cond_e

    goto/16 :goto_9f

    .line 579
    :cond_e
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v3

    .line 582
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1e
    array-length v6, v3

    if-ge v5, v6, :cond_99

    .line 583
    aget-object v6, v3, v5

    .line 584
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 585
    array-length v8, v7

    if-eqz v8, :cond_96

    array-length v8, p0

    array-length v9, v7

    if-ge v8, v9, :cond_30

    .line 586
    goto/16 :goto_96

    .line 588
    :cond_30
    nop

    .line 589
    nop

    .line 590
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_34
    array-length v10, v7

    const/4 v11, 0x1

    if-ge v8, v10, :cond_55

    .line 591
    aget-object v10, v7, v8

    aget-object v12, p0, v8

    invoke-static {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->tokenCost(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 592
    if-gez v10, :cond_50

    .line 594
    aget-object v10, v7, v8

    aget-object v12, p0, v8

    invoke-static {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->isTrailingJunk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 595
    goto :goto_51

    .line 597
    :cond_4d
    nop

    .line 598
    const/4 v7, 0x0

    goto :goto_56

    .line 592
    :cond_50
    move v11, v10

    .line 601
    :goto_51
    add-int/2addr v9, v11

    .line 590
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_55
    const/4 v7, 0x1

    .line 603
    :goto_56
    if-nez v7, :cond_59

    .line 604
    goto :goto_96

    .line 606
    :cond_59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 607
    const/4 v8, 0x0

    :goto_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_76

    .line 608
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_73

    .line 609
    nop

    .line 610
    move v7, v8

    goto :goto_76

    .line 607
    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 613
    :cond_76
    :goto_76
    invoke-virtual {v1, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 614
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 615
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, p1, :cond_96

    .line 616
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 617
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 582
    :cond_96
    :goto_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 620
    :cond_99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_9c
    .catchall {:try_start_e .. :try_end_9c} :catchall_9d

    .line 622
    goto :goto_9e

    .line 621
    :catchall_9d
    move-exception p0

    .line 623
    :goto_9e
    return-object v0

    .line 576
    :cond_9f
    :goto_9f
    return-object v0
.end method

.method static fuzzyMatch([Ljava/lang/String;Z)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;
    .registers 19

    .line 516
    move-object/from16 v0, p0

    .line 517
    nop

    .line 518
    nop

    .line 519
    nop

    .line 521
    :try_start_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v2

    .line 522
    const/4 v3, -0x1

    const/16 v4, 0x3e7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    array-length v9, v2

    const/4 v10, 0x1

    if-ge v6, v9, :cond_8a

    .line 523
    aget-object v9, v2, v6

    .line 524
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 525
    array-length v12, v11

    if-eqz v12, :cond_85

    array-length v12, v0

    array-length v13, v11

    if-ge v12, v13, :cond_24

    .line 526
    const/16 v16, 0x0

    goto/16 :goto_87

    .line 528
    :cond_24
    nop

    .line 529
    nop

    .line 530
    nop

    .line 531
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2a
    array-length v15, v11

    if-ge v12, v15, :cond_4d

    .line 532
    aget-object v15, v11, v12
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_90

    const/16 v16, 0x0

    :try_start_31
    aget-object v1, v0, v12

    invoke-static {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->tokenCost(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 533
    if-gez v1, :cond_3c

    .line 534
    nop

    .line 535
    const/4 v5, 0x0

    goto :goto_50

    .line 537
    :cond_3c
    aget-object v15, v11, v12

    aget-object v5, v0, v12

    invoke-static {v15, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->isTrailingJunk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 538
    const/4 v14, 0x1

    .line 540
    :cond_47
    add-int/2addr v13, v1

    .line 531
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    .line 564
    :catchall_4b
    move-exception v0

    goto :goto_93

    .line 531
    :cond_4d
    const/16 v16, 0x0

    const/4 v5, 0x1

    .line 542
    :goto_50
    if-eqz v5, :cond_87

    if-eqz v14, :cond_55

    .line 543
    goto :goto_87

    .line 545
    :cond_55
    if-nez p1, :cond_5a

    if-nez v13, :cond_5a

    .line 546
    goto :goto_87

    .line 548
    :cond_5a
    if-nez v13, :cond_5d

    .line 550
    goto :goto_87

    .line 552
    :cond_5d
    array-length v1, v11

    if-gt v1, v3, :cond_6e

    array-length v1, v11

    if-ne v1, v3, :cond_66

    if-ge v13, v4, :cond_66

    goto :goto_6e

    .line 560
    :cond_66
    array-length v1, v11

    if-ne v1, v3, :cond_87

    if-ne v13, v4, :cond_87

    .line 561
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    .line 553
    :cond_6e
    :goto_6e
    array-length v1, v11

    .line 554
    nop

    .line 555
    nop

    .line 556
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    invoke-direct {v8}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;-><init>()V

    .line 557
    iput-object v9, v8, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    .line 558
    array-length v3, v11

    invoke-static {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->tail([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    .line 559
    iput-boolean v10, v8, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->corrected:Z
    :try_end_81
    .catchall {:try_start_31 .. :try_end_81} :catchall_4b

    move v3, v1

    move v4, v13

    const/4 v7, 0x1

    goto :goto_87

    .line 525
    :cond_85
    const/16 v16, 0x0

    .line 522
    :cond_87
    :goto_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 566
    :cond_8a
    const/16 v16, 0x0

    .line 567
    if-eq v7, v10, :cond_8f

    .line 568
    return-object v16

    .line 570
    :cond_8f
    return-object v8

    .line 564
    :catchall_90
    move-exception v0

    const/16 v16, 0x0

    .line 565
    :goto_93
    return-object v16
.end method

.method public static helpOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 52
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 53
    if-nez p0, :cond_b

    const-string p0, ""

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static match([Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;
    .registers 14

    .line 474
    nop

    .line 475
    nop

    .line 476
    nop

    .line 477
    nop

    .line 479
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v1

    .line 480
    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v7, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    array-length v8, v1

    const/4 v9, 0x1

    if-ge v5, v8, :cond_51

    .line 481
    aget-object v8, v1, v5

    .line 482
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 483
    array-length v11, v10

    if-eqz v11, :cond_4e

    array-length v11, p0

    array-length v12, v10

    if-ge v11, v12, :cond_21

    .line 484
    goto :goto_4e

    .line 486
    :cond_21
    invoke-static {v10, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->wordScore([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 487
    if-gez v11, :cond_28

    .line 488
    goto :goto_4e

    .line 490
    :cond_28
    array-length v12, v10

    if-gt v12, v2, :cond_39

    array-length v12, v10

    if-ne v12, v2, :cond_31

    if-le v11, v4, :cond_31

    goto :goto_39

    .line 498
    :cond_31
    array-length v8, v10

    if-ne v8, v2, :cond_4e

    if-ne v11, v4, :cond_4e

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 491
    :cond_39
    :goto_39
    array-length v2, v10

    .line 492
    nop

    .line 493
    nop

    .line 494
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;-><init>()V

    .line 495
    iput-object v8, v7, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    .line 496
    array-length v4, v10

    invoke-static {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->tail([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    .line 497
    iput-boolean v3, v7, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->corrected:Z
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_56

    move v4, v11

    const/4 v6, 0x1

    .line 480
    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 504
    :cond_51
    nop

    .line 505
    if-eq v6, v9, :cond_55

    .line 506
    return-object v0

    .line 508
    :cond_55
    return-object v7

    .line 502
    :catchall_56
    move-exception p0

    .line 503
    return-object v0
.end method

.method public static nameArray()[Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 37
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->rebuildNameCache()V

    .line 39
    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_11

    :cond_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;

    :goto_11
    return-object v0
.end method

.method public static names()Ljava/util/List;
    .registers 4

    .line 43
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    const/4 v2, 0x0

    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 46
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 48
    :cond_16
    return-object v1
.end method

.method public static onConsoleOpened()V
    .registers 2

    .line 395
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ensure()V

    .line 396
    const-string v0, "who"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 397
    const-string v0, "\u63d0\u793a: h | h \u519b\u961f | \u547d\u4ee4? | hist | !!"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applyCommandsLayout()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 400
    goto :goto_15

    .line 399
    :catchall_14
    move-exception v0

    .line 401
    :goto_15
    return-void
.end method

.method static openConsole()V
    .registers 2

    .line 382
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v0, :cond_5

    .line 383
    return-void

    .line 385
    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v0

    if-nez v0, :cond_13

    .line 386
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction_Console(Z)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 389
    :cond_13
    goto :goto_15

    .line 388
    :catchall_14
    move-exception v0

    .line 390
    :goto_15
    return-void
.end method

.method public static printHelp()V
    .registers 1

    .line 57
    const-string v0, ""

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->printHelpTopic(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static printHelpTopic(Ljava/lang/String;)V
    .registers 6

    .line 62
    if-nez p0, :cond_5

    :try_start_2
    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_272

    const-string v1, "help"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_272

    const-string v1, "h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_272

    const-string v1, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_272

    const-string v1, "\u76ee\u5f55"

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_272

    const-string v1, "menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto/16 :goto_272

    .line 72
    :cond_3d
    const-string v1, "\u8ba1\u7b97"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26e

    const-string v1, "calc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26e

    const-string v1, "\u6570\u5b66"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26e

    const-string v1, "math"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto/16 :goto_26e

    .line 76
    :cond_5f
    const-string v1, "\u519b\u961f"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24a

    const-string v1, "army"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24a

    const-string v1, "\u5175"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    goto/16 :goto_24a

    .line 86
    :cond_79
    const-string v1, "\u8d44\u6e90"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22b

    const-string v1, "res"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22b

    const-string v1, "\u94b1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    goto/16 :goto_22b

    .line 95
    :cond_93
    const-string v1, "\u5916\u4ea4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_202

    const-string v1, "diplo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_202

    const-string v1, "\u6218\u4e89"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    goto/16 :goto_202

    .line 106
    :cond_ad
    const-string v1, "\u56fd\u5bb6"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d9

    const-string v1, "civ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d9

    const-string v1, "\u7701"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    goto/16 :goto_1d9

    .line 117
    :cond_c7
    const-string v1, "\u5730\u56fe"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    const-string v1, "\u89c6\u91ce"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    goto/16 :goto_1c4

    .line 124
    :cond_e1
    const-string v1, "\u5b8f"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a5

    const-string v1, "macro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a5

    const-string v1, "\u811a\u672c"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fb

    goto/16 :goto_1a5

    .line 133
    :cond_fb
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->match([Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object v1

    .line 135
    if-nez v1, :cond_10a

    .line 136
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->fuzzyMatch([Ljava/lang/String;Z)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object v1
    :try_end_10a
    .catchall {:try_start_2 .. :try_end_10a} :catchall_287

    .line 138
    :cond_10a
    const-string v2, "  "

    if-eqz v1, :cond_12f

    .line 139
    :try_start_10e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_12f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->names()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->uniquePrefix(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_156

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_156
    array-length v1, p0

    const/4 v3, 0x0

    if-nez v1, :cond_15b

    goto :goto_15d

    :cond_15b
    aget-object v0, p0, v3

    :goto_15d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->closestByFirstWord(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 148
    nop

    :goto_167
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_198

    .line 149
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e5f\u8bb8 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_167

    .line 152
    :cond_198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1a3

    .line 153
    const-string p0, "\u6ca1\u6709\u8fd9\u4e2a\u5206\u7c7b\u3002\u8bd5\u8bd5\uff1ah \u519b\u961f / h \u8d44\u6e90 / h \u5916\u4ea4 / h \u56fd\u5bb6 / h \u5730\u56fe / h \u5b8f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 157
    :cond_1a3
    goto/16 :goto_28d

    .line 125
    :cond_1a5
    :goto_1a5
    const-string p0, "--- \u5b8f/\u5de5\u5177 ---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 126
    const-string p0, "boost / god     \u52a0\u5f3a\uff08god \u4f1a\u7ed9\u5df1\u65b9\u9646\u7701\u52a0\u5175\uff09"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 127
    const-string p0, "run \u540d\u79f0        \u8dd1 assets/console/\u540d\u79f0.txt"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 128
    const-string p0, "sh a; b         \u4e00\u6761\u91cc\u8fde\u8dd1\u591a\u53e5"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 129
    const-string p0, "hist / !! / fav / sug / cls / q"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 130
    const-string p0, "\u8ba1\u7b97: \u76f4\u63a5\u8f93\u5165 2+3 \u6216 sin(pi/2)\uff1bfuncs / vars"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 131
    return-void

    .line 118
    :cond_1c4
    :goto_1c4
    const-string p0, "--- \u5730\u56fe ---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 119
    const-string p0, "go / go #\u7701 / go \u56fd\u540d"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 120
    const-string p0, "zoom \u6570\u5b57 | fog 0/1/2 | discover"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 121
    const-string p0, "ids on|off | watch | date"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 122
    return-void

    .line 107
    :cond_1d9
    :goto_1d9
    const-string p0, "--- \u56fd\u5bb6/\u7701\u4efd ---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 108
    const-string p0, "who / civ / prov / id / ls"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 109
    const-string p0, "play            \u5f53\u524d\u7701\u6240\u5c5e\u56fd\u52a0\u5165\u73a9\u5bb6"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 110
    const-string p0, "own / own annex \u5360\u9886\u6216\u541e\u5e76\u5f53\u524d\u7701"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 111
    const-string p0, "core + / core - \u5f53\u524d\u7701\u6838\u5fc3"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 112
    const-string p0, "set gov \u653f\u4f53    \u5408\u6cd5\u6362\u653f\u4f53\uff08\u5148 scan gov\uff09"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 113
    const-string p0, "set happy/risk  \u5e78\u798f\u6216\u53db\u4e71 0-100"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 114
    const-string p0, "fort / port / tower"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 115
    return-void

    .line 96
    :cond_202
    :goto_202
    const-string p0, "--- \u5916\u4ea4 ---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 97
    const-string p0, "war [A B]       \u5ba3\u6218\uff1b\u65e0\u53c2=\u4f60 vs \u5f53\u524d\u7701\u6240\u5c5e\u56fd"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 98
    const-string p0, "peace [A B]     \u771f\u6b63\u505c\u6218"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 99
    const-string p0, "peace-msg A B   \u53ea\u53d1\u8bae\u548c\u6d88\u606f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 100
    const-string p0, "ally + A B / ally - A"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 101
    const-string p0, "vassal + \u5b97\u4e3b \u9644\u5eb8 / vassal - \u9644\u5eb8"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 102
    const-string p0, "rel A B \u6570\u503c    \u6539\u5173\u7cfb\uff1b\u5f00\u6218\u7528 war"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 103
    const-string p0, "scan war        \u5217\u51fa\u4ea4\u6218\u56fd"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 104
    return-void

    .line 87
    :cond_22b
    :goto_22b
    const-string p0, "--- \u8d44\u6e90\uff08\u5f53\u524d\u73a9\u5bb6\u56fd\uff09---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 88
    const-string p0, "add money / move / diplo   \u5404\u52a0\u4e00\u7b14\u5e38\u7528\u91cf"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 89
    const-string p0, "set money/move/diplo/manpower \u6570\u91cf"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 90
    const-string p0, "set tech 1-1000            \u79d1\u6280\uff08100\u663e\u793a\u4e3a1.0\uff09"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 91
    const-string p0, "add pop / add eco          \u5f53\u524d\u7701\u4eba\u53e3\u6216\u7ecf\u6d4e +32500"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 92
    const-string p0, "boost                      \u6e29\u548c\u52a0\u5f3a\uff1a\u94b1\u3001\u79fb\u52a8\u3001\u5916\u4ea4\u3001\u4eba\u529b"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 93
    return-void

    .line 77
    :cond_24a
    :goto_24a
    const-string p0, "--- \u519b\u961f ---"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 78
    const-string p0, "set army \u6570\u91cf        \u5f53\u524d\u7701\u8bbe\u4e3a\u8fd9\u4e2a\u4eba\u6570"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 79
    const-string p0, "set army \u6570\u91cf *      \u5df1\u65b9\u5168\u90e8\u9646\u7701\u90fd\u8bbe\u6210\u8fd9\u4e2a\u4eba\u6570"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 80
    const-string p0, "add army             \u5f53\u524d\u7701 +10000"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 81
    const-string p0, "add army \u6570\u91cf        \u5f53\u524d\u7701\u52a0\u4e0a\u8fd9\u4e2a\u4eba\u6570"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 82
    const-string p0, "add army \u6570\u91cf *      \u5df1\u65b9\u5168\u90e8\u9646\u7701\u5404\u52a0\u8fd9\u4e2a\u4eba\u6570"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 83
    const-string p0, "fill army \u6570\u91cf       \u540c set army \u6570\u91cf *"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 84
    return-void

    .line 73
    :cond_26e
    :goto_26e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    .line 74
    return-void

    .line 66
    :cond_272
    :goto_272
    const-string p0, "\u7528\u6cd5: \u5148\u70b9\u7701\uff0c\u518d\u8f93\u5165\u3002\u8be6\u60c5: \u547d\u4ee4?"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 67
    const-string p0, "\u5206\u7c7b: h \u519b\u961f/\u8d44\u6e90/\u5916\u4ea4/\u56fd\u5bb6/\u5730\u56fe/\u5b8f/\u8ba1\u7b97"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 68
    const-string p0, "\u5e38\u7528: set army 5000 | add money | boost | sin(pi/2)"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 69
    const-string p0, "\u6253\u9519\u4f1a\u81ea\u52a8\u7ea0\u6b63\uff1b\u6b67\u4e49\u65f6\u53ea\u63d0\u793a"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V
    :try_end_286
    .catchall {:try_start_10e .. :try_end_286} :catchall_287

    .line 70
    return-void

    .line 155
    :catchall_287
    move-exception p0

    .line 156
    const-string p0, "\u5e2e\u52a9\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 158
    :goto_28d
    return-void
.end method

.method public static rebuildNameCache()V
    .registers 2

    .line 29
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 32
    goto :goto_1d

    .line 30
    :catchall_17
    move-exception v0

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->NAME_CACHE:[Ljava/lang/String;

    .line 33
    :goto_1d
    return-void
.end method

.method private static refineSetAdd(Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;[Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;
    .registers 15

    .line 284
    const-string p1, " "

    const-string v0, "set"

    if-eqz p0, :cond_fe

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    if-nez v1, :cond_c

    goto/16 :goto_fe

    .line 288
    :cond_c
    :try_start_c
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "add"

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 290
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    const-string v0, "set "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    const-string v0, "add "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    .line 293
    :cond_33
    return-object p0

    .line 291
    :cond_34
    :goto_34
    return-object p0

    .line 295
    :cond_35
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_40

    goto/16 :goto_fb

    .line 299
    :cond_40
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_fc

    const/4 v1, 0x5

    const-string v2, "diplo"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "move"

    const-string v6, "army"

    const/4 v7, 0x2

    const-string v8, "money"

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_7b

    .line 300
    const/16 v0, 0x9

    :try_start_59
    new-array v0, v0, [Ljava/lang/String;

    const-string v12, "tech"

    aput-object v12, v0, v10

    aput-object v8, v0, v11

    aput-object v5, v0, v7

    const-string v5, "manpower"

    aput-object v5, v0, v4

    aput-object v2, v0, v3

    const-string v2, "gov"

    aput-object v2, v0, v1

    const-string v1, "happy"

    aput-object v1, v0, v9

    const-string v1, "risk"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    aput-object v6, v0, v1

    goto :goto_8d

    .line 302
    :cond_7b
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "pop"

    aput-object v9, v0, v10

    const-string v9, "eco"

    aput-object v9, v0, v11

    aput-object v6, v0, v7

    aput-object v8, v0, v4

    aput-object v5, v0, v3

    aput-object v2, v0, v1

    .line 304
    :goto_8d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    aget-object v1, v1, v10

    .line 305
    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->uniqueFuzzyToken(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_fa

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    goto :goto_fa

    .line 309
    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->HELP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 311
    return-object p0

    .line 313
    :cond_be
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u7ea0\u6b63: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u2192 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 314
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;-><init>()V

    .line 315
    iput-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    invoke-static {v0, v11}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->tail([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    .line 317
    iput-boolean v11, p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->corrected:Z
    :try_end_f9
    .catchall {:try_start_59 .. :try_end_f9} :catchall_fc

    .line 318
    return-object p1

    .line 307
    :cond_fa
    :goto_fa
    return-object p0

    .line 296
    :cond_fb
    :goto_fb
    return-object p0

    .line 319
    :catchall_fc
    move-exception p1

    .line 320
    return-object p0

    .line 285
    :cond_fe
    :goto_fe
    return-object p0
.end method

.method private static runLine(Ljava/lang/String;)V
    .registers 10

    .line 181
    if-nez p0, :cond_3

    .line 182
    return-void

    .line 184
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 186
    return-void

    .line 188
    :cond_e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ensure()V

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_20

    const-string v1, ""

    goto :goto_22

    :cond_20
    aget-object v1, v1, v3

    .line 192
    :goto_22
    const-string v2, "term"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_4e

    const-string v2, "console"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 193
    const-string v2, "q"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "exit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "quit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v1, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v1, 0x1

    .line 194
    :goto_4f
    if-nez v1, :cond_54

    .line 195
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->openConsole()V

    .line 197
    :cond_54
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->blank()V

    .line 198
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->hash(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    if-nez v1, :cond_66

    .line 202
    const-string p0, "\u6ca1\u6709\u8fd9\u6761\u5386\u53f2"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 206
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->hash(Ljava/lang/String;)V

    .line 207
    move-object v0, v1

    .line 209
    :cond_70
    const-string v1, "hist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    const-string v1, "hist "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 210
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->push(Ljava/lang/String;)V

    .line 214
    :cond_83
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->handleExplicit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 215
    return-void

    .line 218
    :cond_8a
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    array-length v2, v1

    if-nez v2, :cond_92

    .line 220
    return-void

    .line 222
    :cond_92
    aget-object v2, v1, v3

    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v6, " \u2192 "

    const-string v7, "\u5df2\u7ea0\u6b63: "

    const-string v8, "  "

    if-nez v2, :cond_157

    array-length v2, v1

    if-ne v2, v4, :cond_ad

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto/16 :goto_157

    .line 246
    :cond_ad
    aget-object v0, v1, v3

    const-string v2, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 247
    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->tail([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    return-void

    .line 252
    :cond_bf
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->match([Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_d1

    .line 254
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->refineSetAdd(Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;[Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object p0

    .line 255
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void

    .line 258
    :cond_d1
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->tryEval(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d8

    .line 259
    return-void

    .line 261
    :cond_d8
    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->fuzzyMatch([Ljava/lang/String;Z)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object p0

    .line 262
    if-nez p0, :cond_125

    .line 263
    const/4 p0, 0x6

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->fuzzyCandidates([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 264
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_121

    .line 265
    const-string v0, "\u672a\u77e5\u6216\u6709\u6b67\u4e49"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 266
    nop

    :goto_ef
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_120

    .line 267
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e5f\u8bb8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    .line 270
    :cond_120
    return-void

    .line 272
    :cond_121
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->unknown([Ljava/lang/String;)V

    .line 273
    return-void

    .line 275
    :cond_125
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->corrected:Z

    if-eqz v0, :cond_14b

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->typedCommand([Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 278
    :cond_14b
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->refineSetAdd(Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;[Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object p0

    .line 279
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->args:[Ljava/lang/String;

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    return-void

    .line 223
    :cond_157
    :goto_157
    aget-object p0, v1, v3

    .line 224
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 227
    :cond_168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_172

    .line 228
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->printHelp()V

    .line 229
    return-void

    .line 231
    :cond_172
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->match([Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object v0

    .line 233
    if-nez v0, :cond_180

    .line 234
    invoke-static {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->fuzzyMatch([Ljava/lang/String;Z)Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;

    move-result-object v0

    .line 236
    :cond_180
    if-eqz v0, :cond_1d5

    .line 237
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b4

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->corrected:Z

    if-eqz v1, :cond_1b4

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 240
    :cond_1b4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    goto :goto_1d8

    .line 242
    :cond_1d5
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->unknown([Ljava/lang/String;)V

    .line 244
    :goto_1d8
    return-void
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    :try_start_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    nop

    .line 430
    nop

    .line 431
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_55

    .line 432
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 433
    if-eqz v4, :cond_24

    .line 434
    if-ne v6, v5, :cond_20

    .line 435
    const/4 v4, 0x0

    goto :goto_52

    .line 437
    :cond_20
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 439
    :cond_24
    const/16 v7, 0x22

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2d

    goto :goto_4f

    .line 442
    :cond_2d
    const/16 v7, 0x20

    if-eq v6, v7, :cond_3e

    const/16 v7, 0x9

    if-eq v6, v7, :cond_3e

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3a

    goto :goto_3e

    .line 448
    :cond_3a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 443
    :cond_3e
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_52

    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_52

    .line 440
    :cond_4f
    :goto_4f
    nop

    .line 441
    const/4 v4, 0x1

    move v5, v6

    .line 431
    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 451
    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_62

    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    .line 455
    :cond_62
    goto :goto_64

    .line 454
    :catchall_63
    move-exception p0

    .line 456
    :goto_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static tail([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 460
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    array-length v1, p0

    if-lt p1, v1, :cond_7

    goto :goto_1b

    .line 463
    :cond_7
    if-gez p1, :cond_a

    .line 464
    const/4 p1, 0x0

    .line 466
    :cond_a
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v2, v1, [Ljava/lang/String;

    .line 467
    nop

    :goto_f
    if-ge v0, v1, :cond_1a

    .line 468
    add-int v3, p1, v0

    aget-object v3, p0, v3

    aput-object v3, v2, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 470
    :cond_1a
    return-object v2

    .line 461
    :cond_1b
    :goto_1b
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method private static typedCommand([Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;)Ljava/lang/String;
    .registers 6

    .line 326
    const/4 v0, 0x0

    :try_start_1
    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine$Hit;->name:Ljava/lang/String;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 327
    array-length p1, p1

    .line 328
    array-length v1, p0

    if-le p1, v1, :cond_c

    .line 329
    array-length p1, p0

    .line 331
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_23

    .line 333
    if-lez v2, :cond_1b

    .line 334
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :cond_1b
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 338
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    return-object p0

    .line 339
    :catchall_28
    move-exception p1

    .line 340
    array-length p1, p0

    if-nez p1, :cond_2f

    const-string p0, ""

    goto :goto_31

    :cond_2f
    aget-object p0, p0, v0

    :goto_31
    return-object p0
.end method

.method static unknown([Ljava/lang/String;)V
    .registers 9

    .line 346
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    aget-object v0, p0, v1

    .line 347
    :goto_9
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->names()Ljava/util/List;

    move-result-object v3

    .line 350
    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->uniquePrefix(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 351
    if-nez v4, :cond_1f

    .line 352
    invoke-static {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->uniquePrefix(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_c5

    .line 354
    :cond_1f
    const-string v3, "  "

    if-eqz v4, :cond_4c

    :try_start_23
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53ef\u8865\u5168\u4e3a "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_4c
    const-string v4, "\u672a\u77e5\u6216\u6709\u6b67\u4e49"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 359
    nop

    .line 360
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_54
    array-length v6, v2

    if-ge v4, v6, :cond_8a

    const/16 v6, 0x8

    if-ge v5, v6, :cond_8a

    .line 361
    aget-object v6, v2, v4

    .line 362
    invoke-virtual {v6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_69

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 363
    :cond_69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 364
    add-int/lit8 v5, v5, 0x1

    .line 360
    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 367
    :cond_8a
    if-lez v5, :cond_8d

    .line 368
    return-void

    .line 370
    :cond_8d
    const/4 p0, 0x6

    invoke-static {v0, v2, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->closestByFirstWord(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 371
    nop

    :goto_93
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c4

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e5f\u8bb8 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_23 .. :try_end_c1} :catchall_c5

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 377
    :cond_c4
    goto :goto_cb

    .line 375
    :catchall_c5
    move-exception p0

    .line 376
    const-string p0, "\u672a\u77e5\u547d\u4ee4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 378
    :goto_cb
    return-void
.end method

.method private static wordScore([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .line 628
    nop

    .line 629
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5
    array-length v4, p0

    if-ge v2, v4, :cond_27

    .line 630
    aget-object v4, p0, v2

    .line 631
    aget-object v5, p1, v2

    .line 632
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 633
    goto :goto_22

    .line 635
    :cond_13
    nop

    .line 636
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_25

    :cond_21
    const/4 v3, 0x0

    .line 629
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 637
    :cond_25
    :goto_25
    const/4 p0, -0x1

    return p0

    .line 640
    :cond_27
    if-eqz v3, :cond_2a

    const/4 v0, 0x2

    :cond_2a
    return v0
.end method
