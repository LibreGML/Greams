.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_CurrentWars_Info.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x87

.field protected static hideAnimation:Z = true

.field protected static lTime:J


# instance fields
.field protected final FONT_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 25

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->FONT_SCALE:F

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v4, "+100% "

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v2, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_28

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistorySize()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v7, v0, -0x3

    if-le v2, v7, :cond_28

    if-ltz v2, :cond_28

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v7

    move v8, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_1

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v11, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->UNION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v11, v12, :cond_0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v12, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v12

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Union;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v11, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v11

    iget v12, v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v11, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v11, v15

    move-object v10, v15

    move v15, v8

    invoke-direct/range {v11 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Union;-><init>(IIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_4

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v7}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->WAR_DECLARAION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v10, v11, :cond_3

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v11, v2, v7}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v11, v2, v7}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_War;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v7}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v7}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v15

    move-object v1, v15

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_War;-><init>(IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->TRUCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Truce;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Truce;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->NEW_COONY:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_NewColony;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_NewColony;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_c

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->ANNEXATION:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_b

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_a

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Annexation;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Annexation;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Disease;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v11, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v11

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v12, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getName()Ljava/lang/String;

    move-result-object v20

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v21, v12, v3

    const/16 v22, 0x2

    add-int/lit8 v24, v4, -0x2

    move-object/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v23, v8

    invoke-direct/range {v17 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Disease;-><init>(IILjava/lang/String;IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v1, :cond_10

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->JOINS_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Alliance;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Alliance;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v1, :cond_12

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->LEAVES_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_11

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_AllianceLeaves;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getName()Ljava/lang/String;

    move-result-object v12

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_AllianceLeaves;-><init>(ILjava/lang/String;IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_15

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->IS_VASSAL:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_14

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_13

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_IsVassal;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_IsVassal;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v1, :cond_18

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->IS_NOT_VASSAL:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_17

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_16

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_IsNotVassal;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_IsNotVassal;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_18
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v1, :cond_1b

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->FRIENDLY_CIVS:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_1a

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_19

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    :cond_19
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_FriendlyCivs;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_FriendlyCivs;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v1, :cond_1e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->SIGNED_DEFENSIVE_PACT:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_1d

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_1c

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_SignedDefensivePact;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_SignedDefensivePact;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_21

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->SIGNED_NON_AGGRESSION_PACT:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_20

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_1f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_1f
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_SignedNonAggressionPact;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_SignedNonAggressionPact;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_21
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v1, :cond_24

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->GUARANTEE:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_23

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_22

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_23

    :cond_22
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Guarantee;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_Guarantee;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistoryTurnSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_27

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v7, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->historyLog_Type:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;->HAVE_MILITARY_ACCESS:Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Types;

    if-ne v7, v10, :cond_26

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_25

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_25
    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_HaveMilitaryAccess;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v11, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivA:I

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {v10, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v10

    iget v12, v10, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->iCivB:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int v13, v10, v3

    const/4 v14, 0x2

    add-int/lit8 v16, v4, -0x2

    move-object v10, v7

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Text_Outliner_DiploInfo_HaveMilitaryAccess;-><init>(IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_27
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_28
    const/4 v1, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v2, v0, v4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_CurrentWars()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    :goto_11
    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v3

    :goto_12
    add-int/2addr v0, v3

    goto :goto_13

    :cond_29
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_Outliner()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_Outliner()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    goto :goto_11

    :cond_2a
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    goto :goto_12

    :goto_13
    add-int/lit8 v3, v0, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x5

    goto :goto_14

    :cond_2b
    const/4 v5, 0x3

    :goto_14
    mul-int v0, v0, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v8

    add-int v10, v5, v8

    goto :goto_15

    :cond_2c
    const/4 v7, 0x1

    const/4 v10, 0x0

    :goto_15
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_2d

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementsSize()I

    move-result v2

    add-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->updateLanguage()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->FONT_SCALE:F

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v4, p1, 0x2

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;-><init>(IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v3, p1, v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "Wars"

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    invoke-direct {v1, p1, v0, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 v0, v4, 0x2

    sub-int/2addr p1, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    if-le v0, v5, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    :goto_0
    mul-int v2, v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    :goto_1
    move v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    const-wide/16 v2, 0x87

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->hideAnimation:Z

    const/high16 v1, 0x43070000    # 135.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    :goto_0
    add-int/2addr p2, v0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_1
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->hideAnimation:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void

    :cond_2
    :goto_1
    add-int/2addr p3, v4

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v4, p2, 0x5

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v5, p2, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final setHideAnimation(Z)V
    .locals 8

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->hideAnimation:Z

    if-eq p1, v0, :cond_1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x87

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->lTime:J

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_1
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->hideAnimation:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->setHideAnimation(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars_Info;->setHideAnimation(Z)V

    :goto_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method
