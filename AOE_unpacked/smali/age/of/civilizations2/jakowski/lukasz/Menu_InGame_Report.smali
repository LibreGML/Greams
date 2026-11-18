.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_Report.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xe1


# instance fields
.field private final TITILE_GRADIENT_ALPHA:F

.field private lTime:J


# direct methods
.method protected constructor <init>()V
    .locals 17

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->TITILE_GRADIENT_ALPHA:F

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->lTime:J

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40d00000    # 6.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int v12, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-le v0, v1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    :cond_0
    move v13, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->checkReport()V

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$1;

    const/4 v2, 0x2

    const/4 v3, 0x0

    add-int/lit8 v4, v13, -0x4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v0, 0x3

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;IIII)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$2;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    const/4 v8, 0x0

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v4, v13, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->iPopulationLosses:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->iEconomyLosses:I

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;IIIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_IDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    if-ge v9, v0, :cond_1

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v3, v0, v14

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, v13, v0

    div-int/lit8 v4, v0, 0x2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_IDs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_Armies:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_Armies_Lost:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v8, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;IIIIII)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_IDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v3, v0, v9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, v13, v0

    div-int/lit8 v4, v0, 0x2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_IDs:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_Armies:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_ArmiesLost:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;IIIIII)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v1, :cond_3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->attackersWon:Z

    if-eqz v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_IDs:Ljava/util/List;

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_IDs:Ljava/util/List;

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-boolean v5, v5, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->attackersWon:Z

    if-eqz v5, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lAttackers_IDs:Ljava/util/List;

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->lDefenders_IDs:Ljava/util/List;

    :goto_4
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IsVictorious"

    invoke-virtual {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v6, v1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v7, v13, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;ILjava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    if-le v12, v0, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    move v12, v0

    :cond_7
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$6;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->iBattleOfProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->iBattleOfProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getRandomBattleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Battle"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v13

    div-int/lit8 v2, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int v3, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v13

    move v5, v12

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->lTime:J

    const-wide/16 v10, 0xe1

    add-long/2addr v1, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v12, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->lTime:J

    sub-long/2addr v6, v12

    long-to-float v6, v6

    const/high16 v7, 0x43610000    # 225.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v2

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->attackersWon:Z

    const v7, 0x3ea66666    # 0.325f

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuPosY()I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v12, 0x3fb9999a    # 1.45f

    mul-float v2, v2, v12

    float-to-int v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->reportData:Lage/of/civilizations2/jakowski/lukasz/Report_Data;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Report_Data;->attackersWon:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_FALSE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CHECKBOX_TRUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ef33333    # 0.475f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x8

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v5, v2, 0x8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v5, v2, 0x8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->lTime:J

    add-long/2addr v1, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final getRandomBattleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_9

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    const/16 v1, 0xe

    if-eq v0, v1, :cond_c

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleOf"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "AttackOn"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "InvasionOf"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName1"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName2"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName3"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName4"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName5"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName6"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName7"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName8"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName9"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName10"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "BattleName11"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "ScrambleFor"

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getW()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getWidth()I

    move-result v0

    return v0
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->lTime:J

    return-void
.end method
