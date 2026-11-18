.class Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;
.source "Button_Statistics_War.java"


# static fields
.field private static final FONT_SCALE:F = 0.7f

.field private static final FONT_SCALE2:F = 0.6f

.field protected static lTime:J


# instance fields
.field private fAttackersPerc:F

.field private iAggressor:I

.field private iDefender:I

.field private iWarDateWidth:I

.field private iWarID:I

.field private oColorCasualtiesTotal:Lcom/badlogic/gdx/graphics/Color;

.field private sCasualtiesTotal:Ljava/lang/String;

.field private sDefenderName:Ljava/lang/String;

.field private sWarDate:Ljava/lang/String;


# direct methods
.method protected constructor <init>(IIIIII)V
    .locals 14

    move-object v7, p0

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v11, 0x2

    const-string v12, "Undiscovered"

    const/4 v13, 0x1

    if-ne v0, v11, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v0

    if-ne v0, v13, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetAlliance(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getAllianceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v0

    if-ne v0, v13, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getAllianceName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v6, v0, v3

    move-object v0, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;-><init>(Ljava/lang/String;IIIII)V

    const/4 v0, 0x0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarDateWidth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v11, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iput v8, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    goto :goto_1

    :cond_4
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    :goto_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v9, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    goto :goto_2

    :cond_5
    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v0

    if-ne v0, v13, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetAlliance(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getAllianceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sDefenderName:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iput v8, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    iput v9, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v0

    if-ne v0, v13, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getAllianceName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sDefenderName:Ljava/lang/String;

    :goto_5
    iput v10, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Aggressors()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getCasualties_Defenders()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6

    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_6
    iput-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->oColorCasualtiesTotal:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumber_SHORT(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sCasualtiesTotal:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarTurnID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sWarDate:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sWarDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarDateWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr v1, v0

    iput v1, v7, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->fAttackersPerc:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->lTime:J

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v1, v0, p1

    :cond_0
    return v1
.end method

.method private final getImageScale2(I)F
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v2, v0, p1

    :cond_0
    return v2
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    const/4 v6, -0x1

    if-ge v2, v5, :cond_1

    if-ge v2, v3, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-direct {v5, v6, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v5, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v2, v5, :cond_3

    if-ge v2, v3, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-direct {v5, v7, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-direct {v5, v6, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    :goto_4
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v2, v5, :cond_5

    if-ge v2, v3, :cond_5

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v2, v5, :cond_6

    if-ge v2, v3, :cond_6

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-direct {v5, v6, v4, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getWarScore()I

    move-result v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Score"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Balanced"

    invoke-virtual {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_7
    const-string v7, "%"

    if-gez v2, :cond_8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "XInFavorOfAggressors"

    goto :goto_7

    :cond_8
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "XInFavorOfDefenders"

    :goto_7
    invoke-virtual {v8, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Casualties"

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sCasualtiesTotal:Ljava/lang/String;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->oColorCasualtiesTotal:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sWarDate:Ljava/lang/String;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e8ccccd    # 0.275f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {p4, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result p4

    add-int v4, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v5, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result p4

    add-int v4, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v5, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ee66666    # 0.45f

    invoke-direct {p4, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result p4

    add-int v4, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v5, p4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result p4

    add-int/lit8 v6, p4, -0x4

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result p2

    add-int/lit8 v4, p2, -0x4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v7, p4

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->fAttackersPerc:F

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->lTime:J

    const-wide/16 v4, 0x177

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v10, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->fAttackersPerc:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v1, v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v1, v1, v3

    const v3, 0x43bb8000    # 375.0f

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    move v11, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    const/4 v12, 0x2

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, 0x437f0000    # 255.0f

    :try_start_0
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    if-ltz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :try_start_1
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    if-ltz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v12, :cond_6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    sub-int/2addr v1, v10

    move v14, v1

    :goto_2
    if-ltz v14, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_3

    :cond_3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    sub-int/2addr v1, v10

    move v14, v1

    :goto_4
    if-ltz v14, :cond_8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_5

    :cond_5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    :cond_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    sub-int/2addr v1, v10

    move v14, v1

    :goto_6
    if-ltz v14, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_6

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    sub-int/2addr v1, v10

    move v14, v1

    :goto_7
    if-ltz v14, :cond_8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v2

    invoke-virtual {v2, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_7

    :cond_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    sub-int/2addr v4, v10

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    sub-float/2addr v4, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sDefenderName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_rivals:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    sub-int/2addr v4, v10

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v14

    sub-float/2addr v4, v5

    div-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sCasualtiesTotal:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->difficulty_hell:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v7

    sub-float/2addr v4, v5

    div-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->oColorCasualtiesTotal:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v6

    mul-float v2, v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->sWarDate:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-direct {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getImageScale2(I)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarDateWidth:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v7

    sub-float/2addr v4, v5

    div-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f266666    # 0.65f

    const/4 v15, 0x0

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    const v8, 0x3ee66666    # 0.45f

    :try_start_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    if-ltz v1, :cond_9

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iAggressor:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_AT_WAR:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_8
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p1

    const v10, 0x3ee66666    # 0.45f

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :try_start_3
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    if-ltz v1, :cond_a

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iDefender:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9

    :cond_a
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_9
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int v5, v2, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int v5, v2, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int v5, v2, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int v5, v2, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v10, 0x3e800000    # 0.25f

    invoke-direct {v1, v15, v15, v15, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int v5, v2, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f48f5c3    # 0.785f

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_War;->iWarID:I

    return v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    return v0
.end method
