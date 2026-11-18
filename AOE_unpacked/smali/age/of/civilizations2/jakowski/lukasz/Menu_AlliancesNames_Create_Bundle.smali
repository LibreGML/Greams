.class Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_AlliancesNames_Create_Bundle.java"


# instance fields
.field private sWord:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 23

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle$1;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWord(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v3

    float-to-int v10, v4

    const/4 v11, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v4, v1, 0x1

    mul-int v3, v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v16, v1, 0x2

    mul-int v5, v5, v16

    add-int v12, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v3, v5

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v18, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v3, v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v5, v5, v16

    add-int v19, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v20, v3, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    const/16 v22, 0x1

    goto :goto_1

    :cond_0
    const/16 v22, 0x0

    :goto_1
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Remove;-><init>(IIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_1
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v2, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v2, v3, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->sWord:Ljava/lang/String;

    return-object p0
.end method

.method private final updateBundle()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElementsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->setWord(ILjava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto/16 :goto_1

    :cond_0
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElementsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->setWord(ILjava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v0

    add-int/lit8 p1, p1, -0x2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->removeWord(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->addWord(Ljava/lang/String;)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->updateBundle()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE_BUNDLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(II)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->sWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->onBackPressed()V

    :goto_1
    return-void
.end method

.method protected final onBackPressed()V
    .locals 4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->updateBundle()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWord(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->removeWord(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getBundle(I)Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData_Bundle;->getWordsSize()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->removeBundle(I)V

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Word"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->sWord:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewWord"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_AlliancesNames_Create_Bundle;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CreateNewBundleOfWords"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
