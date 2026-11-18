.class Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly;
.source "Button_Statistics_CallAlly_Right.java"


# instance fields
.field private iCallAllyWidth:I

.field private sCallAll:Ljava/lang/String;


# direct methods
.method protected constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly;-><init>(IIIIZ)V

    invoke-direct {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->callAlly(Z)V

    return-void
.end method

.method protected constructor <init>(IIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly;-><init>(IIIIZZ)V

    invoke-direct {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->callAlly(Z)V

    return-void
.end method

.method private final callAlly(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->sCallAll:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCallAllyWidth:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "JoinAWar"

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->sCallAll:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "CallAlly"

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->sCallAll:Ljava/lang/String;

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->sCallAll:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v0, 0x3f19999a    # 0.6f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCallAllyWidth:I

    :goto_1
    return-void
.end method


# virtual methods
.method protected buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->checkbox:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;)V

    return-object v0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;)V

    return-object v0
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getClickable()Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCallAllyWidth:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e333333    # 0.175f

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v6, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCallAllyWidth:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v7, v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->sCallAll:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    float-to-int v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-direct {v3, v4, v6, v7, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->diplomacyColors_GameData:Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/DiplomacyColors_GameData2;->COLOR_DIPLOMACY_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    add-int v6, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v7, v3, p3

    const/4 v8, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->iCivID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v7, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v7, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v6, v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v8

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v7, v3, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v8, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v9, v3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getTextWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    float-to-int v1, v5

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_CallAlly_Right;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v3, v4, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
