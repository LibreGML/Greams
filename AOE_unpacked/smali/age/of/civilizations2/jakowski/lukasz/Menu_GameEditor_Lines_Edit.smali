.class Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_GameEditor_Lines_Edit.java"


# instance fields
.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 23

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v11, 0x0

    iput-object v11, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->sName:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v5, v0, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v13, 0x42480000    # 50.0f

    mul-float v0, v0, v13

    float-to-int v3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    const/4 v8, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$2;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v13

    float-to-int v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    const/4 v9, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v13

    float-to-int v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v0, v0, v13

    float-to-int v3, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    add-int v5, v0, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v18, v1, 0x2

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v20, v1, 0x2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v22, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    invoke-direct {v1, v11, v0, v7, v7}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v5, v0, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->sName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 2

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->setImageName(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->saveLinesData()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(I)V

    :goto_0
    return-void

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->getMovable()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->setMovable(Z)V

    return-void

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->getFlipX()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->setFlipX(Z)V

    return-void

    :cond_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->getRapeatImage()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->setReapeatImage(Z)V

    return-void

    :cond_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->onBackPressed()V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_LINES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "ImageName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->sName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorLine_GameData:Lage/of/civilizations2/jakowski/lukasz/Line_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Line_GameData;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Repeat"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Flip"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Moveable"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElementsSize()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_GameEditor_Lines_Edit;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewStyle"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
