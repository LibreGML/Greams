.class Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Build;
.source "Button_Build_Assimilate.java"


# static fields
.field protected static final FONT_SIZE_SCALE:F = 0.6f


# instance fields
.field protected cColorAssimilate:Lcom/badlogic/gdx/graphics/Color;

.field protected iDateWidth:I

.field protected sDate:Ljava/lang/String;

.field protected sProvinceName:Ljava/lang/String;

.field protected sStability:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 14

    move-object v12, p0

    move v13, p1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button_Build;-><init>(Ljava/lang/String;IIIIIIZZIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->cColorAssimilate:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p3

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sProvinceName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Stability"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sDate:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iDateWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sStability:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MIN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_STABILITY_MAX:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceStability()F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    const/16 v3, 0x4b

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->cColorAssimilate:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v0

    move/from16 v1, p7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->canBuild_Movement:Z

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iImageID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    if-lez v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v6, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v7, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iCostWidth:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->canBuild_MoneyCost:Z

    if-eqz v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_GOLD:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v6, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v7, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sMovementCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iMovementCostWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->canBuild_Movement:Z

    if-eqz v4, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_DIPLOMACY_POINTS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v6, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v7, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sMovementCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iMovementCostWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-virtual {p0, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getImageScale(IF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->canBuild_Movement:Z

    if-eqz v4, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_DIPLOMACY_POINTS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_2
    invoke-static {p1, v0, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    :goto_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-static {p1, v0, v3, v4, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sProvinceName:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    add-int/2addr v0, v3

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    sub-int/2addr v3, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int/2addr v3, p3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sDate:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sStability:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iDateWidth:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->cColorAssimilate:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->canBuild_MoneyCost:Z

    const-string v0, ""

    if-lez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->sCost:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Assimilate;->iCostWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
