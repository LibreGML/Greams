.class Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Build;
.source "Button_Build_Level.java"


# static fields
.field protected static final FONT_SIZE_LEVEL:F = 0.65f


# instance fields
.field private iLevelWidth:I

.field private sLevel:Ljava/lang/String;

.field private sLevelID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button_Build;-><init>(Ljava/lang/String;IIIIIIZZIF)V

    const/4 v0, 0x0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iLevelWidth:I

    move-object/from16 v0, p3

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sLevelID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sLevel:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v12, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iLevelWidth:I

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getIsHovered()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1e

    sub-long/2addr v6, v8

    const/4 v0, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->backAnimation:Z

    const v5, 0x3ca3d70a    # 0.02f

    if-eqz v4, :cond_0

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    sub-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->backAnimation:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    add-float/2addr v1, v5

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->backAnimation:Z

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->lTime:J

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    sub-float v2, v3, v2

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->backAnimation:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->fAlphaMod:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->lTime:J

    :goto_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iImageID:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->inConstruction:Z

    const v1, 0x3f19999a    # 0.6f

    if-nez v0, :cond_b

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iTechWidth:I

    if-lez v0, :cond_4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sTech:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iTechWidth:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    add-int/2addr v4, p3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v2, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iCostWidth:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iget-boolean v5, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->canBuild_MoneyCost:Z

    if-eqz v5, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_GOLD:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_2
    invoke-static {p1, v0, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sMovementCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iMovementCostWidth:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    invoke-virtual {p0, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v1

    mul-float v5, v5, v1

    float-to-int v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, p3

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->canBuild_Movement:Z

    if-eqz v4, :cond_7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    invoke-static {p1, v0, v2, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sMovementCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sMovementCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iMovementCostWidth:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    add-int/2addr v4, p3

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->canBuild_Movement:Z

    if-eqz v1, :cond_9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    invoke-static {p1, v0, v2, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getCheckboxState()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_5

    :cond_b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v7, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-virtual {p0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v9, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sConstruction:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iConstructionWidth:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    invoke-virtual {p0, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getImageScale(IF)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    add-int/2addr v4, p3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v2, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_c
    :goto_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f266666    # 0.65f

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-static {p1, v0, v2, v4, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    invoke-virtual {p4, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sLevel:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->sLevelID:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy;->iDiploWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->iLevelWidth:I

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Level;->getTextHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
