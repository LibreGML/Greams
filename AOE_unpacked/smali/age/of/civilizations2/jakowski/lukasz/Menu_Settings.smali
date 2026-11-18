.class Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Settings.java"


# direct methods
.method protected constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    const/4 v2, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v1, v0, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int v6, v0, v1

    move-object v1, p0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->goToMenu2:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->goToMenu2:Lage/of/civilizations2/jakowski/lukasz/Menu;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    if-ne v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
