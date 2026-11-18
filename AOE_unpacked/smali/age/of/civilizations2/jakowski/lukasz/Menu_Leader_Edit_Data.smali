.class Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Leader_Edit_Data.java"


# instance fields
.field private sBorn:Ljava/lang/String;

.field private sImage:Ljava/lang/String;

.field private sName:Ljava/lang/String;

.field private sWiki:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    float-to-int v5, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$1;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v12, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    add-int/lit8 v14, v2, -0x2

    const/4 v15, 0x1

    move-object v8, v1

    move-object/from16 v9, p0

    move v13, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;Ljava/lang/String;IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getImage()Ljava/lang/String;

    move-result-object v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v12, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    add-int/lit8 v14, v2, -0x2

    move-object v8, v1

    move v13, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;Ljava/lang/String;IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getMonth()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v12, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    add-int/lit8 v14, v2, -0x2

    move-object v8, v1

    move v13, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;Ljava/lang/String;IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$4;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v12, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    add-int/lit8 v14, v2, -0x2

    move-object v8, v1

    move v13, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;Ljava/lang/String;IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    const v4, 0x3f19999a    # 0.6f

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    const/4 v10, -0x1

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "-"

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const/4 v9, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int v11, v2, v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v13, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v14, v2

    const-string v9, "+"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$5;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v11, v1, 0x4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;Ljava/lang/String;IZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x4

    add-int v4, v1, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sBorn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sWiki:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_9
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_b
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_c
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_e
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_f
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_11
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_12
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_14
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_15
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_17
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_18
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_1a
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_1b
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    add-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_1c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :pswitch_1d
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    sub-float/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->updateLanguage()V

    return-void

    :pswitch_1e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    :pswitch_1f
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->saveLeader_Edit_Data()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_LEADERS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->backToMenu:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSCENARIO_AGE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateSelecetScenarioAge_Slider()V

    return-void

    :pswitch_20
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    :pswitch_21
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getWidth()I

    move-result v1

    invoke-virtual {p3, p1, p4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {p3, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosY()I

    move-result p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getHeight()I

    move-result p4

    add-int v3, p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p3, p4, p4, p4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p3, p1, p4, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 10

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sName:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "ImageName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sImage:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Born"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sBorn:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Wiki"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->sWiki:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Leader"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "PopulationGrowthModifier"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    const-string v4, "+"

    const-string v5, ""

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "EconomyGrowthModifier"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_1

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "IncomeTaxation"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object v8, v5

    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "IncomeProduction"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_3

    move-object v8, v4

    goto :goto_3

    :cond_3
    move-object v8, v5

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "Administration"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_4

    move-object v8, v4

    goto :goto_4

    :cond_4
    move-object v8, v5

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "Research"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_5

    move-object v8, v4

    goto :goto_5

    :cond_5
    move-object v8, v5

    :goto_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "MilitaryUpkeep"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_6

    move-object v8, v4

    goto :goto_6

    :cond_6
    move-object v8, v5

    :goto_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "AttackBonus"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_7

    move-object v8, v4

    goto :goto_7

    :cond_7
    move-object v8, v5

    :goto_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "DefenseBonus"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_8

    move-object v8, v4

    goto :goto_8

    :cond_8
    move-object v8, v5

    :goto_8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v8

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_Data;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "MovementPoints"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9

    goto :goto_9

    :cond_9
    move-object v4, v5

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
