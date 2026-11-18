.class public final Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;
.super Ljava/lang/Object;
.source "ConsoleFloat.java"


# static fields
.field private static final LONG_PRESS_MS:I = 0x1c2

.field private static final LONG_PRESS_SLOP:I = 0x12

.field private static applied:Z

.field private static cachedCloseableField:Ljava/lang/reflect/Field;

.field private static cachedConsoleIdxField:Ljava/lang/reflect/Field;

.field private static cachedIngameField:Ljava/lang/reflect/Field;

.field private static cachedMaxSliderYField:Ljava/lang/reflect/Field;

.field private static cachedMenusField:Ljava/lang/reflect/Field;

.field private static cachedMoveableField:Ljava/lang/reflect/Field;

.field private static cachedTitleField:Ljava/lang/reflect/Field;

.field private static cachedTitleHeightField:Ljava/lang/reflect/Field;

.field private static caret:I

.field private static caretBlinkAt:J

.field private static caretHandlersInstalled:Z

.field private static contentLaidOut:Z

.field private static inputFocused:Z

.field public static inputH:I

.field private static lastLineCount:I

.field private static longPressFired:Z

.field private static menuFieldsResolved:Z

.field private static ourDeleteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

.field private static ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

.field public static panelH:I

.field public static panelW:I

.field public static panelX:I

.field public static panelY:I

.field private static pressDownAt:J

.field private static pressDownX:I

.field private static pressDownY:I

.field private static pressTracking:Z

.field private static savedX:I

.field private static savedY:I

.field private static selAnchor:I

.field public static titleH:I

.field private static titleReady:Z

.field private static userMoved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    .line 40
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 12
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->insertAtCaret(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 12
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hasSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 12
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->deleteSelection()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 12
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->deleteOneBeforeCaret()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 12
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->requestRedraw()V

    return-void
.end method

.method public static applyCommandsLayout()V
    .registers 4

    .line 153
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->compute()V

    .line 154
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6c

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 157
    :try_start_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    .line 159
    goto :goto_f

    .line 158
    :catchall_e
    move-exception v0

    .line 163
    :goto_f
    :try_start_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_FlagAction()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    .line 165
    goto :goto_16

    .line 164
    :catchall_15
    move-exception v0

    .line 168
    :cond_16
    :goto_16
    :try_start_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_22

    :cond_1c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_6c

    .line 169
    :goto_22
    if-eqz v0, :cond_2c

    .line 171
    :try_start_24
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 173
    goto :goto_29

    .line 172
    :catchall_28
    move-exception v2

    .line 174
    :goto_29
    :try_start_29
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->clearKeyboardAnimation(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V

    .line 177
    :cond_2c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->getConsoleMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    .line 178
    if-nez v0, :cond_33

    .line 179
    return-void

    .line 182
    :cond_33
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleReady:Z

    .line 183
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ensureMoveableTitle(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V

    .line 185
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->userMoved:Z

    if-eqz v2, :cond_44

    .line 186
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->savedX:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelX:I

    .line 187
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->savedY:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    .line 190
    :cond_44
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelX:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX(I)V

    .line 191
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    .line 192
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setWidth(I)Z

    .line 193
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setHeight(I)V
    :try_end_58
    .catchall {:try_start_29 .. :try_end_58} :catchall_6c

    .line 195
    const/4 v2, 0x1

    :try_start_59
    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 197
    goto :goto_5e

    .line 196
    :catchall_5d
    move-exception v3

    .line 199
    :goto_5e
    :try_start_5e
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->contentLaidOut:Z

    .line 200
    const/4 v3, -0x1

    sput v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    .line 202
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->layoutConsoleContent(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Z)V

    .line 203
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applied:Z

    .line 204
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->focusInput()V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_6c

    .line 210
    goto :goto_72

    .line 205
    :catchall_6c
    move-exception v0

    .line 207
    :try_start_6d
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    .line 209
    goto :goto_72

    .line 208
    :catchall_71
    move-exception v0

    .line 211
    :goto_72
    return-void
.end method

.method private static clearKeyboardAnimation(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V
    .registers 5

    .line 967
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "animationChangePosY"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 969
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 970
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 972
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "animationStepID"

    invoke-static {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 973
    if-eqz v0, :cond_28

    .line 974
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 975
    const/16 v3, 0xd

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 977
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "closeMenu"

    invoke-static {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_3a

    .line 979
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 980
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    .line 983
    :cond_3a
    goto :goto_3c

    .line 982
    :catchall_3b
    move-exception p0

    .line 984
    :goto_3c
    return-void
.end method

.method private static clearSelection()V
    .registers 1

    .line 305
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    .line 306
    return-void
.end method

.method public static compute()V
    .registers 8

    .line 95
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    .line 96
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    .line 97
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    .line 98
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleHeight()I

    move-result v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleH:I

    .line 100
    int-to-float v3, v0

    const v4, 0x3ed70a3d    # 0.42f

    mul-float v4, v4, v3

    float-to-int v4, v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    .line 101
    sget v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    const v5, 0x3eb851ec    # 0.36f

    mul-float v3, v3, v5

    float-to-int v3, v3

    if-ge v4, v3, :cond_21

    .line 102
    sput v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    .line 105
    :cond_21
    int-to-float v3, v1

    const v4, 0x3f27ae14    # 0.655f

    mul-float v4, v4, v3

    float-to-int v4, v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    .line 106
    sget v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v6, v3, v5

    float-to-int v6, v6

    if-ge v4, v6, :cond_36

    .line 107
    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    .line 110
    :cond_36
    sget v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    sub-int/2addr v0, v4

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelX:I

    .line 112
    mul-int/lit8 v0, v2, 0x8

    .line 114
    :try_start_40
    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    .line 116
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_5a

    add-int/2addr v6, v0

    mul-int/lit8 v0, v2, 0x3

    add-int/2addr v0, v6

    .line 119
    goto :goto_5b

    .line 118
    :catchall_5a
    move-exception v6

    .line 121
    :goto_5b
    sget v6, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleH:I

    add-int/2addr v0, v6

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    .line 124
    :try_start_60
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 125
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    add-int/2addr v0, v6

    if-le v0, v1, :cond_81

    .line 126
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    sub-int/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_82

    .line 129
    :cond_81
    goto :goto_83

    .line 128
    :catchall_82
    move-exception v0

    .line 132
    :goto_83
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 133
    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    .line 134
    add-int/2addr v0, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 135
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    if-le v2, v1, :cond_a1

    .line 136
    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    .line 138
    :cond_a1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    div-int/lit8 v2, v2, 0xa

    if-le v1, v2, :cond_b3

    .line 139
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    .line 141
    :cond_b3
    return-void
.end method

.method private static deleteOneBeforeCaret()Z
    .registers 5

    .line 632
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 633
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4e

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-gtz v2, :cond_10

    goto :goto_4e

    .line 639
    :cond_10
    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1e

    .line 640
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 642
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 643
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    sub-int/2addr v1, v4

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 644
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->clearSelection()V

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretBlinkAt:J

    .line 646
    return v4

    .line 634
    :cond_4e
    :goto_4e
    if-nez v1, :cond_54

    .line 635
    const-string v1, ""

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_55

    .line 637
    :cond_54
    return v0

    .line 647
    :catchall_55
    move-exception v1

    .line 648
    return v0
.end method

.method private static deleteSelection()V
    .registers 6

    .line 606
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 607
    if-nez v0, :cond_9

    .line 608
    nop

    .line 609
    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 611
    :cond_9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selLo()I

    move-result v1

    .line 612
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selHi()I

    move-result v2

    .line 613
    const/4 v3, 0x0

    if-gez v1, :cond_15

    .line 614
    const/4 v1, 0x0

    .line 616
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_1f

    .line 617
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 619
    :cond_1f
    if-le v1, v2, :cond_26

    .line 620
    nop

    .line 621
    nop

    .line 622
    move v5, v2

    move v2, v1

    move v1, v5

    .line 624
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 625
    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 626
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->clearSelection()V

    .line 627
    return-void
.end method

.method private static drawConsoleLines(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16

    .line 425
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_83

    .line 428
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    .line 429
    if-nez v1, :cond_14

    .line 430
    return-void

    .line 432
    :cond_14
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    .line 433
    if-nez v2, :cond_1a

    .line 434
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 436
    :cond_1a
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    .line 437
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->logLineHeight()I

    move-result v4

    .line 438
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    const/16 v6, 0xc

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 439
    sub-int v6, v4, v5

    const/4 v7, 0x2

    div-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 440
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v8

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    add-int/2addr v8, p2

    .line 441
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result p2

    .line 443
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v9

    add-int/2addr v9, p3

    .line 444
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->outputTopInset()I

    move-result v10

    add-int/2addr v10, v9

    .line 445
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p0

    add-int/2addr v9, p0

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v9, p0

    .line 446
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 447
    nop

    :goto_5a
    if-ge v0, p0, :cond_82

    .line 448
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 449
    instance-of v7, v3, Ljava/lang/String;

    if-nez v7, :cond_67

    .line 450
    goto :goto_7f

    .line 452
    :cond_67
    check-cast v3, Ljava/lang/String;

    .line 453
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v7

    add-int/2addr v7, p2

    mul-int v11, v4, v0

    add-int/2addr v7, v11

    add-int/2addr v7, v6

    add-int/2addr v7, p3

    .line 455
    if-lt v7, v10, :cond_7f

    add-int v11, v7, v5

    if-le v11, v9, :cond_7a

    .line 456
    goto :goto_7f

    .line 459
    :cond_7a
    :try_start_7a
    invoke-static {p1, v3, v8, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    .line 461
    goto :goto_7f

    .line 460
    :catchall_7e
    move-exception v3

    .line 447
    :cond_7f
    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 463
    :cond_82
    return-void

    .line 426
    :cond_83
    :goto_83
    return-void
.end method

.method private static drawInputBar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lage/of/civilizations2/jakowski/lukasz/SliderMenu;II)V
    .registers 26

    .line 773
    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    .line 774
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->outputTopInset()I

    move-result v5

    .line 775
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    .line 776
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    .line 777
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v4

    .line 780
    const v8, 0x3e0f5c29    # 0.14f

    const/high16 v9, 0x3f800000    # 1.0f

    const v6, 0x3d23d70a    # 0.04f

    const v7, 0x3da3d70a    # 0.08f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V

    .line 782
    move v11, v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    sub-int/2addr v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 783
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    add-int/2addr v0, v10

    add-int v2, v0, p2

    .line 784
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    add-int/2addr v0, v10

    add-int v3, v0, p3

    .line 785
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v0

    mul-int/lit8 v1, v10, 0x2

    sub-int v4, v0, v1

    .line 787
    const v8, 0x3dcccccd    # 0.1f

    const v6, 0x3ca3d70a    # 0.02f

    const v7, 0x3d4ccccd    # 0.05f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V

    move v13, v2

    move v14, v3

    move v15, v4

    move v12, v5

    .line 789
    :try_start_59
    invoke-static {v1, v13, v14, v15, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 795
    goto :goto_63

    .line 790
    :catchall_5d
    move-exception v0

    .line 792
    :try_start_5e
    invoke-static {v1, v13, v14, v15, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    .line 794
    goto :goto_63

    .line 793
    :catchall_62
    move-exception v0

    .line 797
    :goto_63
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 798
    if-nez v0, :cond_6b

    .line 799
    const-string v0, ""

    move-object v2, v0

    goto :goto_6c

    .line 798
    :cond_6b
    move-object v2, v0

    .line 801
    :goto_6c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_75

    const/4 v5, 0x1

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    .line 802
    :goto_76
    if-eqz v5, :cond_80

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-nez v0, :cond_80

    const-string v0, "\u70b9\u51fb\u8f93\u5165.."

    move-object v6, v0

    goto :goto_81

    :cond_80
    move-object v6, v2

    .line 803
    :goto_81
    nop

    .line 805
    :try_start_82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_85

    .line 807
    goto :goto_87

    .line 806
    :catchall_85
    move-exception v0

    const/4 v0, 0x0

    .line 808
    :goto_87
    if-nez v0, :cond_8b

    .line 809
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 811
    :cond_8b
    if-eqz v5, :cond_a0

    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-nez v5, :cond_a0

    .line 812
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v9, 0x3ee66666    # 0.45f

    invoke-direct {v5, v7, v8, v0, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_a1

    .line 814
    :cond_a0
    move-object v5, v0

    :goto_a1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int v0, v12, v0

    const/4 v7, 0x2

    div-int/2addr v0, v7

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v8, v14, v0

    .line 815
    add-int v9, v13, v10

    .line 816
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    const/16 v3, 0xc

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 819
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-eqz v0, :cond_136

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_136

    .line 821
    :try_start_c7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selLo()I

    move-result v0

    .line 822
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selHi()I

    move-result v7

    .line 823
    if-gez v0, :cond_d2

    .line 824
    const/4 v0, 0x0

    .line 826
    :cond_d2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v7, v4, :cond_dc

    .line 827
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 829
    :cond_dc
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->measureTextWidth(Ljava/lang/String;)F

    move-result v0

    .line 830
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->measureTextWidth(Ljava/lang/String;)F

    move-result v7
    :try_end_ed
    .catchall {:try_start_c7 .. :try_end_ed} :catchall_124

    .line 831
    sub-float/2addr v7, v0

    float-to-int v7, v7

    .line 832
    const/4 v4, 0x2

    if-ge v7, v4, :cond_f3

    .line 833
    const/4 v7, 0x2

    .line 835
    :cond_f3
    float-to-int v0, v0

    add-int/2addr v0, v9

    move-object/from16 v16, v5

    move v5, v3

    move v3, v8

    const v8, 0x3f59999a    # 0.85f

    move/from16 v18, v9

    const v9, 0x3f0ccccd    # 0.55f

    move-object/from16 v19, v6

    const v6, 0x3e19999a    # 0.15f

    move v4, v7

    const/16 v20, 0x2

    const v7, 0x3ee66666    # 0.45f

    move-object/from16 v21, v2

    move/from16 v17, v11

    move/from16 v11, v18

    move v2, v0

    move/from16 v18, v12

    move-object/from16 v12, v16

    move/from16 v16, v10

    move-object/from16 v10, v19

    move/from16 v19, v13

    const/4 v13, 0x0

    :try_start_11e
    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    .line 837
    goto :goto_146

    .line 836
    :catchall_122
    move-exception v0

    goto :goto_146

    :catchall_124
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    const/4 v13, 0x0

    move-object v12, v5

    move-object v10, v6

    move v11, v9

    move v5, v3

    move v3, v8

    goto :goto_146

    .line 819
    :cond_136
    move-object/from16 v21, v2

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    const/4 v13, 0x0

    move-object v12, v5

    move-object v10, v6

    move v11, v9

    move v5, v3

    move v3, v8

    .line 841
    :goto_146
    :try_start_146
    invoke-static {v1, v10, v11, v3, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    .line 843
    goto :goto_14b

    .line 842
    :catchall_14a
    move-exception v0

    .line 846
    :goto_14b
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-eqz v0, :cond_1a5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 848
    :try_start_155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretBlinkAt:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    .line 849
    const-wide/16 v8, 0x226

    cmp-long v0, v6, v8

    if-gez v0, :cond_1a0

    .line 850
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-gez v0, :cond_16b

    .line 851
    sput v13, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 853
    :cond_16b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_179

    .line 854
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 856
    :cond_179
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    move-object/from16 v2, v21

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->measureTextWidth(Ljava/lang/String;)F

    move-result v0

    .line 857
    float-to-int v0, v0

    add-int v2, v11, v0

    .line 858
    div-int/lit8 v10, v16, 0x3
    :try_end_18a
    .catchall {:try_start_155 .. :try_end_18a} :catchall_1a2

    const/4 v11, 0x2

    :try_start_18b
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f733333    # 0.95f

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3f733333    # 0.95f

    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V
    :try_end_19d
    .catchall {:try_start_18b .. :try_end_19d} :catchall_19e

    goto :goto_1a1

    .line 860
    :catchall_19e
    move-exception v0

    goto :goto_1a6

    .line 849
    :cond_1a0
    const/4 v11, 0x2

    .line 861
    :goto_1a1
    goto :goto_1a6

    .line 860
    :catchall_1a2
    move-exception v0

    const/4 v11, 0x2

    goto :goto_1a6

    .line 846
    :cond_1a5
    const/4 v11, 0x2

    .line 863
    :goto_1a6
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-eqz v0, :cond_1c5

    .line 866
    add-int v3, v14, v18

    sub-int/2addr v3, v11

    const v8, 0x3f733333    # 0.95f

    const v9, 0x3f666666    # 0.9f

    const/4 v5, 0x2

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v1, p0

    move v4, v15

    move/from16 v2, v19

    :try_start_1bf
    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V
    :try_end_1c2
    .catchall {:try_start_1bf .. :try_end_1c2} :catchall_1c3

    .line 868
    goto :goto_1c8

    .line 867
    :catchall_1c3
    move-exception v0

    goto :goto_1c8

    .line 863
    :cond_1c5
    move v4, v15

    move/from16 v2, v19

    .line 872
    :goto_1c8
    invoke-virtual/range {p1 .. p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    add-int v0, v0, v17

    div-int/lit8 v10, v16, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v0, v3

    add-int v3, v0, p3

    .line 873
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v8, 0x3f400000    # 0.75f

    const v9, 0x3f59999a    # 0.85f

    const v6, 0x3e19999a    # 0.15f

    const v7, 0x3f0ccccd    # 0.55f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V

    .line 874
    return-void
.end method

.method public static drawInputOverlay(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 5

    .line 469
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 473
    :cond_5
    :try_start_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applied:Z

    if-nez v0, :cond_c

    .line 474
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->compute()V

    .line 476
    :cond_c
    invoke-static {p1, p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->drawInputBar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lage/of/civilizations2/jakowski/lukasz/SliderMenu;II)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    .line 478
    goto :goto_11

    .line 477
    :catchall_10
    move-exception p0

    .line 479
    :goto_11
    return-void

    .line 470
    :cond_12
    :goto_12
    return-void
.end method

.method public static drawLogAndInput(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4

    .line 395
    if-eqz p0, :cond_1e

    if-nez p1, :cond_5

    goto :goto_1e

    .line 399
    :cond_5
    :try_start_5
    invoke-static {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->onConsoleDraw(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 400
    invoke-static {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->drawLogClipped(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 401
    invoke-static {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->drawInputOverlay(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 405
    :try_start_e
    sget-object p0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1a

    .line 402
    :catchall_14
    move-exception p0

    .line 405
    sget-object p0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1b

    .line 407
    :goto_1a
    goto :goto_1d

    .line 406
    :catchall_1b
    move-exception p0

    .line 408
    nop

    .line 409
    :goto_1d
    return-void

    .line 396
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static drawLogClipped(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4

    .line 419
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->drawConsoleLines(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 421
    goto :goto_5

    .line 420
    :catchall_4
    move-exception p0

    .line 422
    :goto_5
    return-void
.end method

.method private static ensureCommandsMode()V
    .registers 1

    .line 534
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-nez v0, :cond_c

    .line 535
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 537
    :try_start_7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 539
    goto :goto_c

    .line 538
    :catchall_b
    move-exception v0

    .line 542
    :cond_c
    :goto_c
    goto :goto_e

    .line 541
    :catchall_d
    move-exception v0

    .line 543
    :goto_e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->installCaretHandlers()V

    .line 544
    return-void
.end method

.method private static ensureMoveableTitle(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V
    .registers 7

    .line 898
    const/4 v0, 0x0

    :try_start_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleH:I

    if-lez v1, :cond_8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleH:I

    goto :goto_c

    :cond_8
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleHeight()I

    move-result v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_ba

    .line 899
    :goto_c
    nop

    .line 901
    :try_start_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    .line 903
    goto :goto_14

    .line 902
    :catchall_12
    move-exception v2

    const/4 v2, 0x0

    .line 904
    :goto_14
    const/4 v3, 0x1

    if-nez v2, :cond_3f

    .line 905
    :try_start_17
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const-string v4, "\u63a7\u5236\u53f0"

    invoke-direct {v2, v4, v1, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    .line 906
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_35

    .line 907
    const-class v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    const-string v4, "sliderMenuTitle"

    invoke-static {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    .line 908
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_35

    .line 909
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 912
    :cond_35
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_8f

    .line 913
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8f

    .line 916
    :cond_3f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_56

    .line 917
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const-string v5, "moveable"

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    .line 918
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_56

    .line 919
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 922
    :cond_56
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_67

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 923
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMoveableField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 925
    :cond_67
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_7e

    .line 926
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const-string v5, "iHeight"

    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    .line 927
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_7e

    .line 928
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 931
    :cond_7e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_8f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v1, :cond_8f

    .line 932
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedTitleHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 935
    :cond_8f
    :goto_8f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a6

    .line 936
    const-class v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    const-string v2, "closeable"

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    .line 937
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_a6

    .line 938
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 941
    :cond_a6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_b7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 942
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedCloseableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 944
    :cond_b7
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleReady:Z
    :try_end_b9
    .catchall {:try_start_17 .. :try_end_b9} :catchall_ba

    .line 947
    goto :goto_bd

    .line 945
    :catchall_ba
    move-exception p0

    .line 946
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleReady:Z

    .line 948
    :goto_bd
    return-void
.end method

.method private static fillRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFFFF)V
    .registers 16

    .line 877
    if-lez p3, :cond_2a

    if-gtz p4, :cond_5

    goto :goto_2a

    .line 881
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :try_start_7
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 882
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_1f

    .line 884
    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v3, p2, v2

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 886
    :cond_1f
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    .line 892
    goto :goto_29

    .line 887
    :catchall_23
    move-exception v0

    .line 889
    :try_start_24
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 891
    goto :goto_29

    .line 890
    :catchall_28
    move-exception v0

    .line 893
    :goto_29
    return-void

    .line 878
    :cond_2a
    :goto_2a
    return-void
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    .line 1003
    nop

    :goto_1
    if-eqz p0, :cond_e

    .line 1005
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    return-object p0

    .line 1006
    :catchall_8
    move-exception v0

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 1008
    goto :goto_1

    .line 1010
    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static focusInput()V
    .registers 3

    .line 261
    const-string v0, ""

    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ensureCommandsMode()V

    .line 262
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 263
    if-nez v1, :cond_c

    .line 264
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 265
    goto :goto_d

    .line 263
    :cond_c
    move-object v0, v1

    .line 267
    :goto_d
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-ltz v1, :cond_19

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1f

    .line 268
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 270
    :cond_1f
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretBlinkAt:J

    .line 272
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->installCaretHandlers()V

    .line 274
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hideSystemIme()V

    .line 275
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->showSystemIme()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_37

    .line 277
    :try_start_31
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    .line 279
    goto :goto_36

    .line 278
    :catchall_35
    move-exception v0

    .line 281
    :goto_36
    goto :goto_38

    .line 280
    :catchall_37
    move-exception v0

    .line 282
    :goto_38
    return-void
.end method

.method private static getConsoleMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
    .registers 5

    .line 1037
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 1038
    if-nez v1, :cond_6

    .line 1039
    return-object v0

    .line 1041
    :cond_6
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->resolveMenuFields()V

    .line 1042
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMenusField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_46

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedIngameField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_46

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedConsoleIdxField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_16

    goto :goto_46

    .line 1045
    :cond_16
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMenusField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1046
    if-nez v2, :cond_21

    .line 1047
    return-object v0

    .line 1049
    :cond_21
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedIngameField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 1050
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedConsoleIdxField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 1051
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1052
    if-eqz v2, :cond_45

    if-ltz v1, :cond_45

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_3e

    goto :goto_45

    .line 1055
    :cond_3e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_47

    return-object v1

    .line 1053
    :cond_45
    :goto_45
    return-object v0

    .line 1043
    :cond_46
    :goto_46
    return-object v0

    .line 1056
    :catchall_47
    move-exception v1

    .line 1057
    return-object v0
.end method

.method private static hasSelection()Z
    .registers 2

    .line 309
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    if-ltz v0, :cond_c

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static hideSystemIme()V
    .registers 2

    .line 492
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    if-eqz v0, :cond_a

    .line 493
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 496
    :cond_a
    goto :goto_c

    .line 495
    :catchall_b
    move-exception v0

    .line 497
    :goto_c
    return-void
.end method

.method private static insertAtCaret(Ljava/lang/String;)V
    .registers 5

    .line 577
    if-eqz p0, :cond_6b

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6b

    .line 580
    :cond_9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 581
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->deleteSelection()V

    .line 583
    :cond_12
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 584
    if-nez v0, :cond_18

    .line 585
    const-string v0, ""

    .line 587
    :cond_18
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    const/4 v2, 0x0

    if-gez v1, :cond_1f

    .line 588
    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 590
    :cond_1f
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_2d

    .line 591
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 593
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 594
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 595
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->clearSelection()V

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretBlinkAt:J
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_69

    .line 598
    const/4 p0, 0x1

    :try_start_63
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 600
    goto :goto_68

    .line 599
    :catchall_67
    move-exception p0

    .line 602
    :goto_68
    goto :goto_6a

    .line 601
    :catchall_69
    move-exception p0

    .line 603
    :goto_6a
    return-void

    .line 578
    :cond_6b
    :goto_6b
    return-void
.end method

.method private static installCaretHandlers()V
    .registers 1

    .line 549
    :try_start_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$1;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$1;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    .line 554
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$2;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$2;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourDeleteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    .line 565
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    .line 566
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourDeleteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    .line 567
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretHandlersInstalled:Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 572
    goto :goto_23

    .line 568
    :catchall_1a
    move-exception v0

    .line 569
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretHandlersInstalled:Z

    .line 570
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    .line 571
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourDeleteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    .line 573
    :goto_23
    return-void
.end method

.method private static layoutConsoleContent(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Z)V
    .registers 9

    .line 704
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    .line 705
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->outputTopInset()I

    move-result v1

    .line 706
    nop

    .line 708
    const/4 v2, 0x0

    :try_start_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    if-eqz v3, :cond_13

    .line 709
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_15

    goto :goto_14

    .line 708
    :cond_13
    const/4 v3, 0x0

    .line 712
    :goto_14
    goto :goto_17

    .line 711
    :catchall_15
    move-exception v3

    const/4 v3, 0x0

    .line 714
    :goto_17
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->logLineHeight()I

    move-result v4

    .line 715
    sget v5, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelH:I

    sub-int/2addr v5, v1

    mul-int/lit8 v6, v4, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 717
    mul-int v4, v4, v3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 720
    :try_start_2d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v5

    if-lez v5, :cond_4a

    .line 721
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    .line 722
    if-eqz v5, :cond_4a

    .line 723
    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    .line 725
    invoke-static {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->setElPosY(Lage/of/civilizations2/jakowski/lukasz/MenuElement;I)V

    .line 726
    sget v6, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    .line 727
    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    .line 731
    :cond_4a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_65

    .line 732
    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_65

    .line 734
    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    .line 735
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->setElPosY(Lage/of/civilizations2/jakowski/lukasz/MenuElement;I)V

    .line 736
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelW:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    .line 737
    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    .line 742
    :cond_65
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_ae

    .line 744
    nop

    .line 746
    :try_start_69
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_80

    .line 747
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    const-string v1, "iMaxSliderPositionY"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    .line 748
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_80

    .line 749
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 752
    :cond_80
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8a

    .line 753
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMaxSliderYField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_8a
    .catchall {:try_start_69 .. :try_end_8a} :catchall_8b

    .line 756
    :cond_8a
    goto :goto_8c

    .line 755
    :catchall_8b
    move-exception v0

    .line 758
    :goto_8c
    if-eqz p1, :cond_a2

    :try_start_8e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p1

    if-le v2, p1, :cond_a2

    .line 759
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    .line 760
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setMenuPosY(I)V

    .line 761
    goto :goto_a9

    .line 763
    :cond_a2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setMenuPosY(I)V

    .line 766
    :goto_a9
    sput v3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    .line 767
    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->contentLaidOut:Z
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_ae

    .line 769
    goto :goto_af

    .line 768
    :catchall_ae
    move-exception p0

    .line 770
    :goto_af
    return-void
.end method

.method public static logLineHeight()I
    .registers 3

    .line 67
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    div-int/lit8 v1, v0, 0x4

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 69
    const/4 v2, 0x6

    if-le v1, v2, :cond_13

    .line 70
    const/4 v1, 0x6

    .line 72
    :cond_13
    add-int/2addr v0, v1

    return v0
.end method

.method private static measureTextWidth(Ljava/lang/String;)F
    .registers 4

    .line 687
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_33

    .line 690
    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    if-eqz v1, :cond_1e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v1, :cond_1e

    .line 691
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 692
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p0, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    return p0

    .line 695
    :cond_1e
    goto :goto_20

    .line 694
    :catchall_1f
    move-exception v1

    .line 696
    :goto_20
    if-nez p0, :cond_23

    goto :goto_32

    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-float p0, p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, v1

    mul-float v0, v0, p0

    :goto_32
    return v0

    .line 688
    :cond_33
    :goto_33
    return v0
.end method

.method public static onConsoleDraw(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4

    .line 325
    if-nez p0, :cond_3

    .line 326
    return-void

    .line 329
    :cond_3
    :try_start_3
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applied:Z

    if-nez p1, :cond_a

    .line 330
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->compute()V

    .line 332
    :cond_a
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleReady:Z

    if-nez p1, :cond_11

    .line 333
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ensureMoveableTitle(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V

    .line 335
    :cond_11
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->rememberDraggedPos(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_54

    .line 336
    nop

    .line 338
    const/4 p1, 0x0

    :try_start_16
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    if-eqz p2, :cond_21

    .line 339
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/Commands;->sConsole:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_23

    goto :goto_22

    .line 338
    :cond_21
    const/4 p2, 0x0

    .line 342
    :goto_22
    goto :goto_25

    .line 341
    :catchall_23
    move-exception p2

    const/4 p2, 0x0

    .line 343
    :goto_25
    :try_start_25
    sget-boolean p3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->contentLaidOut:Z

    if-eqz p3, :cond_2d

    sget p3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    if-eq p2, p3, :cond_39

    .line 344
    :cond_2d
    sget-boolean p3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->contentLaidOut:Z

    if-eqz p3, :cond_36

    sget p3, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    if-le p2, p3, :cond_36

    const/4 p1, 0x1

    .line 345
    :cond_36
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->layoutConsoleContent(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Z)V

    .line 348
    :cond_39
    sget-boolean p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    if-eqz p0, :cond_50

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    if-eqz p0, :cond_4d

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourWriteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    if-ne p0, p1, :cond_4d

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->ourDeleteHandler:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    if-eq p0, p1, :cond_50

    .line 350
    :cond_4d
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->installCaretHandlers()V

    .line 352
    :cond_50
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->tickLongPress()V
    :try_end_53
    .catchall {:try_start_25 .. :try_end_53} :catchall_54

    .line 354
    goto :goto_55

    .line 353
    :catchall_54
    move-exception p0

    .line 355
    :goto_55
    return-void
.end method

.method public static onTouch(II)Z
    .registers 7

    .line 219
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->getConsoleMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_56

    .line 220
    if-nez v1, :cond_8

    .line 221
    return v0

    .line 224
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_54

    if-nez v2, :cond_f

    .line 225
    return v0

    .line 229
    :cond_f
    nop

    .line 230
    :try_start_10
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applied:Z

    if-nez v2, :cond_17

    .line 231
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->compute()V

    .line 233
    :cond_17
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->outputTopInset()I

    move-result v2

    .line 234
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v3

    .line 235
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v4

    .line 236
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 237
    add-int/2addr v2, v4

    .line 238
    if-lt p0, v3, :cond_51

    if-gt p0, v1, :cond_51

    if-lt p1, v4, :cond_51

    if-le p1, v2, :cond_32

    goto :goto_51

    .line 242
    :cond_32
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    .line 243
    add-int/2addr v3, v1

    add-int/2addr v3, v1

    .line 244
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->clearSelection()V

    .line 245
    sub-int v1, p0, v3

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->placeCaretFromX(I)V

    .line 246
    const/4 v1, 0x1

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressTracking:Z

    .line 247
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->longPressFired:Z

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressDownAt:J

    .line 249
    sput p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressDownX:I

    .line 250
    sput p1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressDownY:I

    .line 251
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->focusInput()V

    .line 252
    return v1

    .line 239
    :cond_51
    :goto_51
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressTracking:Z
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_56

    .line 240
    return v0

    .line 227
    :catchall_54
    move-exception p0

    .line 228
    return v0

    .line 253
    :catchall_56
    move-exception p0

    .line 254
    return v0
.end method

.method public static outputTopInset()I
    .registers 2

    .line 145
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    if-gtz v0, :cond_7

    .line 146
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->compute()V

    .line 148
    :cond_7
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static placeCaretFromX(I)V
    .registers 8

    .line 661
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 662
    if-nez v1, :cond_7

    .line 663
    const-string v1, ""

    .line 665
    :cond_7
    if-gtz p0, :cond_c

    .line 666
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 667
    return-void

    .line 669
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 670
    nop

    .line 671
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_33

    .line 672
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->measureTextWidth(Ljava/lang/String;)F

    move-result v5

    .line 673
    int-to-float v6, p0

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 674
    cmpg-float v6, v5, v3

    if-gez v6, :cond_30

    .line 675
    nop

    .line 676
    move v2, v4

    move v3, v5

    .line 671
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 679
    :cond_33
    sput v2, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    .line 682
    goto :goto_39

    .line 680
    :catchall_36
    move-exception p0

    .line 681
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 683
    :goto_39
    return-void
.end method

.method private static rememberDraggedPos(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;)V
    .registers 3

    .line 952
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    .line 953
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p0

    .line 954
    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelX:I

    if-ne v0, v1, :cond_10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I

    if-eq p0, v1, :cond_1b

    .line 955
    :cond_10
    const/4 v1, 0x1

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->userMoved:Z

    .line 956
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->savedX:I

    .line 957
    sput p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->savedY:I

    .line 958
    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelX:I

    .line 959
    sput p0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->panelY:I
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 962
    :cond_1b
    goto :goto_1d

    .line 961
    :catchall_1c
    move-exception p0

    .line 963
    :goto_1d
    return-void
.end method

.method private static requestRedraw()V
    .registers 1

    .line 654
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    .line 656
    goto :goto_6

    .line 655
    :catchall_5
    move-exception v0

    .line 657
    :goto_6
    return-void
.end method

.method private static resolveMenuFields()V
    .registers 2

    .line 1014
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->menuFieldsResolved:Z

    if-eqz v0, :cond_5

    .line 1015
    return-void

    .line 1017
    :cond_5
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "menus"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMenusField:Ljava/lang/reflect/Field;

    .line 1018
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "INGAME"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedIngameField:Ljava/lang/reflect/Field;

    .line 1019
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "INGAME_FLAG_ACTION_CONSOLE"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedConsoleIdxField:Ljava/lang/reflect/Field;

    .line 1021
    const/4 v0, 0x1

    :try_start_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMenusField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2d

    .line 1022
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedMenusField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1024
    :cond_2d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedIngameField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_36

    .line 1025
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedIngameField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1027
    :cond_36
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedConsoleIdxField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3f

    .line 1028
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->cachedConsoleIdxField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_40

    .line 1031
    :cond_3f
    goto :goto_41

    .line 1030
    :catchall_40
    move-exception v1

    .line 1032
    :goto_41
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->menuFieldsResolved:Z

    .line 1033
    return-void
.end method

.method public static restore()V
    .registers 2

    .line 516
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    .line 517
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretHandlersInstalled:Z

    .line 518
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hideSystemIme()V

    .line 519
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->applied:Z

    .line 520
    const/4 v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->lastLineCount:I

    .line 521
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->contentLaidOut:Z

    .line 522
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->titleReady:Z

    .line 524
    :try_start_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    .line 525
    :goto_1d
    if-eqz v1, :cond_22

    .line 526
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    .line 529
    :cond_22
    goto :goto_24

    .line 528
    :catchall_23
    move-exception v0

    .line 530
    :goto_24
    return-void
.end method

.method private static selHi()I
    .registers 2

    .line 317
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-ge v0, v1, :cond_9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    goto :goto_b

    :cond_9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    :goto_b
    return v0
.end method

.method private static selLo()I
    .registers 2

    .line 313
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    if-ge v0, v1, :cond_9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    goto :goto_b

    :cond_9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    :goto_b
    return v0
.end method

.method public static selectAll()V
    .registers 3

    .line 286
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 287
    if-nez v0, :cond_8

    .line 288
    const-string v0, ""

    .line 289
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    .line 291
    :cond_8
    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selAnchor:I

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 293
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->inputFocused:Z

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caretBlinkAt:J

    .line 295
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->installCaretHandlers()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_23

    .line 297
    :try_start_1d
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 299
    goto :goto_22

    .line 298
    :catchall_21
    move-exception v0

    .line 301
    :goto_22
    goto :goto_24

    .line 300
    :catchall_23
    move-exception v0

    .line 302
    :goto_24
    return-void
.end method

.method private static setElPosY(Lage/of/civilizations2/jakowski/lukasz/MenuElement;I)V
    .registers 4

    .line 988
    :try_start_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 989
    return-void

    .line 990
    :catchall_4
    move-exception v0

    .line 993
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iPosY"

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_18

    .line 995
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 996
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    .line 999
    :cond_18
    goto :goto_1a

    .line 998
    :catchall_19
    move-exception p0

    .line 1000
    :goto_1a
    return-void
.end method

.method public static showSystemIme()V
    .registers 2

    .line 483
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    if-eqz v0, :cond_a

    .line 484
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 487
    :cond_a
    goto :goto_c

    .line 486
    :catchall_b
    move-exception v0

    .line 488
    :goto_c
    return-void
.end method

.method public static submitLine()V
    .registers 2

    .line 501
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    if-eqz v0, :cond_9

    .line 502
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    .line 504
    :cond_9
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->caret:I

    .line 505
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->getConsoleMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_16

    .line 507
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->layoutConsoleContent(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Z)V

    .line 510
    :cond_16
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->focusInput()V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 512
    goto :goto_1b

    .line 511
    :catchall_1a
    move-exception v0

    .line 513
    :goto_1b
    return-void
.end method

.method private static tickLongPress()V
    .registers 7

    .line 359
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressTracking:Z

    if-eqz v0, :cond_46

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->longPressFired:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_47

    if-eqz v0, :cond_9

    goto :goto_46

    .line 362
    :cond_9
    nop

    .line 364
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    if-eqz v2, :cond_25

    .line 365
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_27

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v2, 0x0

    goto :goto_26

    :cond_23
    :goto_23
    const/4 v2, 0x1

    goto :goto_26

    .line 364
    :cond_25
    const/4 v2, 0x0

    .line 368
    :goto_26
    goto :goto_29

    .line 367
    :catchall_27
    move-exception v2

    const/4 v2, 0x0

    .line 369
    :goto_29
    if-nez v2, :cond_2e

    .line 370
    :try_start_2b
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressTracking:Z

    .line 371
    return-void

    .line 373
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressDownAt:J

    sub-long/2addr v2, v4

    .line 374
    const-wide/16 v4, 0x1c2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_45

    .line 375
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->longPressFired:Z

    .line 376
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->pressTracking:Z

    .line 377
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->selectAll()V

    .line 378
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->showSystemIme()V
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_47

    .line 381
    :cond_45
    goto :goto_48

    .line 360
    :cond_46
    :goto_46
    return-void

    .line 380
    :catchall_47
    move-exception v0

    .line 382
    :goto_48
    return-void
.end method

.method public static titleHeight()I
    .registers 4

    .line 77
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    .line 78
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 79
    if-ge v0, v1, :cond_14

    .line 80
    move v0, v1

    .line 83
    :cond_14
    :try_start_14
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    .line 84
    if-lez v2, :cond_23

    if-ge v2, v0, :cond_23

    .line 85
    goto :goto_2b

    .line 86
    :cond_23
    if-le v2, v0, :cond_2c

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2d

    add-int/2addr v1, v3

    if-gt v2, v1, :cond_2c

    .line 87
    nop

    .line 90
    :goto_2b
    move v0, v2

    :cond_2c
    goto :goto_2e

    .line 89
    :catchall_2d
    move-exception v1

    .line 91
    :goto_2e
    return v0
.end method
