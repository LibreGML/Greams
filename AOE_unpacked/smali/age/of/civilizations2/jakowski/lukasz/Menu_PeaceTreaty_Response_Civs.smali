.class Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_PeaceTreaty_Response_Civs.java"


# instance fields
.field protected final FONT_SCALE:F


# direct methods
.method protected constructor <init>()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const v2, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->FONT_SCALE:F

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v19, v2, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Text_PeaceTreaty_Result;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Defenders:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->peaceTreatyAccepted:Z

    const/4 v5, 0x0

    add-int/lit8 v7, v19, -0x2

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Text_PeaceTreaty_Result;-><init>(IZIII)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Text_PeaceTreaty_Result;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->iCivID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsDemands_Aggressors:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Demands;->peaceTreatyAccepted:Z

    const/4 v5, 0x0

    add-int/lit8 v7, v19, -0x2

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Text_PeaceTreaty_Result;-><init>(IZIII)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
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

    move-result v20

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs$1;

    const/4 v9, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;Ljava/lang/String;IZZ)V

    const/4 v10, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v11, v20, v2

    mul-int/lit8 v3, v18, 0x6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v8, p0

    move-object v9, v7

    move/from16 v12, v19

    invoke-virtual/range {v8 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    const/16 v17, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getMenuElementsSize()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    rem-int/lit8 v3, v17, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    add-int/lit8 v0, p3, 0x1

    invoke-super {p0, p1, p2, v0, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response_Civs;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Civilizations"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
