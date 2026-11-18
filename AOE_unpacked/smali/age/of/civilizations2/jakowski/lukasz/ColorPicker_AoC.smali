.class Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;
.super Ljava/lang/Object;
.source "ColorPicker_AoC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;,
        Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;
    }
.end annotation


# static fields
.field protected static activeRGB:I = -0x1


# instance fields
.field protected ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

.field private final RGB_TEXT_SCALE:F

.field private activeClose:Z

.field private activeColor:Lcom/badlogic/gdx/graphics/Color;

.field private activeHUE:Z

.field private activeMove:Z

.field private activeResize:Z

.field private activeSV:Z

.field private colorSVPos:Lcom/badlogic/gdx/graphics/Color;

.field private fAlpha:F

.field private hsv:[F

.field private hueColor:Lcom/badlogic/gdx/graphics/Color;

.field private hueVal:F

.field private iActiveColorID:I

.field private iBTextWidth:I

.field private iGTextWidth:I

.field private iHUEWidth:I

.field private iLastHUEPosY:I

.field private iLastSVPosX:I

.field private iLastSVPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iRGBTextWidth:I

.field private iRTextWidth:I

.field private iResizeHeight:I

.field private iSVHeight:I

.field private iStartPosX:I

.field private iStartPosY:I

.field private iStartResizeHeight:I

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lColorsBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;",
            ">;"
        }
    .end annotation
.end field

.field private lRGBBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->visible:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeHUE:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeSV:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeMove:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->RGB_TEXT_SCALE:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueVal:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "G 255"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRGBTextWidth:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateRGBWidth()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRGBTextWidth:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRGBTextWidth:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRGBTextWidth:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->ACTIVE_CIVILIZATION_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateColorPicker_Action(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget p1, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_0

    move v0, p1

    move v6, v0

    goto :goto_1

    :cond_0
    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v0, v5

    float-to-int v5, v0

    int-to-float v6, v5

    sub-float/2addr v0, v6

    sub-float v6, v4, v2

    mul-float v6, v6, p1

    mul-float v7, v2, v0

    sub-float v7, v4, v7

    mul-float v7, v7, p1

    sub-float v0, v4, v0

    mul-float v2, v2, v0

    sub-float v0, v4, v2

    mul-float v0, v0, p1

    if-eqz v5, :cond_5

    if-eq v5, v1, :cond_4

    if-eq v5, v3, :cond_3

    const/4 v1, 0x3

    if-eq v5, v1, :cond_2

    const/4 v1, 0x4

    if-eq v5, v1, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v8, v0

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p1

    move p1, v6

    move v6, v7

    goto :goto_1

    :cond_3
    move v8, v6

    move v6, p1

    :goto_0
    move p1, v8

    goto :goto_1

    :cond_4
    move v0, v6

    move v6, p1

    move p1, v7

    goto :goto_1

    :cond_5
    move v8, v6

    move v6, v0

    move v0, v8

    :goto_1
    iput p1, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v6, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v4, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method private final setActiveRGB_Box(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p2, v1, :cond_0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final updateColorSVPos(I)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method private final updateHUE(I)V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v0, v0, v3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueVal:F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x2

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    invoke-direct {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    return-void
.end method

.method private final updateSV(II)V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int v2, p2, v1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueVal:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    aput v0, v2, p1

    sub-int/2addr p2, v1

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateColorSVPos(I)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateRGBWidth()V

    return-void
.end method


# virtual methods
.method protected final RGBtoHSV(III)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v5, v0, v1

    if-nez v5, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    const/4 v5, 0x0

    aput v5, v0, v4

    aput v5, v0, v3

    goto :goto_4

    :cond_0
    float-to-int v5, v0

    if-ne p1, v5, :cond_1

    sub-int v6, p2, p3

    :goto_0
    int-to-float v6, v6

    goto :goto_1

    :cond_1
    if-ne p2, v5, :cond_2

    sub-int v6, p3, p1

    goto :goto_0

    :cond_2
    sub-int v6, p1, p2

    goto :goto_0

    :goto_1
    if-ne p1, v5, :cond_3

    const/high16 v5, 0x40400000    # 3.0f

    goto :goto_3

    :cond_3
    if-ne p2, v5, :cond_4

    const/4 v5, 0x5

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    int-to-float v5, v5

    :goto_3
    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    sub-float v0, v1, v0

    div-float/2addr v6, v0

    sub-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    mul-float v5, v5, v6

    rem-float/2addr v5, v2

    aput v5, v7, v4

    div-float/2addr v0, v1

    aput v0, v7, v3

    :goto_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hsv:[F

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    const/4 v6, 0x2

    aput v1, v0, v6

    aget v1, v0, v4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueVal:F

    aget v1, v0, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    int-to-float v7, v3

    mul-float v1, v1, v7

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    aget v1, v0, v6

    neg-float v1, v1

    int-to-float v6, v3

    mul-float v1, v1, v6

    int-to-float v6, v3

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    int-to-float v1, v3

    aget v0, v0, v4

    div-float/2addr v0, v2

    int-to-float v2, v3

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    add-int/2addr v1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateHUE(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float p1, p1

    div-float/2addr p1, v5

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    int-to-float p1, p2

    div-float/2addr p1, v5

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    int-to-float p1, p3

    div-float/2addr p1, v5

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateRGBWidth()V

    return-void
.end method

.method protected final addColor(I)V
    .locals 6

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildColors()V
    .locals 10

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getColorBoxWidth()I

    move-result v5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-ge v1, v2, :cond_0

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getColorBoxWidth()I

    move-result v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    move-object v2, v9

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->NUM_OF_COLORS:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->addColor(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getColorBoxWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v12, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerHUE:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerHUE:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget v5, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    iget v6, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget v6, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget v6, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int v1, v1, p2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    int-to-float v4, v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSVPos:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSVPos:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v13

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSVPos:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v13

    sub-int/2addr v2, v3

    invoke-virtual {v0, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    invoke-virtual {v12, v14, v14, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    invoke-virtual {v0, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_1
    iget-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeMove:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerEdge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int/2addr v0, v15

    add-int v3, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int v0, v0, p2

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr v1, v15

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    invoke-static {v12, v0, v1, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v1

    add-int v0, v0, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr v2, v15

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    invoke-static {v12, v0, v2, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v3, 0x0

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v4, v0, p2

    iget v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v1

    add-int v5, v0, v1

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v6

    iget-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v8, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRTextWidth:I

    const-string v17, "R"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v18, v8

    move-object/from16 v8, v17

    move-object v14, v9

    move-object v9, v0

    const/4 v0, 0x0

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x1

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v1, v2

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v2

    add-int v5, v1, v2

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v6

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iGTextWidth:I

    const-string v8, "G"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x2

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v1, v2

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v2

    add-int v5, v1, v2

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v6

    iget-object v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iBTextWidth:I

    const-string v8, "B"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    add-int v1, v1, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v11, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->drawColors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e333333    # 0.175f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v2, v4

    iget-object v4, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v5

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v15

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    if-ltz v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v4, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v2, v4

    iget-object v4, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    iget v5, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v5

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v15

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v2, v3

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v0

    iget-object v3, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v3

    invoke-static {v12, v1, v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v0, v11, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    if-eqz v0, :cond_4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_close:I

    goto :goto_2

    :cond_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    :goto_2
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosY()I

    move-result v2

    invoke-virtual {v0, v12, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawColors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    add-int v4, p2, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v1

    add-int v5, p3, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v3

    add-int v4, v1, v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v5, v1, v3

    const/4 v6, 0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected final drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_COLOR_PICKER_RGB_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    if-eq v0, v7, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-ne v0, v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_LOADING_SPLIT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_LOADING_SPLIT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-static {p1, p3, v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v1, v9, -0x1

    add-int/lit8 v2, v10, 0x2

    add-int/lit8 v3, v11, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v8

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f6147ae    # 0.88f

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3f570a3d    # 0.84f

    invoke-direct {v3, v7, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v4, p7

    invoke-static {p1, v4, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    add-int v0, v8, v10

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v3

    move/from16 v3, p9

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_RANK:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v3, p8

    invoke-static {p1, v3, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected final getActiveColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected final getColorBoxWidth()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColorPickerAction()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    return-object v0
.end method

.method protected final getHeight()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    return v0
.end method

.method protected final getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    return v0
.end method

.method protected final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->visible:Z

    return v0
.end method

.method protected final getWidth()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRGBTextWidth:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method protected final setActiveRGBColor(FFF)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(III)V

    return-void
.end method

.method protected final setActiveRGBColor(III)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->RGBtoHSV(III)V

    return-void
.end method

.method protected final setHueWidth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    return-void
.end method

.method protected final setPosX(I)V
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    return-void
.end method

.method protected final setPosY(I)V
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    return-void
.end method

.method protected final setResizeHeight(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iResizeHeight:I

    return-void
.end method

.method protected final setSVHeight(I)V
    .locals 5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->pickerSV:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosY()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_1

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    const/4 p1, 0x1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->setWidth(I)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_2
    if-lez v0, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->setVisible(Z)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->setVisible(Z)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->setWidth(I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected final setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateColorPicker_Action(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$30;

    invoke-direct {p2, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    :goto_0
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->visible:Z

    if-nez p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method protected final touch(II)V
    .locals 8

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeHUE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int v2, v0, v1

    if-le p2, v2, :cond_1

    add-int p2, v0, v1

    :cond_1
    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_3

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateHUE(I)V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    add-int/2addr p1, p2

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    goto/16 :goto_7

    :cond_4
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeSV:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-ge p2, v0, :cond_5

    move p2, v0

    goto :goto_2

    :cond_5
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int v2, v0, v1

    if-le p2, v2, :cond_6

    add-int p2, v0, v1

    :cond_6
    :goto_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    if-ge p1, v0, :cond_7

    move p1, v0

    goto :goto_3

    :cond_7
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int v2, v0, v1

    if-le p1, v2, :cond_8

    add-int p1, v0, v1

    :cond_8
    :goto_3
    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr p2, p1

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    goto/16 :goto_7

    :cond_9
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    if-eqz v0, :cond_a

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr p2, p1

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosY:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setSVHeight(I)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeMove:Z

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v0, :cond_b

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosX:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosY:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    return-void

    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    if-ltz v0, :cond_d

    :goto_4
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_18

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getVisible()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_c

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    if-gt p1, p2, :cond_c

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->RGBtoHSV(III)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_d
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    if-ltz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGB_Box(II)V

    goto/16 :goto_7

    :cond_e
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    if-eqz v0, :cond_f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    goto/16 :goto_7

    :cond_f
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int v6, v0, v5

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iResizeHeight:I

    sub-int/2addr v6, v7

    if-lt p1, v6, :cond_10

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_10

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    add-int v6, v0, v5

    sub-int/2addr v6, v7

    if-lt p2, v6, :cond_10

    add-int v6, v0, v5

    if-gt p2, v6, :cond_10

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    sub-int/2addr p2, v0

    sub-int/2addr p2, v5

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosY:I

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartResizeHeight:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    return-void

    :cond_10
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    if-lt p1, v0, :cond_11

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iResizeHeight:I

    add-int v5, v0, v2

    if-gt p1, v5, :cond_11

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-lt p2, v5, :cond_11

    add-int/2addr v2, v5

    if-gt p2, v2, :cond_11

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeMove:Z

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosX:I

    sub-int/2addr p2, v5

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartPosY:I

    return-void

    :cond_11
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    const/4 v2, -0x1

    if-lt p1, v0, :cond_12

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_12

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-lt p2, v0, :cond_12

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v5

    if-gt p2, v0, :cond_12

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateHUE(I)V

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    add-int/2addr p1, p2

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeHUE:Z

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    goto/16 :goto_7

    :cond_12
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    if-lt p1, v0, :cond_13

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_13

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-lt p2, v0, :cond_13

    add-int/2addr v0, v5

    if-gt p2, v0, :cond_13

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->updateSV(II)V

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeSV:Z

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    sub-int/2addr p2, p1

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    goto/16 :goto_7

    :cond_13
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v5

    add-int/2addr v0, v5

    if-lt p1, v0, :cond_16

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_16

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v5

    add-int/2addr v0, v5

    if-lt p2, v0, :cond_16

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    if-gt p2, v0, :cond_16

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v5

    add-int/2addr v1, v5

    if-lt p1, v1, :cond_14

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    if-gt p1, v1, :cond_14

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v5

    add-int/2addr v1, v5

    if-lt p2, v1, :cond_14

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v1, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    if-gt p2, v1, :cond_14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->RGBtoHSV(III)V

    goto :goto_6

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_15
    :goto_6
    sput v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    goto/16 :goto_7

    :cond_16
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v4

    add-int/2addr v0, v4

    if-lt p1, v0, :cond_17

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iHUEWidth:I

    add-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosX()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    if-gt p1, v0, :cond_17

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v4

    add-int/2addr v0, v4

    if-lt p2, v0, :cond_17

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getPosY()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    if-gt p2, v0, :cond_17

    sput v3, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGB_Box(II)V

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_18

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_18

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-lt p2, p1, :cond_18

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_18

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    :cond_18
    :goto_7
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    invoke-interface {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;->update()V

    return-void
.end method

.method protected final touchUp()V
    .locals 5

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iSVHeight:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iStartResizeHeight:I

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastHUEPosY:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosX:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iLastSVPosY:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iPosY:I

    if-lt v0, v2, :cond_1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeSV:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeHUE:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeResize:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeMove:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeClose:Z

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iActiveColorID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    if-ltz v1, :cond_4

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    :goto_1
    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "G: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_1

    :goto_2
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard_ColorPickerRGB(Ljava/lang/String;)V

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeRGB:I

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->fAlpha:F

    return-void
.end method

.method protected final updateColorPicker_Action(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$31;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$ColorPicker_AoC$PickerAction:[I

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$29;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$28;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$27;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$26;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$25;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$24;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$23;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$22;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$21;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$20;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_9
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$19;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$18;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_b
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$17;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_c
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$16;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_d
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$15;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_e
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$14;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto/16 :goto_0

    :pswitch_f
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$13;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_10
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$12;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_11
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$11;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_12
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$10;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_13
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$9;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_14
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$8;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_15
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$7;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_16
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$6;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_17
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$5;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_18
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$4;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_19
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$3;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_1a
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_1b
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->ColorPicker_AoC_Action:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC_Action;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final updateColors()V
    .locals 9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->lColors:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final updateRGBWidth()V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iRTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iGTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->iBTextWidth:I

    return-void
.end method
