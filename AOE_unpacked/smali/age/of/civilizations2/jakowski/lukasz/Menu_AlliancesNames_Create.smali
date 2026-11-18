.class Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_AlliancesNames_Create.java"


# instance fields
.field private lTime:J

.field private sPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 23

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const-wide/16 v0, 0x0

    move-object/from16 v11, p0

    iput-wide v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->lTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create$1;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v12, 0x42480000    # 50.0f

    mul-float v2, v2, v12

    float-to-int v5, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v17, v2, v3

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getSize()I

    move-result v2

    if-ge v13, v2, :cond_1

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-static {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getAlliances_Random_Names_All_BundleID(Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v12

    float-to-int v5, v2

    const/4 v6, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v15, v13, 0x2

    mul-int v2, v2, v15

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v16, v13, 0x3

    mul-int v3, v3, v16

    add-int v7, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v8, v2, v3

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v2, v14

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v18, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v3, v3, v15

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v16

    add-int v19, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v20, v3, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    if-lez v13, :cond_0

    const/4 v3, 0x1

    const/16 v22, 0x1

    goto :goto_1

    :cond_0
    const/16 v22, 0x0

    :goto_1
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;-><init>(IIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v2, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v2, v4, v1, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v5, v1, 0x4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    move-object/from16 v2, p0

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->sPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    sub-int/2addr p1, v1

    div-int/2addr p1, v4

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->REMOVE_RANDOM_ALLIANCES_NAMES_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto/16 :goto_0

    :cond_0
    sub-int/2addr p1, v1

    div-int/2addr p1, v4

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->addBundle(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getSize()I

    move-result p1

    sub-int/2addr p1, v2

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElementsSize()I

    move-result p1

    if-le p1, v1, :cond_5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->sPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    goto :goto_0

    :cond_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->setPackageName(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->saveAlliancesNamesPackage()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->onBackPressed()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->getInView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->lTime:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2d5

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomAllianceName(Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->lTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->lTime:J

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected final onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->lTime:J

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->sPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CreateNewBundleOfWords"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CreateNewPackage"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
