.class synthetic Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->values()[Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_RECIPENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_COND_CIV_EXIST:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->COND_SELECTCIV_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROL_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROL_OCCUPIED:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAVE_ARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFPROVINCES_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFUNITS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFUNITS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFVASSALS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFVASSALS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFWARS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFWARS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFALLIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFALLIES_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFNEIGHBORS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NUMOFNEIGHBORS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_POPULATION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_POPULATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECONOMY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    :try_start_17
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    :try_start_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    :try_start_1a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISATWAR:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    :goto_1a
    :try_start_1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ALLIES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    :try_start_1c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ATWAR:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    :goto_1c
    :try_start_1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_DEFENSIVE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    :try_start_1e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INDEPENDENCE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    :try_start_1f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NONAGGRESSION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    :try_start_20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYACCESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSALOFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISPARTOFHRE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    :try_start_24
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    :try_start_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TECHNOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v0

    :goto_25
    :try_start_26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TECHNOLOGY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v0

    :goto_26
    :try_start_27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v0

    :goto_27
    :try_start_28
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_HAPPINESS_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v0

    :goto_28
    :try_start_29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TREASURY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v0

    :goto_29
    :try_start_2a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_TREASURY_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v0

    :goto_2a
    :try_start_2b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_CONTROLLEDBYPLAYER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v0

    :goto_2b
    :try_start_2c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v0

    :goto_2c
    :try_start_2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_RELATION_LOW2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v0

    :goto_2d
    :try_start_2e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ALLIES2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v0

    :goto_2e
    :try_start_2f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ATWAR2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v0

    :goto_2f
    :try_start_30
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_DEFENSIVE2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v0

    :goto_30
    :try_start_31
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_INDEPENDENCE2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v0

    :goto_31
    :try_start_32
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_NONAGGRESSION2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v0

    :goto_32
    :try_start_33
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_MILITARYACCESS2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v0

    :goto_33
    :try_start_34
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CIV_ISVASSALOFCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v0

    :goto_34
    :try_start_35
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_CONTROLS_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v0

    :goto_35
    :try_start_36
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_OCCUPIED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v0

    :goto_36
    :try_start_37
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_HAVEARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v0

    :goto_37
    :try_start_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_HAVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v0

    :goto_38
    :try_start_39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_ISCAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v0

    :goto_39
    :try_start_3a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v0

    :goto_3a
    :try_start_3b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_DEVELOPMENT_LOW:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v0

    :goto_3b
    :try_start_3c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v0

    :goto_3c
    :try_start_3d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_NEUTRAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v0

    :goto_3d
    :try_start_3e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_WATCHTOWER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v0

    :goto_3e
    :try_start_3f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_FORT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v0

    :goto_3f
    :try_start_40
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_FARM:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    goto :goto_40

    :catch_40
    move-exception v0

    :goto_40
    :try_start_41
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCES_PORT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    goto :goto_41

    :catch_41
    move-exception v0

    :goto_41
    :try_start_42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTIDEOLOGY_COND_IDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    goto :goto_42

    :catch_42
    move-exception v0

    :goto_42
    :try_start_43
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    goto :goto_43

    :catch_43
    move-exception v0

    :goto_43
    :try_start_44
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    goto :goto_44

    :catch_44
    move-exception v0

    :goto_44
    :try_start_45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_REMOVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    goto :goto_45

    :catch_45
    move-exception v0

    :goto_45
    :try_start_46
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECLAREWAR_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    goto :goto_46

    :catch_46
    move-exception v0

    :goto_46
    :try_start_47
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_WHITEPEACE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    goto :goto_47

    :catch_47
    move-exception v0

    :goto_47
    :try_start_48
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INCRELATION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    goto :goto_48

    :catch_48
    move-exception v0

    :goto_48
    :try_start_49
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECRELATION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    goto :goto_49

    :catch_49
    move-exception v0

    :goto_49
    :try_start_4a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CREATEVASSAL_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    goto :goto_4a

    :catch_4a
    move-exception v0

    :goto_4a
    :try_start_4b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINALLIANCE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    goto :goto_4b

    :catch_4b
    move-exception v0

    :goto_4b
    :try_start_4c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LEAVEALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    goto :goto_4c

    :catch_4c
    move-exception v0

    :goto_4c
    :try_start_4d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINUNION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    goto :goto_4d

    :catch_4d
    move-exception v0

    :goto_4d
    :try_start_4e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NONAGGRESSION_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    goto :goto_4e

    :catch_4e
    move-exception v0

    :goto_4e
    :try_start_4f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARY_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    goto :goto_4f

    :catch_4f
    move-exception v0

    :goto_4f
    :try_start_50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEFENSIVE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    goto :goto_50

    :catch_50
    move-exception v0

    :goto_50
    :try_start_51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INDEPENDENCE_A:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    goto :goto_51

    :catch_51
    move-exception v0

    :goto_51
    :try_start_52
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    goto :goto_52

    :catch_52
    move-exception v0

    :goto_52
    :try_start_53
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LIBERATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    goto :goto_53

    :catch_53
    move-exception v0

    :goto_53
    :try_start_54
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    goto :goto_54

    :catch_54
    move-exception v0

    :goto_54
    :try_start_55
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    goto :goto_55

    :catch_55
    move-exception v0

    :goto_55
    :try_start_56
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    goto :goto_56

    :catch_56
    move-exception v0

    :goto_56
    :try_start_57
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    goto :goto_57

    :catch_57
    move-exception v0

    :goto_57
    :try_start_58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    goto :goto_58

    :catch_58
    move-exception v0

    :goto_58
    :try_start_59
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    goto :goto_59

    :catch_59
    move-exception v0

    :goto_59
    :try_start_5a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEECONOMY_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    goto :goto_5a

    :catch_5a
    move-exception v0

    :goto_5a
    :try_start_5b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_UPDATEPOPULAION_OFCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    goto :goto_5b

    :catch_5b
    move-exception v0

    :goto_5b
    :try_start_5c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_TECHLEVEL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    goto :goto_5c

    :catch_5c
    move-exception v0

    :goto_5c
    :try_start_5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    goto :goto_5d

    :catch_5d
    move-exception v0

    :goto_5d
    :try_start_5e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    goto :goto_5e

    :catch_5e
    move-exception v0

    :goto_5e
    :try_start_5f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_HAPPINESS_OF_CIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    goto :goto_5f

    :catch_5f
    move-exception v0

    :goto_5f
    :try_start_60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MONEY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    goto :goto_60

    :catch_60
    move-exception v0

    :goto_60
    :try_start_61
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DIPLOMACYPOINTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    goto :goto_61

    :catch_61
    move-exception v0

    :goto_61
    :try_start_62
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MOVEMENTPOINTS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    goto :goto_62

    :catch_62
    move-exception v0

    :goto_62
    :try_start_63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FORMCIV:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    goto :goto_63

    :catch_63
    move-exception v0

    :goto_63
    :try_start_64
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    goto :goto_64

    :catch_64
    move-exception v0

    :goto_64
    :try_start_65
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_LEADER:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    goto :goto_65

    :catch_65
    move-exception v0

    :goto_65
    :try_start_66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NAME:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    goto :goto_66

    :catch_66
    move-exception v0

    :goto_66
    :try_start_67
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    goto :goto_67

    :catch_67
    move-exception v0

    :goto_67
    :try_start_68
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECLAREWAR_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    goto :goto_68

    :catch_68
    move-exception v0

    :goto_68
    :try_start_69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_WHITEPEACE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    goto :goto_69

    :catch_69
    move-exception v0

    :goto_69
    :try_start_6a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INCRELATION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    goto :goto_6a

    :catch_6a
    move-exception v0

    :goto_6a
    :try_start_6b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DECRELATION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    goto :goto_6b

    :catch_6b
    move-exception v0

    :goto_6b
    :try_start_6c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_CREATEVASSAL_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    goto :goto_6c

    :catch_6c
    move-exception v0

    :goto_6c
    :try_start_6d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINALLIANCE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    goto :goto_6d

    :catch_6d
    move-exception v0

    :goto_6d
    :try_start_6e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_JOINUNION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    goto :goto_6e

    :catch_6e
    move-exception v0

    :goto_6e
    :try_start_6f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_NONAGGRESSION_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    goto :goto_6f

    :catch_6f
    move-exception v0

    :goto_6f
    :try_start_70
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_MILITARY_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    goto :goto_70

    :catch_70
    move-exception v0

    :goto_70
    :try_start_71
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_DEFENSIVE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    goto :goto_71

    :catch_71
    move-exception v0

    :goto_71
    :try_start_72
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_INDEPENDENCE_B:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    goto :goto_72

    :catch_72
    move-exception v0

    :goto_72
    :try_start_73
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV2_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    goto :goto_73

    :catch_73
    move-exception v0

    :goto_73
    :try_start_74
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    goto :goto_74

    :catch_74
    move-exception v0

    :goto_74
    :try_start_75
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_ADDCORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    goto :goto_75

    :catch_75
    move-exception v0

    :goto_75
    :try_start_76
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_REMOVECORE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    goto :goto_76

    :catch_76
    move-exception v0

    :goto_76
    :try_start_77
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_CREATEVASSAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    goto :goto_77

    :catch_77
    move-exception v0

    :goto_77
    :try_start_78
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_ADDARMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    goto :goto_78

    :catch_78
    move-exception v0

    :goto_78
    :try_start_79
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEPOPULAION:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    goto :goto_79

    :catch_79
    move-exception v0

    :goto_79
    :try_start_7a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEPOPULAION_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    goto :goto_7a

    :catch_7a
    move-exception v0

    :goto_7a
    :try_start_7b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEECONOMY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    goto :goto_7b

    :catch_7b
    move-exception v0

    :goto_7b
    :try_start_7c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_UPDATEECONOMY_PERC:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    goto :goto_7c

    :catch_7c
    move-exception v0

    :goto_7c
    :try_start_7d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    goto :goto_7d

    :catch_7d
    move-exception v0

    :goto_7d
    :try_start_7e
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_HAPPINESS:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    goto :goto_7e

    :catch_7e
    move-exception v0

    :goto_7e
    :try_start_7f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    goto :goto_7f

    :catch_7f
    move-exception v0

    :goto_7f
    :try_start_80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVINCES_OCCUPY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    goto :goto_80

    :catch_80
    move-exception v0

    :goto_80
    :try_start_81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_ASSIMILATE:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    goto :goto_81

    :catch_81
    move-exception v0

    :goto_81
    :try_start_82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTPROVICNES_MOVECAPITAL:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    goto :goto_82

    :catch_82
    move-exception v0

    :goto_82
    :try_start_83
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTIDEOLOGY_CHANGEIDEOLOGY:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    goto :goto_83

    :catch_83
    move-exception v0

    :goto_83
    :try_start_84
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->COND_SELECTDECISION_DECISIONTAKEN:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    goto :goto_84

    :catch_84
    move-exception v0

    :goto_84
    :try_start_85
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTCIV_FORMCIV2:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    goto :goto_85

    :catch_85
    move-exception v0

    :goto_85
    :try_start_86
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->OUT_SELECTEVENT:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    goto :goto_86

    :catch_86
    move-exception v0

    :goto_86
    :try_start_87
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Event_SelectCivAction:[I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->SELECT_PROVINCE_NAME:Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    goto :goto_87

    :catch_87
    move-exception v0

    :goto_87
    return-void
.end method
