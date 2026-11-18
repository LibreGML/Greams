.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_CivInfo.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xaf

.field protected static final FONT_SIZE_GREAT:F = 0.7f

.field protected static final FONT_SIZE_INFO:F = 0.8f

.field protected static hideAnimation:Z = true

.field protected static lTime:J


# instance fields
.field protected iGreatPowerWidth:I

.field protected sGreatPower:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 15

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->iGreatPowerWidth:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$1;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_circle:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_circle:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v3, v4

    const-string v4, "1"

    invoke-direct {v1, p0, v4, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;Ljava/lang/String;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$2;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v11, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v12, v2, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    sub-int v13, v2, v3

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_NAME:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$3;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;IIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$4;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;Ljava/lang/String;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$5;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v5

    const-string v5, ""

    invoke-direct {v1, p0, v5, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;Ljava/lang/String;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    add-int/lit8 v11, v2, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 v12, v2, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    invoke-direct {v2, v5, v0, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v3, v1, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v4, v0, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;I)F
    .locals 0

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale(I)F

    move-result p0

    return p0
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private final getImageScale(I)F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_CivInfo()V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->GO_TO_WIKI_SCENARIO:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto/16 :goto_1

    :cond_1
    :try_start_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result p1

    if-lez p1, :cond_7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_PosX:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_PosY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Player;->fBefore_Scale:F

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_ActiveProvince:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME_CIV_VIEW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne p1, v3, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    invoke-virtual {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->enableDrawCivilizationRegions_FogOfWar(II)V

    goto :goto_0

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    invoke-virtual {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->enableDrawCivilizationRegions(II)V

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v0, 0x5dc

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    goto/16 :goto_1

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result v0

    xor-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->ACTIVE_CIVILIZATION_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCivilizationNameMode:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_1

    :cond_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Rank()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Rank(Z)V

    goto :goto_1

    :cond_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Rank()V

    :cond_7
    :goto_1
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    const-wide/16 v3, 0xaf

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v10, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    const/high16 v2, 0x432f0000    # 175.0f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

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
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

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
    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    move v11, v1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void

    :cond_2
    move/from16 v11, p2

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    const/4 v2, 0x7

    const/high16 v12, 0x3f800000    # 1.0f

    if-gt v1, v2, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankPosition()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_4

    :cond_3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->dialog_title:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    const v13, 0x3f333333    # 0.7f

    mul-float v4, v4, v13

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->iGreatPowerWidth:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale()F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v13

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v13

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, v10

    add-int v2, v2, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale()F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale()F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->sGreatPower:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->rank:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getImageScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v13

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v10

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :cond_4
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e8ccccd    # 0.275f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v2

    add-int/2addr v2, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_LIGHTER_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_LIGHTER_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_LIGHTER_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f266666    # 0.65f

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v10

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v10

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v10

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v10

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v1, p3, 0x1

    move/from16 v2, p4

    invoke-super {p0, p1, v11, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result v2

    add-int v3, v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    return-void
.end method

.method protected drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getWidth()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

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

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_CivInfo()V

    return-void
.end method

.method protected final setHideAnimation(Z)V
    .locals 8

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    if-eq p1, v0, :cond_1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xaf

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_1
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->setHideAnimation(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->setHideAnimation(Z)V

    :goto_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfo(I)V

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "GreatPower"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->sGreatPower:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->sGreatPower:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->iGreatPowerWidth:I

    return-void
.end method
