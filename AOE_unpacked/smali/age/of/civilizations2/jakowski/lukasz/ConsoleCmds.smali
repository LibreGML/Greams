.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;
.super Ljava/lang/Object;
.source "ConsoleCmds.java"


# static fields
.field static final ARMY_ADD:I = 0x2710

.field static final BOOST_MAN_ADD:I = 0x61a8

.field static final BOOST_MONEY_ADD:J = 0x4c840L

.field static final BOOST_TECH_CAP:I = 0xc8

.field static final BOOST_TECH_FLOOR:I = 0x64

.field static final BOOST_TECH_STEP:I = 0x19

.field static final DIPLO_ADD:I = 0x1ee1

.field static final ECO_ADD:I = 0x7ef4

.field static final FORT_LEVEL:I = 0x7

.field static final MONEY_ADD:J = 0x4c840L

.field static final MOVE_TIMES:I = 0x32

.field static final POP_ADD:I = 0x7ef4

.field private static ready:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static addArmyCmd([Ljava/lang/String;)V
    .registers 5

    .line 863
    nop

    .line 864
    nop

    .line 865
    const/4 v0, 0x1

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-eqz p0, :cond_3a

    array-length v3, p0

    if-lez v3, :cond_3a

    .line 866
    aget-object v3, p0, v2

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isStar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 867
    const/4 v2, 0x1

    goto :goto_3a

    .line 868
    :cond_15
    aget-object v1, p0, v2

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 869
    aget-object v1, p0, v2

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 870
    array-length v3, p0

    if-le v3, v0, :cond_3a

    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isStar(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 871
    const/4 v2, 0x1

    goto :goto_3a

    .line 874
    :cond_34
    const-string p0, "add army [\u6570\u91cf] [*]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 875
    return-void

    .line 878
    :cond_3a
    :goto_3a
    if-gez v1, :cond_42

    .line 879
    const-string p0, "\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 880
    return-void

    .line 882
    :cond_42
    if-eqz v2, :cond_48

    .line 883
    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->batchArmy(IZ)V

    .line 884
    return-void

    .line 886
    :cond_48
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result p0

    .line 887
    if-gez p0, :cond_4f

    .line 888
    return-void

    .line 890
    :cond_4f
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applyAddArmy(II)I

    move-result p0

    .line 891
    if-ltz p0, :cond_6b

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u519b\u961f +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 894
    :cond_6b
    return-void
.end method

.method private static addCiv([Ljava/lang/String;)V
    .registers 11

    .line 708
    const-string v1, "\u52a0\u5165\u56fd\u5bb6\u5931\u8d25"

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v4

    .line 709
    if-gez v4, :cond_9

    .line 710
    return-void

    .line 712
    :cond_9
    if-eqz p0, :cond_110

    array-length v0, p0

    if-nez v0, :cond_10

    goto/16 :goto_110

    .line 716
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 718
    :try_start_15
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 719
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 720
    const-string p0, "\u4e0d\u80fd\u5360\u7528\u9996\u90fd"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 721
    return-void

    .line 723
    :cond_27
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    .line 724
    const/4 v8, 0x1

    const/4 v5, 0x1

    :goto_2f
    if-ge v5, v2, :cond_67

    .line 725
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    .line 726
    if-eqz v6, :cond_64

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_64

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5df2\u5728\u5c40\u5185"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 728
    return-void

    .line 724
    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 731
    :cond_67
    nop

    .line 732
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 733
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    move v9, v2

    goto :goto_79

    .line 732
    :cond_78
    const/4 v9, 0x0

    .line 735
    :goto_79
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    .line 736
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->createScenarioAddCivilization(Ljava/lang/String;IZZZ)Z

    move-result v2

    .line 737
    if-nez v2, :cond_8f

    .line 738
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 739
    return-void

    .line 741
    :cond_8f
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->findCivTag(Ljava/lang/String;)I

    move-result v2

    .line 742
    if-gez v2, :cond_9c

    .line 743
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    sub-int/2addr v2, v8

    .line 745
    :cond_9c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    .line 746
    if-eqz v5, :cond_a9

    .line 747
    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    .line 749
    :cond_a9
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c9

    .line 750
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v5

    .line 751
    nop

    :goto_b5
    if-ge v0, v5, :cond_c9

    .line 752
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    .line 753
    if-nez v6, :cond_c0

    .line 754
    goto :goto_c6

    .line 756
    :cond_c0
    invoke-virtual {v6, v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCivilization(IZ)V

    .line 757
    invoke-virtual {v6, v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar(IZ)V

    .line 751
    :goto_c6
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 760
    :cond_c9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 761
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    .line 762
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p0

    invoke-virtual {v0, p0, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 764
    :cond_e1
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u52a0\u5165 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u91d1\u94b1 100"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_15 .. :try_end_10a} :catchall_10b

    .line 768
    goto :goto_10f

    .line 766
    :catchall_10b
    move-exception v0

    .line 767
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 769
    :goto_10f
    return-void

    .line 713
    :cond_110
    :goto_110
    const-string p0, "civ + \u6807\u7b7e"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private static addDiplo([Ljava/lang/String;)V
    .registers 4

    .line 1035
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result v0

    .line 1036
    if-gez v0, :cond_7

    .line 1037
    return-void

    .line 1039
    :cond_7
    const/16 v1, 0x1ee1

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->deltaOf([Ljava/lang/String;I)I

    move-result p0

    .line 1040
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v2

    .line 1042
    add-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    .line 1043
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1044
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5916\u4ea4 +"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method private static addEcoCmd([Ljava/lang/String;)V
    .registers 5

    .line 851
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 852
    if-gez v0, :cond_7

    .line 853
    return-void

    .line 855
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 856
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    .line 857
    const/16 v3, 0x7ef4

    invoke-static {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->deltaOf([Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    .line 858
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 859
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7ecf\u6d4e +"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method private static addMoney([Ljava/lang/String;)V
    .registers 6

    .line 998
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result v0

    .line 999
    if-gez v0, :cond_7

    .line 1000
    return-void

    .line 1002
    :cond_7
    const-wide/32 v1, 0x4c840

    invoke-static {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->longDelta([Ljava/lang/String;J)J

    move-result-wide v1

    .line 1003
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 1004
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v3

    .line 1005
    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    .line 1006
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91d1\u94b1 +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method private static addMonths(I)V
    .registers 5

    .line 2044
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    .line 2045
    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-lt v0, v3, :cond_b

    if-gt v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    .line 2046
    :goto_c
    if-eqz v3, :cond_10

    add-int/lit8 v0, v0, -0x1

    .line 2047
    :cond_10
    add-int/2addr v0, p0

    .line 2048
    nop

    .line 2049
    :goto_12
    if-lt v0, v2, :cond_19

    .line 2050
    add-int/lit8 v0, v0, -0xc

    .line 2051
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2053
    :cond_19
    :goto_19
    if-gez v0, :cond_20

    .line 2054
    add-int/lit8 v0, v0, 0xc

    .line 2055
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 2057
    :cond_20
    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    .line 2058
    if-eqz v1, :cond_2b

    .line 2059
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->addYears(I)V

    .line 2061
    :cond_2b
    return-void
.end method

.method private static addMove([Ljava/lang/String;)V
    .registers 6

    .line 1011
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result v0

    .line 1012
    if-gez v0, :cond_7

    .line 1013
    return-void

    .line 1015
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    .line 1017
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->explicitInt([Ljava/lang/String;)I

    move-result p0

    .line 1018
    const/high16 v3, -0x80000000

    if-ne p0, v3, :cond_31

    .line 1019
    nop

    .line 1021
    const/4 p0, 0x1

    :try_start_1b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    .line 1022
    if-eqz v3, :cond_2d

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    if-lez v4, :cond_2d

    .line 1023
    iget p0, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2e

    .line 1026
    :cond_2d
    goto :goto_2f

    .line 1025
    :catchall_2e
    move-exception v3

    .line 1027
    :goto_2f
    mul-int/lit8 p0, p0, 0x32

    .line 1029
    :cond_31
    add-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    .line 1030
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1031
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u79fb\u52a8 +"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method private static addPop(II)I
    .registers 4

    .line 842
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 843
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    .line 844
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p0

    .line 845
    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v1

    .line 846
    add-int/2addr p1, v1

    invoke-virtual {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    .line 847
    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method private static addPopCmd([Ljava/lang/String;)V
    .registers 3

    .line 831
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 832
    if-gez v0, :cond_7

    .line 833
    return-void

    .line 835
    :cond_7
    const/16 v1, 0x7ef4

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->deltaOf([Ljava/lang/String;I)I

    move-result p0

    .line 836
    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addPop(II)I

    move-result p0

    .line 837
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eba\u53e3 +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method private static ally([Ljava/lang/String;Z)V
    .registers 9

    .line 1277
    if-eqz p0, :cond_bc

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    goto/16 :goto_bc

    .line 1281
    :cond_8
    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v2

    .line 1282
    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v4

    .line 1283
    if-ltz v2, :cond_bb

    if-ltz v4, :cond_bb

    if-ne v2, v4, :cond_1e

    goto/16 :goto_bb

    .line 1287
    :cond_1e
    :try_start_1e
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    .line 1288
    if-eqz p1, :cond_80

    .line 1289
    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result p1

    if-ltz p1, :cond_4c

    .line 1290
    :cond_2e
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    aget-object v6, p0, v0

    aput-object v6, p1, v0

    aget-object p0, p0, v3

    aput-object p0, p1, v3

    const-string p0, "10"

    aput-object p0, p1, v1

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peaceCmd([Ljava/lang/String;Z)V

    .line 1291
    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 1292
    const-string p0, "\u4ecd\u5728\u6218\u4e89\uff0c\u65e0\u6cd5\u7ed3\u76df"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1293
    return-void

    .line 1296
    :cond_4c
    invoke-static {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->acceptAllianceProposal(II)V

    .line 1297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u7ed3\u76df "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_b3

    .line 1299
    :cond_80
    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied(II)Z

    move-result p0

    if-nez p0, :cond_92

    invoke-virtual {v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->isAlly(II)Z

    move-result p0

    if-nez p0, :cond_92

    .line 1300
    const-string p0, "\u4e0d\u662f\u540c\u76df"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1303
    :cond_92
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    .line 1304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u9000\u51fa\u540c\u76df "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_1e .. :try_end_b3} :catchall_b4

    .line 1308
    :goto_b3
    goto :goto_ba

    .line 1306
    :catchall_b4
    move-exception p0

    .line 1307
    const-string p0, "\u540c\u76df\u64cd\u4f5c\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1309
    :goto_ba
    return-void

    .line 1284
    :cond_bb
    :goto_bb
    return-void

    .line 1278
    :cond_bc
    :goto_bc
    if-eqz p1, :cond_c1

    const-string p0, "ally + A B"

    goto :goto_c3

    :cond_c1
    const-string p0, "ally - A B"

    :goto_c3
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method private static applyAddArmy(II)I
    .registers 6

    .line 962
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 963
    if-nez p0, :cond_a

    .line 964
    return v0

    .line 966
    :cond_a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivilizationArmyID:I

    .line 967
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v2

    .line 968
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    .line 969
    add-int/2addr p1, v3

    invoke-virtual {p0, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    .line 970
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    sub-int/2addr p0, v3

    return p0

    .line 971
    :catchall_1e
    move-exception p0

    .line 972
    return v0
.end method

.method private static applyGov(ILjava/lang/String;)V
    .registers 10

    .line 1538
    const-string v0, "\u5207\u6362\u653f\u4f53\u5931\u8d25"

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    .line 1539
    if-nez v1, :cond_c

    .line 1540
    const-string p0, "\u653f\u4f53\u6570\u636e\u672a\u5c31\u7eea"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1543
    :cond_c
    nop

    .line 1544
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1545
    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 1546
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_ee

    goto :goto_46

    .line 1549
    :cond_19
    :try_start_19
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->resolveIdeology(Ljava/lang/String;)I

    move-result v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    .line 1552
    goto :goto_20

    .line 1550
    :catchall_1e
    move-exception v2

    .line 1551
    const/4 v2, -0x1

    .line 1553
    :goto_20
    if-gez v2, :cond_45

    .line 1554
    :try_start_22
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v4

    .line 1555
    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_45

    .line 1556
    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v6

    .line 1557
    if-eqz v6, :cond_42

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_42

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1558
    nop

    .line 1559
    move p1, v5

    goto :goto_46

    .line 1555
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1564
    :cond_45
    move p1, v2

    :goto_46
    if-ltz p1, :cond_e8

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v2

    if-lt p1, v2, :cond_50

    goto/16 :goto_e8

    .line 1568
    :cond_50
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    .line 1569
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    if-ne v4, p1, :cond_62

    .line 1570
    const-string p0, "\u5df2\u7ecf\u662f\u8be5\u653f\u4f53"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1571
    return-void

    .line 1573
    :cond_62
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->canChangeToIdeology(I)Ljava/util/List;

    move-result-object v4

    .line 1574
    invoke-static {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ideologyAllowed(Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 1575
    const-string p0, "\u4e0d\u80fd\u5207\u6362\u5230\u8be5\u653f\u4f53"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1576
    return-void

    .line 1578
    :cond_72
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNextElection(I)V

    .line 1579
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setInReformation(I)V

    .line 1580
    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    if-eqz v4, :cond_82

    .line 1581
    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v3, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iChangeGoverment_SinceTurn:I

    .line 1583
    :cond_82
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getChangeGovernmentCost(I)I

    move-result v3

    .line 1584
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_95

    .line 1585
    const-wide/16 v3, 0x3e8

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    .line 1587
    :cond_95
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    const/16 v4, 0x16

    if-ge v3, v4, :cond_a0

    .line 1588
    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    .line 1590
    :cond_a0
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->changeGovernmentType(II)Z

    move-result v3

    .line 1591
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1592
    if-nez v3, :cond_b3

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p0

    if-eq p0, p1, :cond_b3

    .line 1593
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1594
    return-void

    .line 1596
    :cond_b3
    const-string p0, ""
    :try_end_b5
    .catchall {:try_start_22 .. :try_end_b5} :catchall_ee

    .line 1598
    :try_start_b5
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_c1
    .catchall {:try_start_b5 .. :try_end_c1} :catchall_c2

    .line 1600
    goto :goto_c3

    .line 1599
    :catchall_c2
    move-exception p1

    .line 1601
    :goto_c3
    :try_start_c3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u653f\u4f53 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1604
    goto :goto_f2

    .line 1565
    :cond_e8
    :goto_e8
    const-string p0, "\u653f\u4f53\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_c3 .. :try_end_ed} :catchall_ee

    .line 1566
    return-void

    .line 1602
    :catchall_ee
    move-exception p0

    .line 1603
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1605
    :goto_f2
    return-void
.end method

.method private static applySetArmy(II)Z
    .registers 6

    .line 978
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 979
    if-nez p0, :cond_a

    .line 980
    return v0

    .line 982
    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 983
    if-eqz v1, :cond_22

    .line 984
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfUnits(I)V

    .line 986
    :cond_22
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(I)V

    .line 987
    if-eqz v1, :cond_2f

    .line 988
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfUnits(I)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 990
    :cond_2f
    const/4 p0, 0x1

    return p0

    .line 991
    :catchall_31
    move-exception p0

    .line 992
    return v0
.end method

.method private static batchArmy(IZ)V
    .registers 7

    .line 935
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v0

    .line 936
    if-gtz v0, :cond_c

    .line 937
    const-string p0, "\u6ca1\u6709\u73a9\u5bb6\u56fd\u5bb6"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 938
    return-void

    .line 940
    :cond_c
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->ownLandProvinces(I)[I

    move-result-object v0

    .line 941
    array-length v1, v0

    if-nez v1, :cond_19

    .line 942
    const-string p0, "\u6ca1\u6709\u5df1\u65b9\u9646\u7701"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 943
    return-void

    .line 945
    :cond_19
    nop

    .line 946
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    array-length v4, v0

    if-ge v2, v4, :cond_3b

    .line 947
    if-eqz p1, :cond_2e

    aget v4, v0, v2

    invoke-static {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applyAddArmy(II)I

    move-result v4

    if-ltz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_34

    :cond_2c
    const/4 v4, 0x0

    goto :goto_34

    :cond_2e
    aget v4, v0, v2

    invoke-static {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applySetArmy(II)Z

    move-result v4

    .line 948
    :goto_34
    if-eqz v4, :cond_38

    .line 949
    add-int/lit8 v3, v3, 0x1

    .line 946
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 952
    :cond_3b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 953
    const-string v1, "/"

    const-string v2, "\u5df1\u65b9\u9646\u7701 "

    if-eqz p1, :cond_70

    .line 954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5404 +"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_97

    .line 956
    :cond_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u8bbe\u4e3a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 958
    :goto_97
    return-void
.end method

.method private static boost([Ljava/lang/String;Z)V
    .registers 8

    .line 1851
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_10

    :cond_7
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    goto :goto_14

    :cond_10
    :goto_10
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 1852
    :goto_14
    if-gez p0, :cond_17

    .line 1853
    return-void

    .line 1856
    :cond_17
    :try_start_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1857
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel_INT()I

    move-result v2

    .line 1858
    const/16 v3, 0x64

    if-ge v2, v3, :cond_26

    .line 1859
    goto :goto_28

    .line 1861
    :cond_26
    add-int/lit8 v3, v2, 0x19

    .line 1863
    :goto_28
    const/16 v2, 0xc8

    if-le v3, v2, :cond_2e

    .line 1864
    const/16 v3, 0xc8

    .line 1866
    :cond_2e
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel_INT(I)V

    .line 1868
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    const-wide/32 v4, 0x4c840

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_ee

    .line 1870
    nop

    .line 1872
    const/16 v2, 0xa

    :try_start_3f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    .line 1873
    if-eqz v3, :cond_51

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    if-lez v4, :cond_51

    .line 1874
    iget v2, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_52

    .line 1877
    :cond_51
    goto :goto_53

    .line 1876
    :catchall_52
    move-exception v3

    .line 1878
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    mul-int/lit8 v2, v2, 0x32

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    .line 1880
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    .line 1881
    const/high16 v3, 0x42aa0000    # 85.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1882
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_70

    .line 1883
    const/16 v2, 0x1f4

    .line 1885
    :cond_70
    if-gez v2, :cond_73

    .line 1886
    goto :goto_74

    .line 1885
    :cond_73
    move v0, v2

    .line 1888
    :goto_74
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v2

    if-ge v2, v0, :cond_7d

    .line 1889
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V
    :try_end_7d
    .catchall {:try_start_53 .. :try_end_7d} :catchall_ee

    .line 1893
    :cond_7d
    :try_start_7d
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v0

    add-int/lit16 v0, v0, 0x61a8

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_87

    .line 1895
    goto :goto_88

    .line 1894
    :catchall_87
    move-exception v0

    .line 1896
    :goto_88
    :try_start_88
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1897
    if-eqz p1, :cond_ed

    .line 1898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u52a0\u5f3a "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u79d1\u6280"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1899
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u94b1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1900
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u79fb\u52a8"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1901
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u5916\u4ea4"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1902
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u4eba\u529b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1903
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1898
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_88 .. :try_end_ed} :catchall_ee

    .line 1907
    :cond_ed
    goto :goto_f4

    .line 1905
    :catchall_ee
    move-exception p0

    .line 1906
    const-string p0, "\u52a0\u5f3a\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1908
    :goto_f4
    return-void
.end method

.method private static civInfo([Ljava/lang/String;)V
    .registers 4

    .line 552
    if-eqz p0, :cond_10

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    goto :goto_14

    :cond_10
    :goto_10
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ownerOfActive()I

    move-result p0

    .line 553
    :goto_14
    if-gez p0, :cond_17

    .line 554
    return-void

    .line 556
    :cond_17
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    .line 557
    if-nez v0, :cond_23

    .line 558
    const-string p0, "\u56fd\u5bb6\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 559
    return-void

    .line 561
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56fd\u5bb6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7701 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u94b1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u79fb\u52a8 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 563
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5916\u4ea4 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u4eba\u529b "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->safeMan(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u79d1\u6280 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 564
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u653f\u4f53 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u5b97\u4e3b "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u73a9\u5bb6 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private static civOrPlayer([Ljava/lang/String;)I
    .registers 3

    .line 2280
    if-eqz p0, :cond_18

    .line 2281
    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 2282
    aget-object v1, p0, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2283
    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2281
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2287
    :cond_18
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 2288
    if-gez p0, :cond_23

    .line 2289
    const-string v0, "\u6ca1\u6709\u73a9\u5bb6\u56fd\u5bb6"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2291
    :cond_23
    return p0
.end method

.method private static cls()V
    .registers 1

    .line 393
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 394
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 397
    :cond_9
    goto :goto_b

    .line 396
    :catchall_a
    move-exception v0

    .line 398
    :goto_b
    const-string v0, "\u5df2\u6e05\u7a7a"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private static core([Ljava/lang/String;Z)V
    .registers 4

    .line 1697
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1698
    if-gez v0, :cond_7

    .line 1699
    return-void

    .line 1701
    :cond_7
    if-eqz p0, :cond_17

    array-length v1, p0

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    goto :goto_1b

    :cond_17
    :goto_17
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 1702
    :goto_1b
    if-gez p0, :cond_1e

    .line 1703
    return-void

    .line 1706
    :cond_1e
    :try_start_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v1

    .line 1707
    if-nez v1, :cond_30

    .line 1708
    const-string p0, "\u6ca1\u6709\u6838\u5fc3\u6570\u636e"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1709
    return-void

    .line 1711
    :cond_30
    if-eqz p1, :cond_52

    .line 1712
    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    .line 1713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6838\u5fc3+ "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_6f

    .line 1715
    :cond_52
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->removeCore(I)V

    .line 1716
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6838\u5fc3- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1718
    :goto_6f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V
    :try_end_72
    .catchall {:try_start_1e .. :try_end_72} :catchall_73

    .line 1721
    goto :goto_79

    .line 1719
    :catchall_73
    move-exception p0

    .line 1720
    const-string p0, "\u6838\u5fc3\u64cd\u4f5c\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1722
    :goto_79
    return-void
.end method

.method private static currentPlayer()I
    .registers 2

    .line 1458
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayerID_ByCivID(I)I

    move-result v0

    .line 1459
    if-ltz v0, :cond_d

    .line 1460
    return v0

    .line 1462
    :cond_d
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    if-ltz v0, :cond_1e

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1463
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1f

    return v0

    .line 1466
    :cond_1e
    goto :goto_20

    .line 1465
    :catchall_1f
    move-exception v0

    .line 1467
    :goto_20
    const/4 v0, -0x1

    return v0
.end method

.method private static date([Ljava/lang/String;)V
    .registers 8

    .line 1991
    const-string v0, "m"

    const-string v1, "y"

    if-eqz p0, :cond_c3

    :try_start_6
    array-length v2, p0

    if-nez v2, :cond_b

    goto/16 :goto_c3

    .line 1995
    :cond_b
    const/4 v2, 0x0

    aget-object v3, p0, v2

    .line 1996
    nop

    .line 1997
    nop

    .line 1998
    nop

    .line 1999
    nop

    .line 2000
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_20

    .line 2001
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    .line 2000
    :cond_20
    move-object v4, v3

    .line 2003
    :goto_21
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2004
    nop

    .line 2005
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_70

    .line 2006
    :cond_34
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2007
    nop

    .line 2008
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    goto :goto_70

    .line 2009
    :cond_46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_e4

    const-string v6, ""

    if-nez v1, :cond_6c

    :try_start_4e
    const-string v1, "+y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_6c

    .line 2012
    :cond_57
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "+m"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_68

    :cond_66
    const/4 v0, 0x0

    goto :goto_70

    .line 2013
    :cond_68
    :goto_68
    nop

    .line 2014
    move-object v4, v6

    const/4 v0, 0x1

    goto :goto_70

    .line 2010
    :cond_6c
    :goto_6c
    nop

    .line 2011
    move-object v4, v6

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2016
    :goto_70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_85

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 2017
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_9a

    .line 2018
    :cond_85
    array-length v1, p0

    if-le v1, v5, :cond_9a

    aget-object v1, p0, v5

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 2019
    aget-object p0, p0, v5

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2021
    :cond_9a
    :goto_9a
    if-nez v2, :cond_a4

    if-nez v0, :cond_a4

    .line 2022
    const-string p0, "date +y / date +m / date +5y"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2023
    return-void

    .line 2025
    :cond_a4
    if-eqz v2, :cond_aa

    .line 2026
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->addYears(I)V

    goto :goto_ad

    .line 2028
    :cond_aa
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addMonths(I)V
    :try_end_ad
    .catchall {:try_start_4e .. :try_end_ad} :catchall_e4

    .line 2031
    :goto_ad
    :try_start_ad
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->updateAge()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    .line 2033
    goto :goto_b2

    .line 2032
    :catchall_b1
    move-exception p0

    .line 2034
    :goto_b2
    :try_start_b2
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-eqz p0, :cond_bb

    .line 2035
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->updateInGame_Date()V

    .line 2037
    :cond_bb
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 2040
    goto :goto_ea

    .line 1992
    :cond_c3
    :goto_c3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u56de\u5408"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_b2 .. :try_end_e3} :catchall_e4

    .line 1993
    return-void

    .line 2038
    :catchall_e4
    move-exception p0

    .line 2039
    const-string p0, "\u6539\u65e5\u671f\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2041
    :goto_ea
    return-void
.end method

.method private static dbg()V
    .registers 2

    .line 425
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DEBUG_MODE:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DEBUG_MODE:Z

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u8bd5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DEBUG_MODE:Z

    if-eqz v1, :cond_1b

    const-string v1, "\u5f00"

    goto :goto_1d

    :cond_1b
    const-string v1, "\u5173"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 429
    goto :goto_2f

    .line 427
    :catchall_29
    move-exception v0

    .line 428
    const-string v0, "\u8c03\u8bd5\u5f00\u5173\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 430
    :goto_2f
    return-void
.end method

.method private static deltaOf([Ljava/lang/String;I)I
    .registers 3

    .line 2239
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->explicitInt([Ljava/lang/String;)I

    move-result p0

    .line 2240
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    move p1, p0

    :goto_a
    return p1
.end method

.method private static diff([Ljava/lang/String;)V
    .registers 4

    .line 1471
    const-string v0, "\u96be\u5ea6 "

    if-eqz p0, :cond_42

    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_42

    .line 1475
    :cond_8
    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 1476
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1f

    goto :goto_3c

    .line 1480
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    .line 1481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1482
    return-void

    .line 1477
    :cond_3c
    :goto_3c
    const-string p0, "diff 0-4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1478
    return-void

    .line 1472
    :cond_42
    :goto_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method private static discover()V
    .registers 4

    .line 1439
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->currentPlayer()I

    move-result v0

    .line 1440
    if-gez v0, :cond_c

    .line 1441
    const-string v0, "\u6ca1\u6709\u73a9\u5bb6"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1442
    return-void

    .line 1444
    :cond_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    .line 1445
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    .line 1446
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_22

    .line 1447
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar(IZ)V

    .line 1446
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1449
    :cond_22
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->buildMetProvincesAndCivs()V

    .line 1450
    const-string v0, "\u5df2\u63a2\u7d22\u5168\u90e8\u7701\u4efd"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    .line 1453
    goto :goto_31

    .line 1451
    :catchall_2b
    move-exception v0

    .line 1452
    const-string v0, "\u63a2\u7d22\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1454
    :goto_31
    return-void
.end method

.method private static dropPeaceful(Lage/of/civilizations2/jakowski/lukasz/War_GameData;Z)Z
    .registers 8

    .line 1239
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v0

    .line 1240
    :goto_b
    new-array v1, v0, [I

    .line 1241
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_29

    .line 1242
    if-eqz p1, :cond_18

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    goto :goto_1c

    :cond_18
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    .line 1243
    :goto_1c
    if-nez v4, :cond_20

    const/4 v4, -0x1

    goto :goto_24

    :cond_20
    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    :goto_24
    aput v4, v1, v3

    .line 1241
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1245
    :cond_29
    nop

    .line 1246
    const/4 v3, 0x0

    :goto_2b
    if-ge v2, v0, :cond_4d

    .line 1247
    aget v4, v1, v2

    if-gez v4, :cond_32

    .line 1248
    goto :goto_4a

    .line 1250
    :cond_32
    aget v4, v1, v2

    xor-int/lit8 v5, p1, 0x1

    invoke-static {p0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fightsOpposite(Lage/of/civilizations2/jakowski/lukasz/War_GameData;IZ)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 1251
    if-eqz p1, :cond_44

    .line 1252
    aget v3, v1, v2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeAggressor(I)V

    goto :goto_49

    .line 1254
    :cond_44
    aget v3, v1, v2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeDefender(I)V

    .line 1256
    :goto_49
    const/4 v3, 0x1

    .line 1246
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1259
    :cond_4d
    return v3
.end method

.method public static ensure()V
    .registers 6

    .line 32
    const-string v0, "\u5168\u7701\u53ef\u89c1\uff08\u540c discover\uff09"

    const-string v1, "\u5173\u95ed\u63a7\u5236\u53f0\uff08\u540c q\uff09"

    const-string v2, "\u6e05\u7a7a\u8f93\u51fa\uff08\u540c cls\uff09"

    const-string v3, "\u5173\u95ed\u63a7\u5236\u53f0"

    const-string v4, "\u5e2e\u52a9"

    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ready:Z

    if-eqz v5, :cond_f

    .line 33
    return-void

    .line 35
    :cond_f
    const/4 v5, 0x1

    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ready:Z

    .line 37
    :try_start_12
    const-string v5, "term"

    invoke-static {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v5, "q"

    invoke-static {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "console"

    const-string v5, "\u5f00\u5173\u63a7\u5236\u53f0"

    invoke-static {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "h"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "help"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "?"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "cls"

    const-string v4, "\u6e05\u7a7a\u8f93\u51fa"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "sys"

    const-string v4, "\u5206\u8fa8\u7387\u4e0e\u5e27\u7387"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v3, "dbg"

    const-string v4, "\u8c03\u8bd5\u5f00\u5173"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "fps"

    const-string v4, "\u5e27\u7387\u663e\u793a\u5f00\u5173"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "hi"

    const-string v4, "\u95ee\u597d"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "exportscen"

    const-string v4, "\u5bfc\u51fa\u672c\u5730\u5267\u672c\u5230 Download/GemorinScenarios"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "go"

    const-string v4, "\u5b9a\u4f4d \u7701/\u56fd\u5bb6/\u5168\u56fe"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "neutral"

    const-string v4, "\u8df3\u5230\u4e2d\u7acb\u9646\u5730"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "zoom"

    const-string v4, "\u7f29\u653e\uff0c\u7f3a\u7701 1"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "civ"

    const-string v4, "\u56fd\u5bb6\u4fe1\u606f"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "prov"

    const-string v4, "\u7701\u4efd\u4fe1\u606f"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "ls"

    const-string v4, "\u56fd\u5bb6\u5217\u8868"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "id"

    const-string v4, "\u5f53\u524d\u7701\u4efd\u7f16\u53f7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "ids"

    const-string v4, "ids on|off \u519b\u961f\u663e\u793a\u7f16\u53f7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "ids on"

    const-string v4, "\u519b\u961f\u663e\u793a\u4e3a\u7f16\u53f7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "ids off"

    const-string v4, "\u6062\u590d\u519b\u961f\u663e\u793a"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "watch"

    const-string v4, "\u65c1\u89c2\u6a21\u5f0f SPECTATOR"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "play"

    const-string v4, "\u628a\u5f53\u524d\u7701\u6240\u5c5e\u56fd\u52a0\u5165\u73a9\u5bb6"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "civ +"

    const-string v4, "\u5728\u5f53\u524d\u7701\u52a0\u5165\u56fd\u5bb6\u6807\u7b7e"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "set"

    const-string v4, "set tech/money/move/manpower/diplo/gov/happy/risk/army"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "add"

    const-string v4, "add pop/eco/army/money/move/diplo"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "set tech"

    const-string v4, "\u79d1\u6280 1-1000\uff0c\u663e\u793a\u4e3a\u767e\u5206\u6570"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "add pop"

    const-string v4, "\u4eba\u53e3 +32500"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "add eco"

    const-string v4, "\u7ecf\u6d4e +32500"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "add army"

    const-string v4, "\u52a0\u5175\uff1aadd army [\u6570\u91cf] [*]"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "fill army"

    const-string v4, "\u5df1\u65b9\u9646\u7701\u7edf\u4e00\u8bbe\u5175"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "set army"

    const-string v4, "\u8bbe\u5175\uff1aset army \u6570\u91cf [*]"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "add money"

    const-string v4, "\u91d1\u94b1 +313408"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "add move"

    const-string v4, "\u79fb\u52a8\u529b +\u79fb\u8d39\u00d750"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "add diplo"

    const-string v4, "\u5916\u4ea4\u70b9 +7905"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "fort"

    const-string v4, "\u5821\u5792\u8bbe\u4e3a 7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "port"

    const-string v4, "\u6cbf\u6d77\u6e2f\u53e3\u8bbe\u4e3a 1"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "tower"

    const-string v4, "\u54e8\u5854\u8bbe\u4e3a 1"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "war"

    const-string v4, "\u5ba3\u6218 A B\uff0c\u5148\u68c0\u67e5\u95e8\u69db"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "peace-msg"

    const-string v4, "\u53d1\u9001\u53ef\u8bae\u548c\u6d88\u606f"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "lib"

    const-string v4, "\u7981\u6b62\u89e3\u653e\u5f00\u5173"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "reload"

    const-string v4, "\u91cd\u8f7d\u7701\u4efd"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "spin"

    const-string v4, "\u5730\u56fe\u65cb\u8f6c"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "party"

    const-string v4, "\u6492\u5f69\u65d7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "peace"

    const-string v4, "\u548c\u8c08 A B [\u505c\u62181-50]"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "peace ret"

    const-string v4, "\u5f52\u8fd8\u5360\u9886\u5e76\u548c\u8c08"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "ally"

    const-string v4, "ally + / ally -"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "ally +"

    const-string v4, "\u7ed3\u76df\uff0c\u5f00\u6218\u5219\u5148\u548c\u8c08"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "ally -"

    const-string v4, "\u9000\u51fa\u540c\u76df"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "vassal"

    const-string v4, "vassal + \u5b97\u4e3b \u9644\u5eb8 / vassal - \u9644\u5eb8"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "vassal +"

    const-string v4, "\u6536\u4e3a\u9644\u5eb8\uff0c\u5148\u6e05\u6218\u4e89"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "vassal -"

    const-string v4, "\u91ca\u653e\u9644\u5eb8"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "fog"

    const-string v4, "\u8ff7\u96fe 0\u5173 1\u7ecf\u5178 2\u63a2\u7d22"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "fog rebuild"

    const-string v4, "\u6309\u89c4\u5219\u91cd\u7b97\u8ff7\u96fe"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "discover"

    const-string v4, "\u5f53\u524d\u73a9\u5bb6\u5168\u7701\u53ef\u89c1\u5e76\u5efa\u4ea4"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "diff"

    const-string v4, "\u96be\u5ea6 0-4"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "set gov"

    const-string v4, "\u5408\u6cd5\u5207\u6362\u653f\u4f53"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "scan gov"

    const-string v4, "\u5217\u51fa\u53ef\u5207\u6362\u653f\u4f53"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "scan war"

    const-string v4, "\u5217\u51fa\u4e0e\u73a9\u5bb6\u4ea4\u6218\u7684\u56fd\u5bb6"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "own"

    const-string v4, "\u5360\u9886\u5f53\u524d\u7701"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "own annex"

    const-string v4, "\u541e\u5e76\u5f53\u524d\u7701\u5e76\u6539\u6b63\u5f53\u5f52\u5c5e"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "core"

    const-string v4, "core + / core -"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "core +"

    const-string v4, "\u7ed9\u5f53\u524d\u7701\u52a0\u6838\u5fc3"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "core -"

    const-string v4, "\u79fb\u9664\u6838\u5fc3"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "set happy"

    const-string v4, "\u5e78\u798f 0-100"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "set risk"

    const-string v4, "\u9769\u547d\u98ce\u9669 0-100"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "rel"

    const-string v4, "\u5173\u7cfb A B \u6570\u503c"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "set money"

    const-string v4, "\u8bbe\u7f6e\u91d1\u94b1"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "set move"

    const-string v4, "\u8bbe\u7f6e\u79fb\u52a8\u529b"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "set manpower"

    const-string v4, "\u8bbe\u7f6e\u4eba\u529b"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "set diplo"

    const-string v4, "\u8bbe\u7f6e\u5916\u4ea4\u70b9"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "boost"

    const-string v4, "\u6e29\u548c\u52a0\u5f3a\u8d44\u6e90"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "god"

    const-string v4, "\u52a0\u5f3a+\u5df1\u65b9\u9646\u7701\u52a0\u5175"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "who"

    const-string v4, "\u5f53\u524d\u73a9\u5bb6\u3001\u7701\u4efd\u3001\u65e5\u671f"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "date"

    const-string v4, "\u65e5\u671f\uff0cdate +y / +m"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "hist"

    const-string v4, "\u547d\u4ee4\u5386\u53f2"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "fav"

    const-string v4, "\u6536\u85cf fav / fav add / fav \u5e8f\u53f7"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "sug"

    const-string v4, "\u8865\u5168\u4e0e\u8fd1\u4f3c\u547d\u4ee4"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "run"

    const-string v4, "\u8fd0\u884c assets/console/\u540d\u79f0.txt"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "sh"

    const-string v4, "\u8fde\u7eed\u6267\u884c\uff0c\u5206\u53f7\u5206\u9694"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "calc"

    const-string v4, "\u8ba1\u7b97\u5e2e\u52a9\uff1b\u6216 calc \u8868\u8fbe\u5f0f\uff08\u4e5f\u53ef\u76f4\u63a5\u8f93\u5165\u8868\u8fbe\u5f0f\uff09"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "funcs"

    const-string v4, "\u5217\u51fa\u8ba1\u7b97\u51fd\u6570"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "vars"

    const-string v4, "\u5217\u51fa\u8ba1\u7b97\u53d8\u91cf"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v3, "reset"

    const-string v4, "\u6e05\u7a7a\u8ba1\u7b97\u53d8\u91cf"

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "clear"

    invoke-static {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "clr"

    invoke-static {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "exit"

    invoke-static {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "quit"

    invoke-static {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "annex"

    const-string v2, "\u541e\u5e76\u5f53\u524d\u7701\uff08\u540c own annex\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "reveal"

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "info"

    const-string v2, "\u5f53\u524d\u72b6\u6001\uff08\u540c who\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "\u548c\u8c08"

    const-string v2, "\u548c\u8c08\uff08\u540c peace\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "\u5ba3\u6218"

    const-string v2, "\u5ba3\u6218\uff08\u540c war\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "\u7ed3\u76df"

    const-string v2, "\u7ed3\u76df\uff08\u540c ally\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "\u9644\u5eb8"

    const-string v2, "\u9644\u5eb8\uff08\u540c vassal\uff09"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "\u53d1\u73b0"

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "\u52a0\u5f3a"

    const-string v1, "\u6e29\u548c\u52a0\u5f3a\uff08\u540c boost\uff09"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->rebuildNameCache()V
    :try_end_2ad
    .catchall {:try_start_12 .. :try_end_2ad} :catchall_2ae

    .line 142
    goto :goto_2b4

    .line 137
    :catchall_2ae
    move-exception v0

    .line 139
    :try_start_2af
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->rebuildNameCache()V
    :try_end_2b2
    .catchall {:try_start_2af .. :try_end_2b2} :catchall_2b3

    .line 141
    goto :goto_2b4

    .line 140
    :catchall_2b3
    move-exception v0

    .line 143
    :goto_2b4
    return-void
.end method

.method private static explicitInt([Ljava/lang/String;)I
    .registers 4

    .line 2244
    const/high16 v0, -0x80000000

    if-nez p0, :cond_5

    .line 2245
    return v0

    .line 2247
    :cond_5
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 2248
    aget-object v2, p0, v1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2249
    if-eqz v2, :cond_16

    .line 2250
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2247
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2253
    :cond_19
    return v0
.end method

.method private static exportScenarios([Ljava/lang/String;)V
    .registers 4

    .line 447
    const-string v0, "\u5df2\u5bfc\u51fa "

    if-eqz p0, :cond_56

    :try_start_4
    array-length v1, p0

    if-lez v1, :cond_56

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-eqz v2, :cond_56

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    .line 448
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    if-eqz v2, :cond_3d

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " -> Download/GemorinScenarios/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_55

    .line 452
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u627e\u5230\u672c\u5730\u5267\u672c: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 454
    :goto_55
    return-void

    .line 456
    :cond_56
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportAllLocal()I

    move-result p0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u4e2a\u5267\u672c\u5230 Download/GemorinScenarios/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 458
    const-string p0, "PC: python tools/import_exported_scenarios.py"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_4 .. :try_end_79} :catchall_7a

    .line 461
    goto :goto_95

    .line 459
    :catchall_7a
    move-exception p0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bfc\u51fa\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 462
    :goto_95
    return-void
.end method

.method private static fav([Ljava/lang/String;)V
    .registers 4

    .line 2126
    if-eqz p0, :cond_63

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_63

    .line 2130
    :cond_6
    const-string v0, "add"

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2131
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2c

    .line 2133
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->get(I)Ljava/lang/String;

    move-result-object p0

    .line 2135
    :cond_2c
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_39

    .line 2139
    :cond_35
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favAdd(Ljava/lang/String;)V

    .line 2140
    return-void

    .line 2136
    :cond_39
    :goto_39
    const-string p0, "fav add \u547d\u4ee4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2137
    return-void

    .line 2142
    :cond_3f
    aget-object v0, p0, v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2143
    if-nez v0, :cond_4f

    .line 2144
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favAdd(Ljava/lang/String;)V

    .line 2145
    return-void

    .line 2147
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favGet(I)Ljava/lang/String;

    move-result-object p0

    .line 2148
    if-nez p0, :cond_5f

    .line 2149
    const-string p0, "\u6ca1\u6709\u8fd9\u4e2a\u6536\u85cf"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2150
    return-void

    .line 2152
    :cond_5f
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->execute(Ljava/lang/String;)V

    .line 2153
    return-void

    .line 2127
    :cond_63
    :goto_63
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->favPrint()V

    .line 2128
    return-void
.end method

.method private static fightsOpposite(Lage/of/civilizations2/jakowski/lukasz/War_GameData;IZ)Z
    .registers 8

    .line 1263
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v0

    .line 1264
    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_34

    .line 1265
    if-eqz p2, :cond_16

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    .line 1266
    :goto_1a
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    if-ne v4, p1, :cond_23

    .line 1267
    goto :goto_31

    .line 1269
    :cond_23
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v4, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1270
    const/4 p0, 0x1

    return p0

    .line 1264
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1273
    :cond_34
    return v1
.end method

.method private static fillArmy([Ljava/lang/String;)V
    .registers 3

    .line 922
    if-eqz p0, :cond_25

    array-length v0, p0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_25

    .line 926
    :cond_f
    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 927
    if-gez p0, :cond_21

    .line 928
    const-string p0, "\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 929
    return-void

    .line 931
    :cond_21
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->batchArmy(IZ)V

    .line 932
    return-void

    .line 923
    :cond_25
    :goto_25
    const-string p0, "fill army \u6570\u91cf"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method private static findCivTag(Ljava/lang/String;)I
    .registers 5

    .line 773
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    .line 774
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-lt v0, v1, :cond_26

    .line 775
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    .line 776
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_27

    if-eqz v2, :cond_23

    .line 777
    return v0

    .line 774
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 781
    :cond_26
    goto :goto_28

    .line 780
    :catchall_27
    move-exception p0

    .line 782
    :goto_28
    const/4 p0, -0x1

    return p0
.end method

.method private static firstInt([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 2262
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->explicitInt([Ljava/lang/String;)I

    move-result p0

    .line 2263
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method private static firstLong([Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 2267
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2268
    return-object v0

    .line 2270
    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 2271
    aget-object v2, p0, v1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2272
    if-eqz v2, :cond_19

    .line 2273
    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2270
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2276
    :cond_1c
    return-object v0
.end method

.method private static fog([Ljava/lang/String;)V
    .registers 6

    .line 1390
    const-string v0, "\u8ff7\u96fe "

    if-eqz p0, :cond_85

    array-length v1, p0

    if-nez v1, :cond_9

    goto/16 :goto_85

    .line 1394
    :cond_9
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1395
    nop

    .line 1396
    const/4 v3, 0x2

    if-eqz v2, :cond_19

    .line 1397
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5f

    .line 1398
    :cond_19
    const-string v2, "off"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "\u5173"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_5e

    .line 1400
    :cond_2e
    const-string v2, "classic"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "\u7ecf\u5178"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_5c

    .line 1402
    :cond_43
    const-string v2, "discovery"

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "\u63a2\u7d22"

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v1, -0x1

    goto :goto_5f

    .line 1403
    :cond_5a
    :goto_5a
    const/4 v1, 0x2

    goto :goto_5f

    .line 1401
    :cond_5c
    :goto_5c
    const/4 v1, 0x1

    goto :goto_5f

    .line 1399
    :cond_5e
    :goto_5e
    nop

    .line 1405
    :goto_5f
    if-ltz v1, :cond_7f

    if-le v1, v3, :cond_64

    goto :goto_7f

    .line 1409
    :cond_64
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    .line 1410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fogName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1411
    return-void

    .line 1406
    :cond_7f
    :goto_7f
    const-string p0, "fog 0|1|2"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1407
    return-void

    .line 1391
    :cond_85
    :goto_85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fogName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method private static fogName(I)Ljava/lang/String;
    .registers 2

    .line 1414
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 1415
    const-string p0, "1 \u7ecf\u5178"

    return-object p0

    .line 1417
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 1418
    const-string p0, "2 \u63a2\u7d22"

    return-object p0

    .line 1420
    :cond_c
    const-string p0, "0 \u5173"

    return-object p0
.end method

.method private static fogRebuild()V
    .registers 2

    .line 1425
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->currentPlayer()I

    move-result v0

    .line 1426
    if-ltz v0, :cond_16

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-nez v1, :cond_b

    goto :goto_16

    .line 1430
    :cond_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->buildFogOfWar(I)V

    .line 1431
    const-string v0, "\u5df2\u91cd\u7b97\u8ff7\u96fe"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1434
    goto :goto_22

    .line 1427
    :cond_16
    :goto_16
    const-string v0, "\u6ca1\u6709\u73a9\u5bb6"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 1428
    return-void

    .line 1432
    :catchall_1c
    move-exception v0

    .line 1433
    const-string v0, "\u91cd\u7b97\u8ff7\u96fe\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1435
    :goto_22
    return-void
.end method

.method private static fort()V
    .registers 3

    .line 1048
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1049
    if-gez v0, :cond_7

    .line 1050
    return-void

    .line 1052
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    .line 1053
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 1054
    const-string v0, "\u5821\u5792 7"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method private static fps()V
    .registers 2

    .line 434
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e27\u7387\u663e\u793a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z

    if-eqz v1, :cond_1b

    const-string v1, "\u5f00"

    goto :goto_1d

    :cond_1b
    const-string v1, "\u5173"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 438
    goto :goto_2f

    .line 436
    :catchall_29
    move-exception v0

    .line 437
    const-string v0, "\u5e27\u7387\u5f00\u5173\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 439
    :goto_2f
    return-void
.end method

.method private static go([Ljava/lang/String;)V
    .registers 4

    .line 466
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->ready()Z

    move-result v0

    if-eqz v0, :cond_95

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    if-nez v0, :cond_c

    goto/16 :goto_95

    .line 470
    :cond_c
    if-eqz p0, :cond_8c

    array-length v0, p0

    if-nez v0, :cond_13

    goto/16 :goto_8c

    .line 475
    :cond_13
    const-string v0, "neutral"

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 476
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->neutral()V

    .line 477
    return-void

    .line 479
    :cond_22
    const-string v0, "civ"

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 480
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    .line 481
    if-gtz p0, :cond_38

    .line 482
    return-void

    .line 484
    :cond_38
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToCivilizationBox(IZ)V

    .line 485
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 486
    return-void

    .line 488
    :cond_4f
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveProv(Ljava/lang/String;)I

    move-result p0

    .line 489
    if-gez p0, :cond_5a

    .line 490
    return-void

    .line 492
    :cond_5a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    .line 493
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    .line 494
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 495
    if-nez v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7701 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_88

    :cond_84
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_88
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 498
    goto :goto_a1

    .line 471
    :cond_8c
    :goto_8c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->worldView()V

    .line 472
    const-string p0, "\u5168\u56fe"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 473
    return-void

    .line 467
    :cond_95
    :goto_95
    const-string p0, "\u5730\u56fe\u672a\u5c31\u7eea"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_0 .. :try_end_9a} :catchall_9b

    .line 468
    return-void

    .line 496
    :catchall_9b
    move-exception p0

    .line 497
    const-string p0, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 499
    :goto_a1
    return-void
.end method

.method private static god([Ljava/lang/String;)V
    .registers 6

    .line 1912
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_10

    :cond_7
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v1

    goto :goto_14

    :cond_10
    :goto_10
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v1

    .line 1913
    :goto_14
    if-gez v1, :cond_17

    .line 1914
    return-void

    .line 1916
    :cond_17
    if-eqz p0, :cond_1c

    array-length v2, p0

    if-nez v2, :cond_1e

    :cond_1c
    new-array p0, v0, [Ljava/lang/String;

    :cond_1e
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->boost([Ljava/lang/String;Z)V

    .line 1917
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->ownLandProvinces(I)[I

    move-result-object p0

    .line 1918
    nop

    .line 1919
    const/4 v2, 0x0

    :goto_27
    array-length v3, p0

    if-ge v0, v3, :cond_39

    .line 1920
    aget v3, p0, v0

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applyAddArmy(II)I

    move-result v3

    if-ltz v3, :cond_36

    .line 1921
    add-int/lit8 v2, v2, 0x1

    .line 1919
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1924
    :cond_39
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result p0

    .line 1925
    if-ltz p0, :cond_6c

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isLand(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1927
    :try_start_45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_6a

    .line 1929
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5d

    .line 1930
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    .line 1932
    :cond_5d
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_67

    .line 1933
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    .line 1935
    :cond_67
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V
    :try_end_6a
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6b

    .line 1938
    :cond_6a
    goto :goto_6c

    .line 1937
    :catchall_6b
    move-exception v0

    .line 1940
    :cond_6c
    :goto_6c
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 1941
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u795e\u6a21\u5f0f "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5df2\u52a0\u5f3a\uff0c\u9646\u7701\u52a0\u5175 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1942
    return-void
.end method

.method private static hi()V
    .registers 1

    .line 442
    const-string v0, "\u4f60\u597d"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private static ideologyAllowed(Ljava/util/List;I)Z
    .registers 5

    .line 1629
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1630
    return v0

    .line 1633
    :cond_4
    const/4 v1, 0x0

    if-ltz p1, :cond_23

    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_e

    goto :goto_23

    .line 1636
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 1637
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_1f

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    .line 1638
    :catchall_21
    move-exception p0

    .line 1639
    return v1

    .line 1634
    :cond_23
    :goto_23
    return v1
.end method

.method private static idsOff()V
    .registers 1

    .line 638
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildDrawArmy()V

    .line 639
    const-string v0, "\u6062\u590d\u519b\u961f\u663e\u793a"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 642
    goto :goto_11

    .line 640
    :catchall_b
    move-exception v0

    .line 641
    const-string v0, "\u6062\u590d\u519b\u961f\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 643
    :goto_11
    return-void
.end method

.method private static idsOn()V
    .registers 1

    .line 629
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->buildDrawArmy_ShowIDs()V

    .line 630
    const-string v0, "\u519b\u961f\u663e\u793a\u7f16\u53f7"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 633
    goto :goto_11

    .line 631
    :catchall_b
    move-exception v0

    .line 632
    const-string v0, "\u663e\u793a\u7f16\u53f7\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 634
    :goto_11
    return-void
.end method

.method private static lib()V
    .registers 2

    .line 2064
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NO_LIBERITY:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->NO_LIBERITY:Z

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u653e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->NO_LIBERITY:Z

    if-eqz v1, :cond_18

    const-string v1, "\u7981\u6b62"

    goto :goto_1a

    :cond_18
    const-string v1, "\u5141\u8bb8"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 2066
    return-void
.end method

.method private static listCivs()V
    .registers 6

    .line 605
    const-string v0, " "

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    .line 606
    const/4 v2, 0x1

    :goto_9
    if-ge v2, v1, :cond_4d

    .line 607
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 608
    if-nez v3, :cond_14

    .line 609
    goto :goto_4a

    .line 611
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7701"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_4e

    .line 606
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 615
    :cond_4d
    goto :goto_54

    .line 613
    :catchall_4e
    move-exception v0

    .line 614
    const-string v0, "\u5217\u8868\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 616
    :goto_54
    return-void
.end method

.method private static longDelta([Ljava/lang/String;J)J
    .registers 3

    .line 2257
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->firstLong([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 2258
    if-nez p0, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_b
    return-wide p1
.end method

.method private static moveCapital(II)V
    .registers 6

    .line 1681
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v0

    .line 1682
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_33

    .line 1683
    if-ne v1, p1, :cond_c

    .line 1684
    goto :goto_30

    .line 1686
    :cond_c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    .line 1687
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-ne v3, p0, :cond_30

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_30

    .line 1688
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCapitalProvinceID(I)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_34

    .line 1689
    return-void

    .line 1682
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1693
    :cond_33
    goto :goto_35

    .line 1692
    :catchall_34
    move-exception p0

    .line 1694
    :goto_35
    return-void
.end method

.method private static neutral()V
    .registers 4

    .line 514
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v0

    .line 515
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_5c

    .line 516
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_59

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_24

    .line 518
    goto :goto_59

    .line 520
    :cond_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    .line 521
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    if-eqz v0, :cond_3e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 522
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    .line 524
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e2d\u7acb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 525
    return-void

    .line 515
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 527
    :cond_5c
    const-string v0, "\u6ca1\u6709\u4e2d\u7acb\u9646\u5730"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_62

    .line 530
    goto :goto_68

    .line 528
    :catchall_62
    move-exception v0

    .line 529
    const-string v0, "\u4e2d\u7acb\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 531
    :goto_68
    return-void
.end method

.method private static own([Ljava/lang/String;Z)V
    .registers 7

    .line 1644
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1645
    if-gez v0, :cond_7

    .line 1646
    return-void

    .line 1648
    :cond_7
    if-eqz p0, :cond_17

    array-length v1, p0

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    goto :goto_1b

    :cond_17
    :goto_17
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 1649
    :goto_1b
    if-gez p0, :cond_1e

    .line 1650
    return-void

    .line 1653
    :cond_1e
    :try_start_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 1654
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    .line 1655
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v3

    if-eqz v3, :cond_35

    if-lez v2, :cond_35

    if-eq v2, p0, :cond_35

    .line 1656
    invoke-static {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->moveCapital(II)V

    .line 1658
    :cond_35
    if-eqz p1, :cond_3a

    .line 1659
    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProvince(I)V

    .line 1661
    :cond_3a
    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID(IZ)V

    .line 1662
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    .line 1663
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    .line 1664
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    .line 1665
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-eq v4, p0, :cond_57

    .line 1666
    :cond_54
    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCapitalProvinceID(I)V

    .line 1668
    :cond_57
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 1669
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1670
    if-eq v2, p0, :cond_62

    .line 1671
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1673
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6c

    const-string v0, "\u541e\u5e76 "

    goto :goto_6e

    :cond_6c
    const-string v0, "\u5360\u9886 "

    :goto_6e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_90

    .line 1676
    goto :goto_9b

    .line 1674
    :catchall_90
    move-exception p0

    .line 1675
    if-eqz p1, :cond_96

    const-string p0, "\u541e\u5e76\u5931\u8d25"

    goto :goto_98

    :cond_96
    const-string p0, "\u5360\u9886\u5931\u8d25"

    :goto_98
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1677
    :goto_9b
    return-void
.end method

.method private static ownerOfActive()I
    .registers 2

    .line 568
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result v0

    .line 569
    if-gez v0, :cond_8

    .line 570
    const/4 v0, -0x1

    return v0

    .line 572
    :cond_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    return v0
.end method

.method private static party()V
    .registers 8

    .line 2101
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    .line 2104
    :cond_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2106
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    add-int/2addr v1, v2

    .line 2107
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1e

    .line 2108
    const/4 v1, 0x1

    .line 2110
    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_47

    .line 2111
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-lez v4, :cond_2d

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 2112
    :goto_2e
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-lez v5, :cond_39

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    .line 2113
    :goto_3a
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v7, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2115
    :cond_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShitTime:J

    .line 2116
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-eqz v0, :cond_62

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2117
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    .line 2119
    :cond_62
    const-string v0, "\u5f69\u65d7"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_0 .. :try_end_67} :catchall_68

    .line 2122
    goto :goto_6e

    .line 2120
    :catchall_68
    move-exception v0

    .line 2121
    const-string v0, "\u5f69\u65d7\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2123
    :goto_6e
    return-void
.end method

.method private static peaceCmd([Ljava/lang/String;Z)V
    .registers 8

    .line 1167
    nop

    .line 1168
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eqz p0, :cond_34

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    goto :goto_34

    .line 1181
    :cond_b
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v2

    .line 1182
    aget-object v4, p0, v0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v4

    .line 1183
    if-ltz v2, :cond_33

    if-gez v4, :cond_1d

    goto :goto_33

    .line 1186
    :cond_1d
    array-length v5, p0

    if-le v5, v3, :cond_57

    aget-object v5, p0, v3

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 1187
    aget-object p0, p0, v3

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_57

    .line 1184
    :cond_33
    :goto_33
    return-void

    .line 1169
    :cond_34
    :goto_34
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v2

    .line 1170
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p0

    .line 1171
    if-lez v2, :cond_d9

    if-gez p0, :cond_44

    goto/16 :goto_d9

    .line 1175
    :cond_44
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    .line 1176
    if-gtz v4, :cond_56

    .line 1177
    const-string p0, "\u5f53\u524d\u7701\u65e0\u56fd\u5bb6"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1178
    return-void

    .line 1180
    :cond_56
    nop

    .line 1190
    :cond_57
    :goto_57
    if-ge v1, v0, :cond_5a

    .line 1191
    goto :goto_5b

    .line 1190
    :cond_5a
    move v0, v1

    .line 1193
    :goto_5b
    const/16 p0, 0x32

    if-le v0, p0, :cond_61

    .line 1194
    const/16 v0, 0x32

    .line 1197
    :cond_61
    :try_start_61
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    .line 1198
    invoke-virtual {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result v1

    if-gez v1, :cond_75

    .line 1199
    const-string p0, "\u53cc\u65b9\u4e0d\u5728\u6218\u4e89\u4e2d"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1200
    return-void

    .line 1202
    :cond_75
    if-eqz p1, :cond_7a

    .line 1203
    invoke-virtual {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->whitePeace_ReturnProvincesToRightfulOwners(II)V

    .line 1205
    :cond_7a
    invoke-virtual {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {p0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result v1

    if-ltz v1, :cond_8c

    .line 1206
    :cond_86
    invoke-virtual {p0, v2, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->acceptPeaceOffer(III)V

    .line 1207
    invoke-static {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->pruneWar(II)V

    .line 1209
    :cond_8c
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1210
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9c

    const-string p1, "\u5f52\u8fd8\u5e76\u548c\u8c08 "

    goto :goto_9e

    :cond_9c
    const-string p1, "\u548c\u8c08 "

    :goto_9e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " / "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u505c\u6218"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_61 .. :try_end_d1} :catchall_d2

    .line 1214
    goto :goto_d8

    .line 1212
    :catchall_d2
    move-exception p0

    .line 1213
    const-string p0, "\u548c\u8c08\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1215
    :goto_d8
    return-void

    .line 1172
    :cond_d9
    :goto_d9
    if-eqz p1, :cond_de

    const-string p0, "peace ret A B [\u505c\u6218]"

    goto :goto_e0

    :cond_de
    const-string p0, "peace A B [\u505c\u6218]  \u6216\u5148\u9009\u4e2d\u4ea4\u6218\u56fd\u7701\u4efd"

    :goto_e0
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private static peaceMsg([Ljava/lang/String;)V
    .registers 4

    .line 1142
    if-eqz p0, :cond_73

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    goto :goto_73

    .line 1146
    :cond_7
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v0

    .line 1147
    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    .line 1148
    if-ltz v0, :cond_72

    if-gez p0, :cond_1a

    goto :goto_72

    .line 1152
    :cond_1a
    :try_start_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1153
    const-string p0, "\u53cc\u65b9\u4e0d\u5728\u6218\u4e89\u4e2d"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1156
    :cond_28
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 1157
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civilization_Diplomacy_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Message_WeCanSignPeace;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bae\u548c\u6d88\u606f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_1a .. :try_end_6a} :catchall_6b

    .line 1161
    goto :goto_71

    .line 1159
    :catchall_6b
    move-exception p0

    .line 1160
    const-string p0, "\u8bae\u548c\u6d88\u606f\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1162
    :goto_71
    return-void

    .line 1149
    :cond_72
    :goto_72
    return-void

    .line 1143
    :cond_73
    :goto_73
    const-string p0, "peace-msg \u53d1\u8d77\u65b9 \u63a5\u6536\u65b9"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method private static peacePair(IIIZ)V
    .registers 6

    .line 1386
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peaceCmd([Ljava/lang/String;Z)V

    .line 1387
    return-void
.end method

.method private static play()V
    .registers 6

    .line 656
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 657
    if-gez v0, :cond_7

    .line 658
    return-void

    .line 660
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    .line 661
    if-gtz v0, :cond_19

    .line 662
    const-string v0, "\u8bf7\u9009\u62e9\u6709\u56fd\u5bb6\u7684\u9646\u5730\u7701"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 663
    return-void

    .line 666
    :cond_19
    :try_start_19
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    .line 667
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    .line 668
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ne v1, v3, :cond_2e

    .line 669
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->removePlayer(I)V

    .line 672
    :cond_2e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 673
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 674
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayerID_ByCivID(I)I

    move-result v0

    .line 675
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    add-int/2addr v4, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v5

    if-ne v4, v5, :cond_4d

    .line 676
    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    .line 678
    :cond_4d
    if-ltz v0, :cond_54

    .line 679
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->removePlayer(I)V

    .line 681
    :cond_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-eqz v0, :cond_64

    .line 682
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->buildFogOfWar(I)V

    .line 684
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79fb\u9664\u73a9\u5bb6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 685
    return-void

    .line 687
    :cond_7f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->addPlayer(I)V

    .line 688
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9b

    .line 689
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_9b

    .line 691
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->buildMetProvincesAndCivs()V

    .line 694
    :cond_9b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_ad

    .line 696
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    .line 698
    :cond_ad
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-eqz v0, :cond_bd

    .line 699
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->buildFogOfWar(I)V

    .line 701
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5165\u73a9\u5bb6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_19 .. :try_end_d7} :catchall_d8

    .line 704
    goto :goto_de

    .line 702
    :catchall_d8
    move-exception v0

    .line 703
    const-string v0, "play \u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 705
    :goto_de
    return-void
.end method

.method private static port()V
    .registers 3

    .line 1058
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1059
    if-gez v0, :cond_7

    .line 1060
    return-void

    .line 1062
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-gez v2, :cond_19

    .line 1064
    const-string v0, "\u4e0d\u662f\u6cbf\u6d77"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1065
    return-void

    .line 1067
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    .line 1068
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 1069
    const-string v0, "\u6e2f\u53e3 1"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method private static provInfo([Ljava/lang/String;)V
    .registers 6

    .line 576
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_10

    :cond_7
    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveProv(Ljava/lang/String;)I

    move-result p0

    goto :goto_14

    :cond_10
    :goto_10
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result p0

    .line 577
    :goto_14
    if-gez p0, :cond_17

    .line 578
    return-void

    .line 580
    :cond_17
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->province(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 581
    if-nez v1, :cond_23

    .line 582
    const-string p0, "\u7701\u4efd\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 583
    return-void

    .line 585
    :cond_23
    nop

    .line 587
    :try_start_24
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 588
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_35

    goto :goto_34

    .line 587
    :cond_33
    const/4 v2, 0x0

    .line 591
    :goto_34
    goto :goto_37

    .line 590
    :catchall_35
    move-exception v2

    const/4 v2, 0x0

    .line 592
    :goto_37
    nop

    .line 594
    :try_start_38
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    .line 596
    goto :goto_3e

    .line 595
    :catchall_3d
    move-exception v3

    .line 597
    :goto_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7701 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " \u56fd\u5bb6 "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eba\u53e3 "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " \u7ecf\u6d4e "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " \u519b\u961f "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5821 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u6e2f "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5854 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5e78\u798f "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u98ce\u9669 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5f52\u5c5e "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private static pruneWar(II)V
    .registers 7

    .line 1218
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    .line 1219
    invoke-virtual {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result p0

    .line 1220
    if-gez p0, :cond_9

    .line 1221
    return-void

    .line 1223
    :cond_9
    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object p1

    .line 1224
    if-nez p1, :cond_10

    .line 1225
    return-void

    .line 1227
    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2a

    .line 1228
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->dropPeaceful(Lage/of/civilizations2/jakowski/lukasz/War_GameData;Z)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->dropPeaceful(Lage/of/civilizations2/jakowski/lukasz/War_GameData;Z)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 1229
    :cond_24
    :goto_24
    if-nez v3, :cond_27

    .line 1230
    goto :goto_2a

    .line 1227
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1233
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-lez v1, :cond_36

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result p1

    if-gtz p1, :cond_39

    .line 1234
    :cond_36
    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->removeWarData(I)V

    .line 1236
    :cond_39
    return-void
.end method

.method private static reg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 146
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static rel([Ljava/lang/String;)V
    .registers 5

    .line 1767
    if-eqz p0, :cond_58

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    goto :goto_58

    .line 1771
    :cond_7
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v0

    .line 1772
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v1

    .line 1773
    if-ltz v0, :cond_57

    if-gez v1, :cond_1a

    goto :goto_57

    .line 1777
    :cond_1a
    const/4 v2, 0x2

    :try_start_1b
    aget-object p0, p0, v2

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 1778
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    .line 1779
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1, v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    .line 1780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u7cfb "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_50

    .line 1783
    goto :goto_56

    .line 1781
    :catchall_50
    move-exception p0

    .line 1782
    const-string p0, "\u5173\u7cfb\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1784
    :goto_56
    return-void

    .line 1774
    :cond_57
    :goto_57
    return-void

    .line 1768
    :cond_58
    :goto_58
    const-string p0, "rel A B \u6570\u503c"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1769
    return-void
.end method

.method private static reload([Ljava/lang/String;)V
    .registers 3

    .line 2069
    if-eqz p0, :cond_e

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_e

    :cond_6
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveProv(Ljava/lang/String;)I

    move-result p0

    goto :goto_12

    :cond_e
    :goto_e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result p0

    .line 2070
    :goto_12
    if-gez p0, :cond_15

    .line 2071
    return-void

    .line 2074
    :cond_15
    :try_start_15
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;->updateProvince(I)V

    .line 2075
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u8f7d\u7701 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_32

    .line 2079
    goto :goto_38

    .line 2077
    :catchall_32
    move-exception p0

    .line 2078
    const-string p0, "\u91cd\u8f7d\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2080
    :goto_38
    return-void
.end method

.method private static resolveAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 151
    if-nez p0, :cond_3

    .line 152
    return-object p0

    .line 154
    :cond_3
    const-string v0, "clear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "clr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_8b

    .line 157
    :cond_15
    const-string v0, "exit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "quit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_88

    .line 160
    :cond_26
    const-string v0, "annex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 161
    const-string p0, "own annex"

    return-object p0

    .line 163
    :cond_31
    const-string v0, "reveal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "\u53d1\u73b0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_85

    .line 166
    :cond_42
    const-string v0, "info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 167
    const-string p0, "who"

    return-object p0

    .line 169
    :cond_4d
    const-string v0, "\u548c\u8c08"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 170
    const-string p0, "peace"

    return-object p0

    .line 172
    :cond_58
    const-string v0, "\u5ba3\u6218"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 173
    const-string p0, "war"

    return-object p0

    .line 175
    :cond_63
    const-string v0, "\u7ed3\u76df"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 176
    const-string p0, "ally"

    return-object p0

    .line 178
    :cond_6e
    const-string v0, "\u9644\u5eb8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 179
    const-string p0, "vassal"

    return-object p0

    .line 181
    :cond_79
    const-string v0, "\u52a0\u5f3a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 182
    const-string p0, "boost"

    return-object p0

    .line 184
    :cond_84
    return-object p0

    .line 164
    :cond_85
    :goto_85
    const-string p0, "discover"

    return-object p0

    .line 158
    :cond_88
    :goto_88
    const-string p0, "q"

    return-object p0

    .line 155
    :cond_8b
    :goto_8b
    const-string p0, "cls"

    return-object p0
.end method

.method private static resolveIdeology(Ljava/lang/String;)I
    .registers 6

    .line 1486
    const/4 v0, -0x1

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_54

    .line 1489
    :cond_a
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1490
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    .line 1491
    if-eqz v1, :cond_20

    .line 1492
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1493
    if-ltz p0, :cond_1f

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v1

    if-ge p0, v1, :cond_1f

    .line 1494
    return p0

    .line 1496
    :cond_1f
    return v0

    .line 1498
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1499
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v3

    if-ge v1, v3, :cond_53

    .line 1500
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    .line 1501
    if-nez v3, :cond_32

    .line 1502
    goto :goto_50

    .line 1504
    :cond_32
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1505
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1506
    return v1

    .line 1508
    :cond_43
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1509
    return v1

    .line 1499
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1512
    :cond_53
    return v0

    .line 1487
    :cond_54
    :goto_54
    return v0
.end method

.method static run(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 189
    const-string v0, "calc "

    :try_start_2
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->resolveAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    const-string v1, "term"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a5

    const-string v1, "q"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_4a5

    .line 192
    :cond_18
    const-string v1, "console"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 193
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->toggleConsole()V

    goto/16 :goto_4a8

    .line 194
    :cond_25
    const-string v1, "h"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_49d

    const-string v1, "help"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49d

    const-string v1, "?"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto/16 :goto_49d

    .line 196
    :cond_40
    const-string v1, "cls"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 197
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->cls()V

    goto/16 :goto_4a8

    .line 198
    :cond_4d
    const-string v1, "sys"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 199
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->sys()V

    goto/16 :goto_4a8

    .line 200
    :cond_5a
    const-string v1, "dbg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 201
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->dbg()V

    goto/16 :goto_4a8

    .line 202
    :cond_67
    const-string v1, "fps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 203
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fps()V

    goto/16 :goto_4a8

    .line 204
    :cond_74
    const-string v1, "hi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 205
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->hi()V

    goto/16 :goto_4a8

    .line 206
    :cond_81
    const-string v1, "exportscen"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 207
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->exportScenarios([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 208
    :cond_8e
    const-string v1, "go"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 209
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->go([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 210
    :cond_9b
    const-string v1, "neutral"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 211
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->neutral()V

    goto/16 :goto_4a8

    .line 212
    :cond_a8
    const-string v1, "zoom"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 213
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->zoom([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 214
    :cond_b5
    const-string v1, "civ"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 215
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civInfo([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 216
    :cond_c2
    const-string v1, "prov"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 217
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->provInfo([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 218
    :cond_cf
    const-string v1, "ls"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 219
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->listCivs()V

    goto/16 :goto_4a8

    .line 220
    :cond_dc
    const-string v1, "id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 221
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->showId()V

    goto/16 :goto_4a8

    .line 222
    :cond_e9
    const-string v1, "ids"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 223
    const-string p0, "ids on | ids off"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 224
    :cond_f8
    const-string v1, "ids on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 225
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->idsOn()V

    goto/16 :goto_4a8

    .line 226
    :cond_105
    const-string v1, "ids off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 227
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->idsOff()V

    goto/16 :goto_4a8

    .line 228
    :cond_112
    const-string v1, "watch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 229
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->watch()V

    goto/16 :goto_4a8

    .line 230
    :cond_11f
    const-string v1, "play"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 231
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->play()V

    goto/16 :goto_4a8

    .line 232
    :cond_12c
    const-string v1, "civ +"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 233
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addCiv([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 234
    :cond_139
    const-string v1, "set"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47e

    const-string v1, "add"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47e

    const-string v1, "ally"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47e

    const-string v1, "vassal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47e

    const-string v1, "core"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    goto/16 :goto_47e

    .line 236
    :cond_163
    const-string v1, "set tech"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 237
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setTech([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 238
    :cond_170
    const-string v1, "add pop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 239
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addPopCmd([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 240
    :cond_17d
    const-string v1, "add eco"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 241
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addEcoCmd([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 242
    :cond_18a
    const-string v1, "add army"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 243
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addArmyCmd([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 244
    :cond_197
    const-string v1, "set army"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 245
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setArmy([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 246
    :cond_1a4
    const-string v1, "fill army"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 247
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fillArmy([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 248
    :cond_1b1
    const-string v1, "add money"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 249
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addMoney([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 250
    :cond_1be
    const-string v1, "add move"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 251
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addMove([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 252
    :cond_1cb
    const-string v1, "add diplo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 253
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->addDiplo([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 254
    :cond_1d8
    const-string v1, "fort"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 255
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fort()V

    goto/16 :goto_4a8

    .line 256
    :cond_1e5
    const-string v1, "port"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    .line 257
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->port()V

    goto/16 :goto_4a8

    .line 258
    :cond_1f2
    const-string v1, "tower"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 259
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->tower()V

    goto/16 :goto_4a8

    .line 260
    :cond_1ff
    const-string v1, "war"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c

    .line 261
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->war([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 262
    :cond_20c
    const-string v1, "peace-msg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_219

    .line 263
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peaceMsg([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 264
    :cond_219
    const-string v1, "lib"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 265
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->lib()V

    goto/16 :goto_4a8

    .line 266
    :cond_226
    const-string v1, "reload"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_233

    .line 267
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->reload([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 268
    :cond_233
    const-string v1, "spin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_240

    .line 269
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->spin()V

    goto/16 :goto_4a8

    .line 270
    :cond_240
    const-string v1, "party"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24d

    .line 271
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->party()V

    goto/16 :goto_4a8

    .line 272
    :cond_24d
    const-string v1, "peace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25a

    .line 273
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peaceCmd([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 274
    :cond_25a
    const-string v1, "peace ret"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_268

    .line 275
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peaceCmd([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 276
    :cond_268
    const-string v1, "ally +"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_275

    .line 277
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ally([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 278
    :cond_275
    const-string v1, "ally -"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    .line 279
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ally([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 280
    :cond_282
    const-string v1, "vassal +"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28f

    .line 281
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->vassalOn([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 282
    :cond_28f
    const-string v1, "vassal -"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 283
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->vassalOff([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 284
    :cond_29c
    const-string v1, "fog"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a9

    .line 285
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fog([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 286
    :cond_2a9
    const-string v1, "fog rebuild"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b6

    .line 287
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fogRebuild()V

    goto/16 :goto_4a8

    .line 288
    :cond_2b6
    const-string v1, "discover"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    .line 289
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->discover()V

    goto/16 :goto_4a8

    .line 290
    :cond_2c3
    const-string v1, "diff"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d0

    .line 291
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->diff([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 292
    :cond_2d0
    const-string v1, "set gov"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 293
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setGov([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 294
    :cond_2dd
    const-string v1, "scan gov"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ea

    .line 295
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->scanGov([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 296
    :cond_2ea
    const-string v1, "scan war"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f7

    .line 297
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->scanWar()V

    goto/16 :goto_4a8

    .line 298
    :cond_2f7
    const-string v1, "own"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_304

    .line 299
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->own([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 300
    :cond_304
    const-string v1, "own annex"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_311

    .line 301
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->own([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 302
    :cond_311
    const-string v1, "core +"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 303
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->core([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 304
    :cond_31e
    const-string v1, "core -"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32b

    .line 305
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->core([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 306
    :cond_32b
    const-string v1, "set happy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_338

    .line 307
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setHappy([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 308
    :cond_338
    const-string v1, "set risk"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_345

    .line 309
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setRisk([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 310
    :cond_345
    const-string v1, "rel"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_352

    .line 311
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->rel([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 312
    :cond_352
    const-string v1, "set money"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35f

    .line 313
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setMoney([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 314
    :cond_35f
    const-string v1, "set move"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36c

    .line 315
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setMove([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 316
    :cond_36c
    const-string v1, "set manpower"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_379

    .line 317
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setMan([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 318
    :cond_379
    const-string v1, "set diplo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_386

    .line 319
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setDiplo([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 320
    :cond_386
    const-string v1, "boost"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_393

    .line 321
    invoke-static {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->boost([Ljava/lang/String;Z)V

    goto/16 :goto_4a8

    .line 322
    :cond_393
    const-string v1, "god"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a0

    .line 323
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->god([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 324
    :cond_3a0
    const-string v1, "who"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ad

    .line 325
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->who()V

    goto/16 :goto_4a8

    .line 326
    :cond_3ad
    const-string v1, "date"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 327
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->date([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 328
    :cond_3ba
    const-string v1, "hist"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c7

    .line 329
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleHistory;->print()V

    goto/16 :goto_4a8

    .line 330
    :cond_3c7
    const-string v1, "fav"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d4

    .line 331
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fav([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 332
    :cond_3d4
    const-string v1, "sug"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e1

    .line 333
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->sug([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 334
    :cond_3e1
    const-string v1, "run"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ee

    .line 335
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->runFile([Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 336
    :cond_3ee
    const-string v1, "sh"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ff

    .line 337
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->runSh(Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 338
    :cond_3ff
    const-string v1, "calc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_405
    .catchall {:try_start_2 .. :try_end_405} :catchall_4a9

    const-string v3, "reset"

    const-string v4, "funcs"

    const-string v5, "vars"

    if-nez v1, :cond_427

    :try_start_40d
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_427

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_427

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_420

    goto :goto_427

    .line 353
    :cond_420
    const-string p0, "\u672a\u77e5\u547d\u4ee4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    goto/16 :goto_4a8

    .line 340
    :cond_427
    :goto_427
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_432

    .line 341
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->printHelp()V

    goto/16 :goto_4a8

    .line 342
    :cond_432
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43c

    .line 343
    invoke-static {v5, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->handleExplicit(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4a8

    .line 344
    :cond_43c
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_446

    .line 345
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->resetVars()V

    goto :goto_4a8

    .line 346
    :cond_446
    if-eqz p1, :cond_47a

    array-length p0, p1

    if-nez p0, :cond_44c

    goto :goto_47a

    .line 349
    :cond_44c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->handleExplicit(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4a8

    .line 347
    :cond_47a
    :goto_47a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCalc;->printTopicHelp()V

    goto :goto_4a8

    .line 235
    :cond_47e
    :goto_47e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    goto :goto_4a8

    .line 195
    :cond_49d
    :goto_49d
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->printHelpTopic(Ljava/lang/String;)V

    goto :goto_4a8

    .line 191
    :cond_4a5
    :goto_4a5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->term()V
    :try_end_4a8
    .catchall {:try_start_40d .. :try_end_4a8} :catchall_4a9

    .line 361
    :goto_4a8
    goto :goto_4b4

    .line 355
    :catchall_4a9
    move-exception p0

    .line 357
    :try_start_4aa
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4ad
    .catchall {:try_start_4aa .. :try_end_4ad} :catchall_4ae

    .line 359
    goto :goto_4af

    .line 358
    :catchall_4ae
    move-exception p0

    .line 360
    :goto_4af
    const-string p0, "\u547d\u4ee4\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 362
    :goto_4b4
    return-void
.end method

.method private static runFile([Ljava/lang/String;)V
    .registers 5

    .line 2189
    if-eqz p0, :cond_73

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_73

    .line 2193
    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2194
    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2198
    :cond_1d
    :try_start_1d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-nez v0, :cond_27

    .line 2199
    const-string p0, "\u8d44\u6e90\u7cfb\u7edf\u672a\u5c31\u7eea"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2200
    return-void

    .line 2202
    :cond_27
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "console/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 2203
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_55

    .line 2207
    :cond_4d
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->runScript(Ljava/lang/String;)V

    .line 2210
    goto :goto_72

    .line 2204
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u811a\u672c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_6c

    .line 2205
    return-void

    .line 2208
    :catchall_6c
    move-exception p0

    .line 2209
    const-string p0, "\u811a\u672c\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2211
    :goto_72
    return-void

    .line 2190
    :cond_73
    :goto_73
    const-string p0, "run \u540d\u79f0"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2191
    return-void
.end method

.method private static runScript(Ljava/lang/String;)V
    .registers 5

    .line 2222
    if-nez p0, :cond_3

    .line 2223
    return-void

    .line 2225
    :cond_3
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2226
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_46

    .line 2227
    aget-object v2, p0, v1

    if-nez v2, :cond_15

    const-string v2, ""

    goto :goto_1b

    :cond_15
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2228
    :goto_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2229
    goto :goto_43

    .line 2231
    :cond_2a
    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2232
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2234
    :cond_40
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->execute(Ljava/lang/String;)V

    .line 2226
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2236
    :cond_46
    return-void
.end method

.method private static runSh(Ljava/lang/String;)V
    .registers 3

    .line 2214
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 2218
    :cond_d
    const/16 v0, 0x3b

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->runScript(Ljava/lang/String;)V

    .line 2219
    return-void

    .line 2215
    :cond_19
    :goto_19
    const-string p0, "sh \u547d\u4ee4;\u547d\u4ee4"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method private static safeMan(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    .registers 1

    .line 2296
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    .line 2297
    :catchall_5
    move-exception p0

    .line 2298
    const/4 p0, 0x0

    return p0
.end method

.method private static scanGov([Ljava/lang/String;)V
    .registers 8

    .line 1608
    const-string v0, " "

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    array-length v2, p0

    if-nez v2, :cond_9

    goto :goto_12

    :cond_9
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    goto :goto_16

    :cond_12
    :goto_12
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result p0

    .line 1609
    :goto_16
    if-gez p0, :cond_19

    .line 1610
    return-void

    .line 1613
    :cond_19
    :try_start_19
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    .line 1614
    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->canChangeToIdeology(I)Ljava/util/List;

    move-result-object v3

    .line 1615
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v4

    .line 1616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u524d "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 1617
    nop

    :goto_56
    if-ge v1, v4, :cond_96

    .line 1618
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object p0

    .line 1619
    if-eqz p0, :cond_6a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_65

    goto :goto_6a

    :cond_65
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_6c

    :cond_6a
    :goto_6a
    const-string p0, "?"

    .line 1620
    :goto_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->ideologyAllowed(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_86

    const-string v5, " \u53ef"

    goto :goto_88

    :cond_86
    const-string v5, " \u5426"

    :goto_88
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_19 .. :try_end_93} :catchall_97

    .line 1617
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 1624
    :cond_96
    goto :goto_9d

    .line 1622
    :catchall_97
    move-exception p0

    .line 1623
    const-string p0, "\u626b\u63cf\u653f\u4f53\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1625
    :goto_9d
    return-void
.end method

.method private static scanWar()V
    .registers 5

    .line 1947
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v0

    .line 1948
    if-gtz v0, :cond_c

    .line 1949
    const-string v0, "\u65e0\u73a9\u5bb6\u56fd\u5bb6"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1950
    return-void

    .line 1952
    :cond_c
    nop

    .line 1953
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_4b

    .line 1954
    if-ne v1, v0, :cond_1a

    .line 1955
    goto :goto_48

    .line 1957
    :cond_1a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    .line 1953
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1962
    :cond_4b
    if-nez v2, :cond_53

    .line 1963
    const-string v0, "\u5f53\u524d\u65e0\u4ea4\u6218"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_6f

    .line 1965
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4ea4\u6218 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u56fd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    .line 1969
    :goto_6f
    goto :goto_76

    .line 1967
    :catchall_70
    move-exception v0

    .line 1968
    const-string v0, "scan war \u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1970
    :goto_76
    return-void
.end method

.method private static setArmy([Ljava/lang/String;)V
    .registers 5

    .line 898
    if-eqz p0, :cond_59

    array-length v0, p0

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_59

    .line 902
    :cond_f
    aget-object v1, p0, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 903
    if-gez v1, :cond_21

    .line 904
    const-string p0, "\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 905
    return-void

    .line 907
    :cond_21
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2e

    aget-object p0, p0, v3

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->isStar(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 908
    :goto_2f
    if-eqz v3, :cond_35

    .line 909
    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->batchArmy(IZ)V

    .line 910
    return-void

    .line 912
    :cond_35
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result p0

    .line 913
    if-gez p0, :cond_3c

    .line 914
    return-void

    .line 916
    :cond_3c
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applySetArmy(II)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 917
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u519b\u961f "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 919
    :cond_58
    return-void

    .line 899
    :cond_59
    :goto_59
    const-string p0, "set army \u6570\u91cf [*]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method private static setDiplo([Ljava/lang/String;)V
    .registers 3

    .line 1835
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->firstInt([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1836
    if-nez v0, :cond_c

    .line 1837
    const-string p0, "set diplo \u6570\u91cf [\u56fd\u5bb6]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1838
    return-void

    .line 1840
    :cond_c
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result p0

    .line 1841
    if-gez p0, :cond_13

    .line 1842
    return-void

    .line 1844
    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1845
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    .line 1846
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5916\u4ea4 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method private static setFloatProv([Ljava/lang/String;Z)V
    .registers 6

    .line 1733
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1734
    if-gez v0, :cond_7

    .line 1735
    return-void

    .line 1737
    :cond_7
    if-eqz p0, :cond_80

    array-length v1, p0

    if-nez v1, :cond_e

    goto/16 :goto_80

    .line 1742
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    aget-object p0, p0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 1743
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_26

    .line 1744
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p0, v2

    .line 1746
    :cond_26
    const/4 v2, 0x0

    cmpg-float v3, p0, v2

    if-gez v3, :cond_2c

    .line 1747
    const/4 p0, 0x0

    .line 1749
    :cond_2c
    cmpl-float v2, p0, v1

    if-lez v2, :cond_31

    .line 1750
    goto :goto_32

    .line 1749
    :cond_31
    move v1, p0

    .line 1752
    :goto_32
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    .line 1753
    if-eqz p1, :cond_58

    .line 1754
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    .line 1755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e78\u798f "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    goto :goto_75

    .line 1757
    :cond_58
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setRevolutionaryRisk(F)V

    .line 1758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u98ce\u9669 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1760
    :goto_75
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V
    :try_end_78
    .catchall {:try_start_f .. :try_end_78} :catchall_79

    .line 1763
    goto :goto_7f

    .line 1761
    :catchall_79
    move-exception p0

    .line 1762
    const-string p0, "\u6570\u503c\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1764
    :goto_7f
    return-void

    .line 1738
    :cond_80
    :goto_80
    if-eqz p1, :cond_85

    const-string p0, "set happy 0-100"

    goto :goto_87

    :cond_85
    const-string p0, "set risk 0-100"

    :goto_87
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1739
    return-void
.end method

.method private static setGov([Ljava/lang/String;)V
    .registers 5

    .line 1516
    if-eqz p0, :cond_3b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3b

    .line 1520
    :cond_6
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v0

    .line 1521
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    .line 1522
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_34

    .line 1523
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1525
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v0

    .line 1526
    if-gez v0, :cond_34

    .line 1527
    return-void

    .line 1530
    :cond_34
    if-gez v0, :cond_37

    .line 1531
    return-void

    .line 1533
    :cond_37
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->applyGov(ILjava/lang/String;)V

    .line 1534
    return-void

    .line 1517
    :cond_3b
    :goto_3b
    const-string p0, "set gov [\u56fd\u5bb6] \u653f\u4f53"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method private static setHappy([Ljava/lang/String;)V
    .registers 2

    .line 1725
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setFloatProv([Ljava/lang/String;Z)V

    .line 1726
    return-void
.end method

.method private static setMan([Ljava/lang/String;)V
    .registers 3

    .line 1819
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->firstInt([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1820
    if-nez v0, :cond_c

    .line 1821
    const-string p0, "set manpower \u6570\u91cf [\u56fd\u5bb6]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1822
    return-void

    .line 1824
    :cond_c
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result p0

    .line 1825
    if-gez p0, :cond_13

    .line 1826
    return-void

    .line 1828
    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    .line 1830
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1831
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4eba\u529b "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1832
    return-void
.end method

.method private static setMoney([Ljava/lang/String;)V
    .registers 5

    .line 1787
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->firstLong([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1788
    if-nez v0, :cond_c

    .line 1789
    const-string p0, "set money \u6570\u91cf [\u56fd\u5bb6]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1790
    return-void

    .line 1792
    :cond_c
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result p0

    .line 1793
    if-gez p0, :cond_13

    .line 1794
    return-void

    .line 1796
    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1797
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    .line 1798
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1799
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91d1\u94b1 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method private static setMove([Ljava/lang/String;)V
    .registers 3

    .line 1803
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->firstInt([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1804
    if-nez v0, :cond_c

    .line 1805
    const-string p0, "set move \u6570\u91cf [\u56fd\u5bb6]"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1806
    return-void

    .line 1808
    :cond_c
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->civOrPlayer([Ljava/lang/String;)I

    move-result p0

    .line 1809
    if-gez p0, :cond_13

    .line 1810
    return-void

    .line 1812
    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1813
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    .line 1814
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1815
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u79fb\u52a8 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1816
    return-void
.end method

.method private static setRisk([Ljava/lang/String;)V
    .registers 2

    .line 1729
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->setFloatProv([Ljava/lang/String;Z)V

    .line 1730
    return-void
.end method

.method private static setTech([Ljava/lang/String;)V
    .registers 6

    .line 786
    nop

    .line 787
    nop

    .line 788
    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    if-eqz p0, :cond_2a

    .line 789
    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    :goto_a
    array-length v4, p0

    if-ge v2, v4, :cond_2c

    .line 790
    aget-object v4, p0, v2

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->intOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 791
    if-eqz v4, :cond_1c

    if-ne v3, v0, :cond_1c

    .line 792
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_27

    .line 793
    :cond_1c
    if-gez v1, :cond_27

    .line 794
    aget-object v1, p0, v2

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v1

    .line 795
    if-gez v1, :cond_27

    .line 796
    return-void

    .line 789
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 788
    :cond_2a
    const/high16 v3, -0x80000000

    .line 801
    :cond_2c
    if-ne v3, v0, :cond_34

    .line 802
    const-string p0, "set tech [\u56fd\u5bb6] 1-1000"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_34
    if-gez v1, :cond_47

    .line 806
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result p0

    .line 807
    if-gez p0, :cond_3d

    .line 808
    return-void

    .line 810
    :cond_3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    .line 812
    :cond_47
    const/4 p0, 0x1

    if-ge v3, p0, :cond_4b

    .line 813
    const/4 v3, 0x1

    .line 815
    :cond_4b
    const/16 p0, 0x3e8

    if-le v3, p0, :cond_51

    .line 816
    const/16 v3, 0x3e8

    .line 818
    :cond_51
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civ(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    .line 819
    if-nez p0, :cond_5d

    .line 820
    const-string p0, "\u56fd\u5bb6\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 821
    return-void

    .line 823
    :cond_5d
    int-to-float v0, v3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setTechnologyLevel(F)V

    .line 824
    if-ltz v1, :cond_6d

    .line 825
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 827
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u79d1\u6280 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private static showId()V
    .registers 4

    .line 619
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireActive()I

    move-result v0

    .line 620
    if-gez v0, :cond_7

    .line 621
    return-void

    .line 623
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7701 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_27

    const-string v2, ""

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u56fd\u5bb6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_39

    const/4 v1, -0x1

    goto :goto_3d

    :cond_39
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private static spin()V
    .registers 3

    .line 2084
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    .line 2085
    const v1, 0x1e848

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollPos(II)V

    .line 2086
    invoke-virtual {v0, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollPos(II)V

    .line 2087
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    .line 2088
    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 2089
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    .line 2091
    :cond_1d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V

    .line 2092
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->startScrollingTheMap()V

    .line 2093
    const-string v0, "\u8f6c\u8d77\u6765"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    .line 2096
    goto :goto_31

    .line 2094
    :catchall_2b
    move-exception v0

    .line 2095
    const-string v0, "\u65cb\u8f6c\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2097
    :goto_31
    return-void
.end method

.method private static stillAtWar(I)Z
    .registers 5

    .line 1355
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    .line 1356
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1357
    if-eq v2, p0, :cond_15

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_19

    if-eqz v3, :cond_15

    .line 1358
    return v1

    .line 1356
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1362
    :cond_18
    goto :goto_1a

    .line 1361
    :catchall_19
    move-exception p0

    .line 1363
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static sug([Ljava/lang/String;)V
    .registers 9

    .line 2156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->join([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 2158
    const-string p0, "sug \u524d\u7f00"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2159
    return-void

    .line 2161
    :cond_11
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->names()Ljava/util/List;

    move-result-object v1

    .line 2162
    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->uniquePrefix(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 2163
    const-string v3, "  "

    if-eqz v2, :cond_40

    .line 2164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8865\u5168 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 2165
    return-void

    .line 2167
    :cond_40
    nop

    .line 2168
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2169
    if-lez v4, :cond_4e

    .line 2170
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    .line 2169
    :cond_4e
    move-object v4, p0

    .line 2172
    :goto_4f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->nameArray()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->closestByFirstWord(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 2173
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_62

    .line 2174
    invoke-static {p0, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->closest(Ljava/lang/String;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v5

    .line 2176
    :cond_62
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6e

    .line 2177
    const-string p0, "\u6ca1\u6709\u5efa\u8bae"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 2178
    return-void

    .line 2180
    :cond_6e
    const/4 p0, 0x0

    :goto_6f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_b4

    .line 2181
    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2182
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2183
    if-gez v6, :cond_83

    move-object v6, v1

    goto :goto_87

    :cond_83
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2184
    :goto_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->helpOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "  \u8ddd\u79bb"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/ConsoleSuggest;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 2180
    add-int/lit8 p0, p0, 0x1

    goto :goto_6f

    .line 2186
    :cond_b4
    return-void
.end method

.method private static sys()V
    .registers 2

    .line 403
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-nez v0, :cond_a

    .line 404
    const-string v0, "\u56fe\u5f62\u672a\u5c31\u7eea"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 405
    return-void

    .line 407
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FramesPerSecond: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PpiX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PpiY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getPpiY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Density: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XHDPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XXHDPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XXXHDPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XXXXHDPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7248\u672c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sVERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V
    :try_end_12a
    .catchall {:try_start_0 .. :try_end_12a} :catchall_12b

    .line 420
    goto :goto_131

    .line 418
    :catchall_12b
    move-exception v0

    .line 419
    const-string v0, "\u7cfb\u7edf\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 421
    :goto_131
    return-void
.end method

.method private static term()V
    .registers 1

    .line 365
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->closeConsole()V

    .line 366
    const-string v0, "\u63a7\u5236\u53f0\u5df2\u5173\u95ed"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private static toggleConsole()V
    .registers 3

    .line 371
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v0, :cond_a

    .line 372
    const-string v0, "\u83dc\u5355\u672a\u5c31\u7eea"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v0

    .line 376
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction_Console(Z)V

    .line 377
    if-nez v0, :cond_28

    .line 378
    const-string v0, "Hello"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->toast(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_2c

    .line 380
    :try_start_22
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard_Commands()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 382
    :goto_25
    goto :goto_2b

    .line 381
    :catchall_26
    move-exception v0

    goto :goto_25

    .line 384
    :cond_28
    :try_start_28
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->closeConsole()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 388
    :goto_2b
    goto :goto_32

    .line 386
    :catchall_2c
    move-exception v0

    .line 387
    const-string v0, "\u65e0\u6cd5\u5f00\u5173\u63a7\u5236\u53f0"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 389
    :goto_32
    return-void
.end method

.method private static tower()V
    .registers 3

    .line 1073
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->requireLand()I

    move-result v0

    .line 1074
    if-gez v0, :cond_7

    .line 1075
    return-void

    .line 1077
    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V

    .line 1078
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->touchProvince(I)V

    .line 1079
    const-string v0, "\u54e8\u5854 1"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method private static vassalOff([Ljava/lang/String;)V
    .registers 4

    .line 1367
    if-eqz p0, :cond_43

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_43

    .line 1371
    :cond_7
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    .line 1372
    if-gtz p0, :cond_11

    .line 1373
    return-void

    .line 1376
    :cond_11
    :try_start_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    .line 1377
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID(IZ)V

    .line 1378
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91ca\u653e "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_3c

    .line 1382
    goto :goto_42

    .line 1380
    :catchall_3c
    move-exception p0

    .line 1381
    const-string p0, "\u91ca\u653e\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1383
    :goto_42
    return-void

    .line 1368
    :cond_43
    :goto_43
    const-string p0, "vassal - \u9644\u5eb8"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method private static vassalOn([Ljava/lang/String;)V
    .registers 7

    .line 1312
    if-eqz p0, :cond_cb

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    goto/16 :goto_cb

    .line 1316
    :cond_8
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v1

    .line 1317
    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    .line 1318
    if-lez v1, :cond_c5

    if-lez p0, :cond_c5

    if-ne v1, p0, :cond_1e

    goto/16 :goto_c5

    .line 1323
    :cond_1e
    :try_start_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    .line 1325
    nop

    :goto_2a
    if-ge v2, v4, :cond_40

    .line 1326
    if-eq v2, p0, :cond_3d

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1330
    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_59

    .line 1331
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1332
    const/16 v5, 0xa

    invoke-static {p0, v4, v5, v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->peacePair(IIIZ)V

    .line 1330
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1334
    :cond_59
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->stillAtWar(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1335
    const-string p0, "\u9644\u5eb8\u4ecd\u5728\u6218\u4e89\u4e2d"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1336
    return-void

    .line 1338
    :cond_65
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID(IZ)V

    .line 1339
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_83

    .line 1340
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayerID_ByCivID(I)I

    move-result v0

    .line 1341
    if-ltz v0, :cond_83

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    if-eqz v2, :cond_83

    .line 1342
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->buildFogOfWar(I)V

    .line 1345
    :cond_83
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1346
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->top(I)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9644\u5eb8 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_1e .. :try_end_bd} :catchall_be

    .line 1350
    goto :goto_c4

    .line 1348
    :catchall_be
    move-exception p0

    .line 1349
    const-string p0, "\u9644\u5eb8\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1351
    :goto_c4
    return-void

    .line 1319
    :cond_c5
    :goto_c5
    const-string p0, "\u56fd\u5bb6\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1320
    return-void

    .line 1313
    :cond_cb
    :goto_cb
    const-string p0, "vassal + \u5b97\u4e3b \u9644\u5eb8"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1314
    return-void
.end method

.method private static war([Ljava/lang/String;)V
    .registers 6

    .line 1085
    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1a

    .line 1098
    :cond_8
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result v1

    .line 1099
    aget-object p0, p0, v0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->resolveCiv(Ljava/lang/String;)I

    move-result p0

    .line 1100
    if-ltz v1, :cond_19

    if-gez p0, :cond_3d

    .line 1101
    :cond_19
    return-void

    .line 1086
    :cond_1a
    :goto_1a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v1

    .line 1087
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p0

    .line 1088
    if-lez v1, :cond_e3

    if-gez p0, :cond_2a

    goto/16 :goto_e3

    .line 1092
    :cond_2a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p0

    .line 1093
    if-gtz p0, :cond_3c

    .line 1094
    const-string p0, "\u5f53\u524d\u7701\u65e0\u56fd\u5bb6"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1095
    return-void

    .line 1097
    :cond_3c
    nop

    .line 1104
    :cond_3d
    if-eq v1, p0, :cond_dd

    if-lez v1, :cond_dd

    if-gtz p0, :cond_45

    goto/16 :goto_dd

    .line 1109
    :cond_45
    :try_start_45
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    .line 1110
    invoke-virtual {v2, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1111
    const-string p0, "\u5df2\u7ecf\u5728\u6218\u4e89\u4e2d"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1112
    return-void

    .line 1114
    :cond_53
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_d0

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_68

    goto :goto_d0

    .line 1118
    :cond_68
    invoke-virtual {v2, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_78

    .line 1119
    const-string p0, "\u5173\u7cfb\u9ad8\u4e8e50"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1120
    return-void

    .line 1122
    :cond_78
    invoke-virtual {v2, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivTruce(II)I

    move-result v3

    if-lez v3, :cond_84

    .line 1123
    const-string p0, "\u4ecd\u5728\u505c\u6218"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1124
    return-void

    .line 1126
    :cond_84
    invoke-virtual {v2, v1, p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied_IncludeVassal(IIZ)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1127
    const-string p0, "\u540c\u76df\u6216\u9644\u5eb8\u4e0d\u80fd\u5ba3\u6218"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1128
    return-void

    .line 1130
    :cond_90
    invoke-virtual {v2, v1, p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->declareWar(IIZ)V

    .line 1131
    invoke-virtual {v2, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1132
    const-string p0, "\u5ba3\u6218\u672a\u751f\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1133
    return-void

    .line 1135
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5ba3\u6218 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 1138
    goto :goto_dc

    .line 1115
    :cond_d0
    :goto_d0
    const-string p0, "\u56fd\u5bb6\u6ca1\u6709\u7701\u4efd"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_45 .. :try_end_d5} :catchall_d6

    .line 1116
    return-void

    .line 1136
    :catchall_d6
    move-exception p0

    .line 1137
    const-string p0, "\u5ba3\u6218\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1139
    :goto_dc
    return-void

    .line 1105
    :cond_dd
    :goto_dd
    const-string p0, "\u56fd\u5bb6\u7f16\u53f7\u65e0\u6548"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1089
    :cond_e3
    :goto_e3
    const-string p0, "war \u56fd\u5bb6A \u56fd\u5bb6B  \u6216\u5148\u9009\u4e2d\u654c\u56fd\u7701\u4efd"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method private static watch()V
    .registers 1

    .line 647
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    .line 648
    const-string v0, "\u65c1\u89c2\u6a21\u5f0f\u5df2\u5f00\u542f"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 649
    const-string v0, "Games -> New Game -> Options -> Spectator Mode"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    .line 652
    goto :goto_14

    .line 650
    :catchall_e
    move-exception v0

    .line 651
    const-string v0, "\u65c1\u89c2\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 653
    :goto_14
    return-void
.end method

.method private static who()V
    .registers 4

    .line 1974
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->playerCiv()I

    move-result v0

    .line 1975
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->activeProvince()I

    move-result v1

    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u73a9\u5bb6 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleContext;->civLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u56de\u5408\u4f4d "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 1977
    if-ltz v1, :cond_60

    .line 1978
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    .line 1979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7701\u4efd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_50

    const-string v0, ""

    goto :goto_54

    :cond_50
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 1980
    goto :goto_65

    .line 1981
    :cond_60
    const-string v0, "\u672a\u9009\u7701\u4efd"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V

    .line 1983
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e5\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8ff7\u96fe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleCmds;->fogName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u96be\u5ea6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DIFFICULTY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->line(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_0 .. :try_end_9b} :catchall_9c

    .line 1986
    goto :goto_a2

    .line 1984
    :catchall_9c
    move-exception v0

    .line 1985
    const-string v0, "\u72b6\u6001\u5931\u8d25"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 1987
    :goto_a2
    return-void
.end method

.method private static worldView()V
    .registers 5

    .line 502
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    .line 503
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    .line 504
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    .line 505
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_24

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_26

    :cond_24
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->MINSCALE:F

    .line 506
    :goto_26
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 507
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 508
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    .line 509
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    .line 510
    return-void
.end method

.method private static zoom([Ljava/lang/String;)V
    .registers 3

    .line 535
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    if-eqz v0, :cond_4f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4f

    .line 539
    :cond_d
    nop

    .line 540
    if-eqz p0, :cond_23

    array-length v0, p0

    if-lez v0, :cond_23

    .line 541
    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 542
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_25

    .line 544
    :cond_23
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f29\u653e "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->ok(Ljava/lang/String;)V

    .line 548
    goto :goto_5b

    .line 536
    :cond_4f
    :goto_4f
    const-string p0, "\u5730\u56fe\u672a\u5c31\u7eea"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    .line 537
    return-void

    .line 546
    :catchall_55
    move-exception p0

    .line 547
    const-string p0, "\u7f29\u653e\u5931\u8d25"

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->err(Ljava/lang/String;)V

    .line 549
    :goto_5b
    return-void
.end method
