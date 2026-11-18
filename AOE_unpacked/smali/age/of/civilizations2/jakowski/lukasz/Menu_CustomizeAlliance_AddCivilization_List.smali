.class Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CustomizeAlliance_AddCivilization_List.java"


# instance fields
.field private lCivID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 21

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/high16 v11, 0x42480000    # 50.0f

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v20, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v12, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v12, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v11

    float-to-int v3, v1

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v14, v0, 0x1

    mul-int v1, v1, v14

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v2, v2, v0

    add-int v5, v1, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v12

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;IIIIIIZ)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v14

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v13, v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v11

    float-to-int v3, v1

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v1, v1, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v15, v0, 0x1

    mul-int v2, v2, v15

    add-int v5, v1, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v13

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;IIIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v15

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAllianceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->addCivilization(I)V

    goto :goto_3

    :cond_1
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAllianceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->lCivID:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->addCivilization(I)V

    :goto_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCUSTOMIZE_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CustomizeAlliance_AddCivilization_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "RandomCivilization"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
