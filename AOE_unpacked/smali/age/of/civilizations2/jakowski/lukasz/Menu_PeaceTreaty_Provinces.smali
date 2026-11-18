.class Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_PeaceTreaty_Provinces.java"


# direct methods
.method protected constructor <init>()V
    .locals 23

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces$1;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Truce"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v7, v14, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v3, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v3

    const/16 v9, 0x1e

    const/16 v10, 0x4b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget v11, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->TRUCE_LENGTH:I

    const v12, 0x3f266666    # 0.65f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;Ljava/lang/String;IIIIIIIF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v6, v2

    const/16 v19, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v7, v14, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll_VicPoints;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->getVictoryPointsTotal()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v5, v14, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll_VicPoints;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Vassalize;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v7

    const/4 v9, 0x1

    move v7, v14

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Vassalize;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_WarReparations;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v7

    const/4 v9, 0x1

    move v7, v14

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_WarReparations;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    const/16 v20, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_ReleaseVassal;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v8, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v9, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v10, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v11

    const/4 v12, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int v15, v2, v3

    const/16 v16, 0x1

    move v13, v6

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_ReleaseVassal;-><init>(IIIIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->showProvinces:Z

    if-eqz v2, :cond_1

    const/16 v20, 0x0

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Province;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v14, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Province;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Localize;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v5, v14, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Localize;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v19, 0x0

    :goto_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v7, v14, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll_VicPoints;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->getVictoryPointsTotal()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v5, v14, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_TakeAll_VicPoints;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Vassalize;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iWillBecomeVassalOfCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v7

    const/4 v9, 0x1

    move v7, v14

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Vassalize;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_WarReparations;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iPaysWarReparationsToCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    const/4 v5, 0x0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v7

    const/4 v9, 0x1

    move v7, v14

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_WarReparations;-><init>(IIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    const/16 v20, 0x0

    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_ReleaseVassal;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v8, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iReleasesToCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    iget v9, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v10, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->lReleasableCivs:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_ReleaseableVassals;->getScoreValue()I

    move-result v11

    const/4 v12, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int v15, v2, v3

    const/16 v16, 0x1

    move v13, v6

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_ReleaseVassal;-><init>(IIIIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->showProvinces:Z

    if-eqz v2, :cond_4

    const/16 v20, 0x0

    :goto_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Province;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v14, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Province;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Localize;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v5, v14, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Button_PeaceTreaty_Demands_Localize;-><init>(IIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    :cond_5
    const/16 v19, 0x0

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    rem-int/lit8 v3, v19, 0x4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_6
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces$2;

    const/4 v9, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v10, v2, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;Ljava/lang/String;IZZ)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v12, v2, v14

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int v13, v22, v2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    :goto_7
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int v4, v4, v22

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move-object v11, v7

    move-object/from16 v16, v21

    invoke-virtual/range {v10 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->updateLanguage()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->TRUCE_LENGTH:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :cond_7
    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_7
.end method


# virtual methods
.method protected actionClose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->setVisible(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->hidePeaceTreatyProvinces()V

    return-void
.end method

.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    const-wide/16 v2, 0xfa

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "MakeDemands"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
