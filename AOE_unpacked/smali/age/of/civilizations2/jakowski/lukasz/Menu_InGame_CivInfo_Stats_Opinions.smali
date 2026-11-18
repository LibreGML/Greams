.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_CivInfo_Stats_Opinions.java"


# static fields
.field protected static iACTIVE_VIEW_ID:I = -0x3e7


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    :goto_0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions$1;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_AZ:I

    const/4 v10, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v13, v3, 0x2

    const/4 v15, 0x1

    const/4 v12, 0x0

    move-object v7, v2

    move-object/from16 v8, p0

    move v14, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions$2;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_heart:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    div-int/2addr v4, v5

    add-int v11, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    div-int/2addr v4, v5

    sub-int v13, v3, v4

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v0, 0x0

    const/16 v17, 0x0

    :try_start_0
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    const/16 v4, -0x3e7

    const/4 v15, 0x1

    if-ne v3, v4, :cond_1

    sput v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    goto/16 :goto_9

    :cond_1
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    sub-int/2addr v3, v15

    :goto_1
    if-lez v3, :cond_f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    if-eq v4, v7, :cond_2

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v10, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v8

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    add-int/lit8 v14, v7, -0x2

    const/16 v16, 0x1

    move-object v7, v4

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v2

    move v15, v0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;-><init>(IIIIIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    if-ne v3, v15, :cond_5

    move v3, v2

    const/4 v2, 0x1

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_f

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    if-eq v4, v7, :cond_4

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v10, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v8

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    add-int/lit8 v14, v7, -0x2

    const/16 v16, 0x1

    move-object v7, v4

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v3

    move v15, v0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;-><init>(IIIIIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    if-ne v3, v5, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v7

    if-ge v4, v7, :cond_7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v7

    if-lez v7, :cond_6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v8

    if-eq v7, v8, :cond_6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x1

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v8

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    move v14, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v9

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v9, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    add-int/lit8 v16, v7, -0x2

    const/16 v18, 0x1

    move-object v7, v4

    move v13, v2

    move v1, v14

    move/from16 v14, v16

    const/16 v19, 0x1

    move v15, v0

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;-><init>(IIIIIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const v1, 0x3f19999a    # 0.6f

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_a
    const/16 v19, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    :goto_6
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_b

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v7

    if-eq v4, v7, :cond_b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSortedCivsAZ(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_e

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    move v4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v9, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v7

    float-to-int v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    add-int/lit8 v14, v7, -0x2

    const/16 v16, 0x1

    move-object v7, v3

    move v13, v2

    move v15, v0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Opinion2;-><init>(IIIIIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    :cond_f
    :goto_9
    const/4 v1, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v2, v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v5, v0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->updateLanguage()V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_10

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    rem-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v1, p0

    return-void
.end method


# virtual methods
.method protected actionClose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected actionElement(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfo(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateActiveCivInfo_InGame()V

    return-void

    :cond_0
    sget p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, -0x2

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    goto :goto_0

    :cond_1
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Civ_Info_Opinions()V

    return-void

    :cond_2
    sget p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    goto :goto_1

    :cond_3
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->iACTIVE_VIEW_ID:I

    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Civ_Info_Opinions()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    const-wide/16 v3, 0xaf

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v12, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    const/high16 v2, 0x432f0000    # 175.0f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int v1, p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v4, v2

    mul-float v3, v3, v4

    float-to-int v2, v3

    add-int/2addr v1, v2

    add-int v1, p2, v1

    :goto_0
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    move v13, v1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void

    :cond_2
    move/from16 v13, p2

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosX()I

    move-result v2

    add-int v3, v2, v13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0, p1, v13, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1, v13, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, v13, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosX()I

    move-result v2

    add-int v3, v2, v13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosX()I

    move-result v2

    add-int v3, v2, v13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosX()I

    move-result v2

    add-int v3, v2, v13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosX()I

    move-result v2

    add-int v3, v2, v13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v10

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_CivInfo()V

    return-void
.end method

.method protected setPosY(I)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le p1, v0, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->setHeight(I)V

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->getHeight()I

    move-result v0

    mul-int/lit8 p1, p1, 0x6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->setHeight(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Opinions;->updateMenuElements_IsInView()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method
