.class Lage/of/civilizations2/jakowski/lukasz/InitGame;
.super Ljava/lang/Object;
.source "InitGame.java"


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/InitGame$1;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/InitGame$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/InitGame;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected final Init()V
    .locals 3

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadFontMain()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->loadSettings_ActiveMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->updateWorldMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->initExtraMenus()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLukaszJakowskiGames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iJakowskiGamesWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "presents"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iJakowskiGames_PresentsWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "\u845b\u58a8\u6797\u00a9\ufe0f\u7248\u6743\u6240\u6709"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iAgeOfCivilizationsWidth:I

    return-void

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    goto :goto_0
.end method
