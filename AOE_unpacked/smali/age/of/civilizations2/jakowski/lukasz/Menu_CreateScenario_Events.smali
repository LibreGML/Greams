.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;
.super Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;
.source "Menu_CreateScenario_Events.java"


# instance fields
.field private assignProvinces:Ljava/lang/String;

.field private assignProvinces2:Ljava/lang/String;

.field private iStepWidth:I

.field private iStepWidth2:I


# direct methods
.method protected constructor <init>()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events$1;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;Ljava/lang/String;IIIZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v4, v1, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;Ljava/lang/String;IIIZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v1, p0

    move v3, v8

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;->actionElement(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->getMenuPosY()I

    move-result v0

    add-int/2addr v0, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, p2, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R_Reflected(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces:Ljava/lang/String;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->iStepWidth:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3f733333    # 0.95f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces2:Ljava/lang/String;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->iStepWidth2:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CNG_TOP_SCENARIO_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleCreateScenario_Events_Edit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_EVENTS_EDIT_BACK:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->sortEventsByDate()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_SETTINGS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "SetEvents"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->iStepWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces2:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->assignProvinces2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events;->iStepWidth2:I

    return-void
.end method
