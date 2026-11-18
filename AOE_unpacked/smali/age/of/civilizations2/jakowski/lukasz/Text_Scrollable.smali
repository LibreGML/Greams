.class Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Scrollable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;
    }
.end annotation


# instance fields
.field private center:Z

.field private drawText:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;

.field private fTextScale:F

.field private iScrollPosX:I

.field private lTime:J

.field private scrollRight:Z

.field private textColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;F)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    iput-boolean v0, v9, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)F
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    return p0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    return p0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    return p0
.end method

.method static synthetic access$204(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$206(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)J
    .locals 2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->lTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;J)J
    .locals 0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->lTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    return p0
.end method

.method static synthetic access$402(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    return p1
.end method

.method private final init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    if-gez p8, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    iput-boolean p7, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setPosY(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setWidth(I)V

    if-lez p5, :cond_1

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setHeight(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setText(Ljava/lang/String;)V

    iput-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->updateTextPosition()V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;

    goto :goto_1

    :cond_2
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;

    :goto_1
    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->draw_StartClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->drawText:Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$DrawText;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected draw_StartClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    new-instance p4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getPosX()I

    move-result p5

    add-int/2addr p5, p2

    int-to-float p2, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getPosY()I

    move-result v0

    sub-int/2addr p5, v0

    sub-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getHeight()I

    move-result v0

    neg-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p4, p2, p3, p5, v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->fTextScale:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iTextHeight:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->updateTextPosition()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getHeight()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iTextHeight:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iTextHeight:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final updateTextPosition()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getTextWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->center:Z

    if-eqz v0, :cond_1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    goto :goto_0

    :cond_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Scrollable;->scrollRight:Z

    return-void
.end method
