.class Lage/of/civilizations2/jakowski/lukasz/Button;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;,
        Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;,
        Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;
    }
.end annotation


# instance fields
.field protected checkbox:Z

.field private checkboxState:Z

.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field private oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;

.field protected sText:Ljava/lang/String;

.field protected textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

.field protected typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkbox:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkboxState:Z

    return-void
.end method


# virtual methods
.method protected buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkbox:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button;)V

    return-object v0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button;)V

    return-object v0
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_0

    :cond_0
    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;

    invoke-interface {v0, p1, p2, p3, p5}, Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;->drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getPosX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v0, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getPosX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v0, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method protected getCheckboxState()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkboxState:Z

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ec28f5c    # 0.38f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3efae148    # 0.49f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected getTextHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextHeight:I

    return v0
.end method

.method protected getTextPos()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextPositionX:I

    return v0
.end method

.method protected getTextToDraw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected getTextWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextWidth:I

    return v0
.end method

.method protected final init(Ljava/lang/String;IIIIIZZZZ)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    return-void
.end method

.method protected final init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->BUTTON:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Button;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Button;->setWidth(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Button;->setHeight(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button;->setText(Ljava/lang/String;)V

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextPositionX:I

    if-gez p2, :cond_0

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Button$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Button$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    goto :goto_0

    :cond_0
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Button$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Button$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;

    :goto_0
    iput-boolean p9, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkbox:Z

    iput-boolean p10, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkboxState:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->oCheckbox:Lage/of/civilizations2/jakowski/lukasz/Button$Checkbox;

    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Button;->setClickable(Z)V

    invoke-virtual {p0, p8}, Lage/of/civilizations2/jakowski/lukasz/Button;->setVisible(Z)V

    iput-object p11, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    return-void
.end method

.method protected final setCheckbox(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkbox:Z

    return-void
.end method

.method protected final setCheckboxState(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->checkboxState:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->sText:Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextHeight:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->iTextWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    return-void
.end method
