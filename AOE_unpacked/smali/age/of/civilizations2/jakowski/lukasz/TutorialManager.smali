.class Lage/of/civilizations2/jakowski/lukasz/TutorialManager;
.super Ljava/lang/Object;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;
    }
.end annotation


# static fields
.field protected static final COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

.field protected static final COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected INNER_STEP:I

.field protected IN_TUTORIAL:Z

.field protected STEP_ID:I

.field private iDrawPosX:I

.field private iDrawPosY:I

.field private textBox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;",
            ">;"
        }
    .end annotation
.end field

.field private tutBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/TutorialBox;",
            ">;>;"
        }
    .end annotation
.end field

.field protected tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3f48c8c9

    const v1, 0x3f69e9ea

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f52d2d3

    invoke-direct {v0, v2, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->IN_TUTORIAL:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->updateDrawTutorial(Z)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    return v0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    return v0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea66666    # 0.325f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333    # 0.95f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2f5c29    # 0.685f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    div-int/lit8 v1, p4, 0x4

    add-int v2, p2, v1

    add-int/lit8 v1, p3, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v4, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    div-int/lit8 v1, p4, 0x4

    add-int v2, p2, v1

    add-int/lit8 v1, p3, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v4, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawLineVertical(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea66666    # 0.325f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333    # 0.95f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2f5c29    # 0.685f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v1, p4, 0x4

    add-int/2addr v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    div-int/lit8 v1, p4, 0x4

    add-int/2addr v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getTextSplited(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/high16 v12, 0x3f400000    # 0.75f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x0

    array-length v3, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v7, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v1, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sub-int/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    if-ge v1, v8, :cond_0

    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_4

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sub-int/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    if-ge v1, v8, :cond_4

    :cond_0
    const-string v0, ""

    move v4, v5

    :goto_1
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_1

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sub-int/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    if-ge v1, v8, :cond_1

    move v8, v3

    :goto_2
    if-ge v4, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v8, v2

    goto :goto_2

    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget v9, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sub-int/2addr v8, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    if-lt v1, v8, :cond_3

    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_3

    aget-object v8, v7, v2

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float/2addr v8, v12

    float-to-int v1, v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v6
.end method

.method protected final startTutorial()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->updateDrawTutorial(Z)V

    return-void
.end method

.method protected final updateDrawTutorial(Z)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->IN_TUTORIAL:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    if-eqz p1, :cond_54

    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    if-nez v13, :cond_3

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "WelcomeToTheTutorial"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_0

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$1;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    :goto_3
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenCivilizationView"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "CivilizationTreasury"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "NumberOfMovementPointsInThisTurn"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "cw1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "5. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheDiplomacyView"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "6. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "MoreMapViews"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "7. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "CurrentDateAndTurnOfTheGame"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "8. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "cw0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "HoverAnElementToGetMoreInformations"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$4;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$5;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$6;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$7;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$8;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "5"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$9;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "6"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$10;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "7"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$11;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "8"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$12;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "m0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_message:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "CapitalOfYourCivilization"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t7"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    if-nez v2, :cond_5

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Ideology;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v14

    invoke-direct {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Ideology;-><init>(I)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t8"

    const-string v15, "15"

    const-string v16, "10"

    invoke-virtual/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "s1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_8

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$13;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$14;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$15;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_f

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t6"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_a

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t6a"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_b

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t3"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_c

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_d

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "t5"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_e

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$17;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$18;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_10

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "b0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Minimap"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "InformationAboutSelectedProvince"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "EndTurnOrContinue"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$19;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "Next"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$20;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$21;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$22;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_11

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "b1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenCloseCivilizationInformationsView"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "CoreIsALegitimatePartOfCivilization"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "b2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ProvinceValue"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->victoryPoints:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "TerrainType"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;

    const/4 v14, 0x1

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "b3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$23;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$24;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$25;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$26;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$27;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$28;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_12

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "u0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "u0a"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "u0b"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "g0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->population_growth:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "g1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Happiness"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->happiness:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ha0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ha1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$29;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$30;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$31;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$32;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$33;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$34;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_15

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "EconomyOfProvince"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "DevelopmentLevel"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_13

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_13
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech5"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_14

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_14
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ProvinceStability"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "RevolutionaryRisk"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_revolution:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "5. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Buildings"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "6. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ProvinceName"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$35;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$36;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$37;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$38;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$39;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$40;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "5"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$41;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "6"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$42;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1f

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_16

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_16
    invoke-interface {v12}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "a1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "a2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a2a"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_17

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_17
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a2b"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_18

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_18
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "ArmyRecruitmentWillTakeOneTurn"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_19

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_19
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "a3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a3a"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_12
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1a

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1a
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "PlunderOccupiedProvince"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1b

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1b
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a3b"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "Conscript"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_14
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1c

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1c
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a3c"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_15
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1d

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1d
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "a4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1e

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$43;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$44;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$45;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$46;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$47;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$48;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "chPr"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$49;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$50;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x9

    if-ne v13, v14, :cond_29

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "r0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_20

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_20
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "YouCantRecruitArmyInOccupiedProvince"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_22

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_21

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    invoke-interface {v12}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "r1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "r2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Cancel"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_false:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Accept"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "RequiredMovementPoints"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v14

    iget v14, v14, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    int-to-float v14, v14

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_19
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_24

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_23

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "ArmyRecruitmentWillTakeOneTurn"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_26

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_25

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_26
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "OneUnitCostsXGold"

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_28

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_27

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$51;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$52;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "chPr"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$53;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$54;

    const-string v14, "2"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$55;

    const-string v14, "3"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$56;

    const-string v14, "1"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$57;

    const-string v14, "4"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$58;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_29
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_30

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "n0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2a

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2a
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "n0a"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2c

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_2b

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_port:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2c
    invoke-interface {v12}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "n1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "n2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Cancel"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_false:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Accept"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_check_true:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "n3a"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2d

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2d
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "RequiredMovementPoints"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2f

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v2, v13, :cond_2e

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_movement_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "n3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$59;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$59;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$60;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$60;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$61;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "chPr"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$61;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$62;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$62;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$63;

    const-string v14, "2"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$63;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$64;

    const-string v14, "3"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$64;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$65;

    const-string v14, "1"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$65;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$66;

    const-string v14, "4"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$66;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$67;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$67;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xb

    if-ne v13, v14, :cond_31

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v13}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "a3a2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_fort:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "HidesTheArmyFromTheSightOfViewOfWatchTower"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "DefenseBonus"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_DefenseBonus(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_tower:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "AllowsToSeeTheArmyInNeighboringProvinces"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "DefenseBonus"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_DefenseBonus(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_port:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "AllowsYourArmyGoToTheSea"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->icon_move_sea:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "IncomeProduction"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_IncomeProduction(I)F

    move-result v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_library:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "+1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_RESEARCH:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ResearchPerTurnForEveryXPeopleInProvince"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_ResearchPerPopulation(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "5. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_farm:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "GrowthRate"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_GrowthRateBonus(I)F

    move-result v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->population_growth:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "6. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_workshop:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "IncomeProduction"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_IncomeProduction(I)F

    move-result v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "7. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_armoury:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "ReducesTheCostOfRecruitmentPerUnitByOneGold"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "8. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->b_supply:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "MilitaryUpkeep"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Bonus(I)F

    move-result v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$68;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$68;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$69;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$69;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$70;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$70;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_31
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xc

    if-ne v13, v14, :cond_35

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "tx0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_20
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_32

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_32
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Inflation"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "InflationH1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_33

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_33
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "InflationH2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_22
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_34

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$71;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$71;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$72;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$72;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_35
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xd

    if-ne v13, v14, :cond_3c

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "in1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_23
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_36

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_36
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "in2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_24
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_37

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hAdm0"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_25
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_38

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hAdministrationCost"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_26
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_39

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_39
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "tx"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_27
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3a

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3a
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "txa"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, " - "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_28
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3b

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3b
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$73;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$73;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$74;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$74;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$75;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$75;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$76;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$76;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$77;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$77;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$78;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$78;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$79;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$79;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_3c
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xe

    if-ne v13, v14, :cond_41

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hGoods"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3d

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3d
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hGoods2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3e

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3e
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hGoods3"

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v17 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getMin_Goods(I)F

    move-result v15

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3f

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3f
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "hGoods4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_40

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_40
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$80;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$80;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$81;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$81;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$82;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$82;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$83;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$83;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_41
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_46

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_2d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_42

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_42
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_43

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_43
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech3"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_2f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_44

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_44
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_30
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_45

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_45
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$84;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$84;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$85;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$85;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$86;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$86;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$87;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$87;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_46
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x10

    if-ne v13, v14, :cond_4a

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_gold:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "BuildYourEconomicPowerBySpendingGoldOnInvestments"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_31
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_47

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_47
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "DevelopmentLevelAndEconomyWillBeIncreased"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_32
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_48

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_48
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "Tech5"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_33
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_49

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_49
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$88;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v16, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$88;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$89;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$89;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$90;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$90;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_4a
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x11

    if-ne v13, v14, :cond_4b

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "d0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$92;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$92;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$93;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$93;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_4b
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x12

    if-ne v13, v14, :cond_51

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "d0a"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "d1"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_34
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4c

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_4c
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "d2"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v2, 0x0

    :goto_35
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4d

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4d
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "d3"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "2. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_36
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4e

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4e
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "d4"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "3. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_37
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4f

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4f
    invoke-interface {v12}, Ljava/util/List;->clear()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v14, "d5"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->getTextSplited(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "4. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_38
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_50

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TEXT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v13, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_50
    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$94;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$94;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$95;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$95;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$96;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "3"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$96;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$97;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$97;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$98;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$98;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_51
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x13

    if-ne v13, v14, :cond_52

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "q0"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v14, "1. "

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "EndTurn"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$99;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Next"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$99;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$100;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$100;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_52
    move-object/from16 v0, p0

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/16 v14, 0x14

    if-ne v13, v14, :cond_53

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->iDrawPosY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "EndOfTutorial"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "GoodLuck"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->textBox:Ljava/util/List;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v14, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$101;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v15, "Finish"

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$101;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutBoxes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$102;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$102;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_53
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$103;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$103;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3

    :cond_54
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$104;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$104;-><init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->tutStep:Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;

    goto/16 :goto_3
.end method
