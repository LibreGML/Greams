.class synthetic Lage/of/civilizations2/jakowski/lukasz/CFG$62;
.super Ljava/lang/Object;
.source "CFG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

.field static final synthetic $SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->values()[Lage/of/civilizations2/jakowski/lukasz/Dialog;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Dialog;->EXIT_GAME:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SELECT_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->PAUSE_GAME:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_RANDOM_GAME_EXIT_MAIN_MENU:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->PEACE_TREATY_BACK_ARE_YOU_SURE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SEND_DEMANDS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->PEACE_TREARY_ACCEPT:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->PEACE_TREARY_REFUSE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ABADON:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_SPECTACTOR:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_EXIT_MAIN_MENU:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_ONE_MORE_TURN:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CONTINUE_AFTER_END_GAME:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xe

    aput v5, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->EXIT_CREATOR:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0xf

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->PEACE_TREATY_TAKE_ALL:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x10

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x11

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x12

    aput v5, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->TRADE_REQUEST_SELECT_CIV:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x13

    aput v5, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SAVE_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x14

    aput v5, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_REMOVE_EVENT:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x15

    aput v5, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CONFIRM_LANGUAGE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x16

    aput v5, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_EVENTS_EDIT_BACK:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x17

    aput v5, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_EVENTS_EDIT_SAVE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x18

    aput v5, v3, v4
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SURRENDER:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x19

    aput v5, v3, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->FORM_A_CIV:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1a

    aput v5, v3, v4
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->DESELET_ALL_SELECTED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1b

    aput v5, v3, v4
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->DESELET_ALL_SELECTED_PROVINCES_CREATE_A_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1c

    aput v5, v3, v4
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->DESELET_ALL_SELECTED_PROVINCES_CREATE_HOLY_ROMAN_EMPIRE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1d

    aput v5, v3, v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->NO_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1e

    aput v5, v3, v4
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REVERSE_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x1f

    aput v5, v3, v4
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CONFIRM_END_TURN:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x20

    aput v5, v3, v4
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->START_TUTORIAL:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x21

    aput v5, v3, v4
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REMOVE_RANDOM_ALLIANCES_NAMES_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x22

    aput v5, v3, v4
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REMOVE_TRADE_ZONE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x23

    aput v5, v3, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x24

    aput v5, v3, v4
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SAVE_THE_GAME_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x25

    aput v5, v3, v4
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ALL_NOT_SAVED_PROGRESS_WILL_BE_LOST:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x26

    aput v5, v3, v4
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ALL_NOT_SAVED_PROGRESS_WILL_BE_LOST2:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x27

    aput v5, v3, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_WIKI:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x28

    aput v5, v3, v4
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_WIKI_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x29

    aput v5, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_LINK:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2a

    aput v5, v3, v4
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->RELEASE_A_VASSAL:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2b

    aput v5, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->SHUFFLE_CIVILIZATIONS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2c

    aput v5, v3, v4
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GENERATE_SUGGESTED_OWNERS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2d

    aput v5, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GENERATE_PRE_DEFINED_BORDERS:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2e

    aput v5, v3, v4
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GENERATE_SEA_ROUTES:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x2f

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->MAP_EDITOR_WASTELANDMAPS_WORLD_FILL:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x30

    aput v5, v3, v4
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->DELETE_SAVEDGAME:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x31

    aput v5, v3, v4
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->MAP_EDITOR_SEA_ARMY_BOXES_ROMVE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x32

    aput v5, v3, v4
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REMOVE_PRINCE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x33

    aput v5, v3, v4
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CONVERT_ARMY_POSITION_TO_ANOTHER_SCALE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x34

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CONVERT_PORT_POSITION_TO_ANOTHER_SCALE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x35

    aput v5, v3, v4
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->MANAGE_DIPLOMACY_REMOVE_CIVILIZATION_FROM_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x36

    aput v5, v3, v4
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Dialog:[I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REMOVE_CITY:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Dialog;->ordinal()I

    move-result v4

    const/16 v5, 0x37

    aput v5, v3, v4
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    invoke-static {}, Lcom/badlogic/gdx/Application$ApplicationType;->values()[Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    :try_start_37
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$62;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Application$ApplicationType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method
