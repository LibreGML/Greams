.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_SelectProvinces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;
    }
.end annotation


# static fields
.field protected static typeOfAction:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_LEFT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    return-void
.end method

.method protected constructor <init>()V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$1;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v12, v1, v2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$2;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v20, v1, 0x2

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v14, v0

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$3;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v11, v1, v2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v20, v1, v2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v22, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$5;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v11, v1, v2

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$6;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v1, v2

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object v15, v0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;Ljava/lang/String;IIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_CivName;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v11, v1, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_CivName;-><init>(IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 2

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    xor-int/2addr p1, v0

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->popProvince()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result p1

    if-nez p1, :cond_5

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    goto :goto_0

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->DESELET_ALL_SELECTED_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto :goto_0

    :cond_3
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    xor-int/2addr p1, v0

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    goto :goto_0

    :cond_4
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    xor-int/2addr p1, v0

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->onBackPressed()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 5

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuPosY()I

    move-result v2

    add-int/2addr v2, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v4

    sub-int/2addr v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-static {p1, v1, v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorButtons_Top_Edge_R_Reflected(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-static {p1, v1, v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorButtons_Bot_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_LEFT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_TradeRequest_Just()V

    goto :goto_3

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->TRADE_RIGHT:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_TradeRequest_Just()V

    goto :goto_3

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;->ULTIMATUM:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces$TypeOfAction;

    if-ne v1, v2, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Save"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Brush"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Select"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "DeselectAll"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Undo"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "Map"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v4, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->updateButtonWidth(III)I

    const/4 v6, 0x2

    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    invoke-virtual {p0, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->updateButtonWidth(III)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v0, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->updateButtonWidth(III)I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v6

    sub-int/2addr v0, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v6

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SelectProvinces;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    return-void
.end method
