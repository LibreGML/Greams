.class Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_ServiceRibbon_Editor.java"


# direct methods
.method protected constructor <init>()V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/high16 v2, 0x42480000    # 50.0f

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v2

    float-to-int v11, v3

    const/4 v12, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v3, v0, 0x1

    mul-int v2, v2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v4, v4, v0

    add-int v13, v2, v4

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v16, 0x1

    move-object v8, v1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->updateLanguage()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSR(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSR(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v7, v1, :cond_3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors_Add()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getTag(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game/service_ribbons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;-><init>(IIZ)V

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->addServiceRibbonOverlay(Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_SERVICE_RIBBON_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    const/4 v2, 0x6

    mul-int/lit8 v1, v1, 0x6

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getSRSize()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v8, v9

    mul-int v8, v8, v5

    add-int/2addr v7, v8

    add-int v8, v7, p2

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v7

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->getMenuPosY()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, v4, -0x1

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_Colors:Ljava/util/List;

    move-object/from16 v7, p1

    move v10, v5

    invoke-virtual/range {v6 .. v14}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSRLevel(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIILjava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_ServiceRibbon_Editor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewServiceRibbon"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
