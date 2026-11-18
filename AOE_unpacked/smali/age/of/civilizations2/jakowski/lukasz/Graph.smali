.class Lage/of/civilizations2/jakowski/lukasz/Graph;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Graph.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x3b6

.field private static final AUTO_MOVE_TURN_TIME:I = 0x5aa

.field protected static final DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

.field protected static POINTS_TEXT_SCALE:F

.field protected static final TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private bDecimal:B

.field private fAvaragePoint:F

.field private iActiveButtonID:I

.field private iAvaragePosY:I

.field private iBestCivID:I

.field private iBestDescDataID:I

.field private iBestDescDataTextWidth:I

.field private iButtonsPosY:I

.field private iDataSize:I

.field private iDescOfTurnID:I

.field private iFixPosY:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMaxSize:I

.field private iMaxTextWidth:I

.field private iMinPoint:I

.field private iMinTextWidth:I

.field private iPointsPosXSize:I

.field private iWidthTextX:I

.field private iWidthTextX2:I

.field private iWidthTextY:I

.field private iWorstCivID:I

.field private iWorstDescDataID:I

.field private iWorstDescDataTextWidth:I

.field private iZeroPosY:I

.field private lAuto_Move_Turn_Time:J

.field protected lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/GraphData;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsPosX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextX2:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d23d70a    # 0.04f

    const v2, 0x3ca3d70a    # 0.02f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3e000000    # 0.125f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f266666    # 0.65f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lessThanTen:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lTime:J

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lAuto_Move_Turn_Time:J

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->moveable:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX:Ljava/lang/String;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextY:Ljava/lang/String;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, v1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setWidth(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setHeight(I)V

    invoke-virtual {p0, p7}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setVisible(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->GRAPH:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-interface {p8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p4, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Graph;->addData(Lage/of/civilizations2/jakowski/lukasz/GraphData;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p9, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->loadData(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    return-void
.end method

.method private final actionUp(I)V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    if-ltz v0, :cond_5

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->loadData(I)V

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-le v1, v0, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->loadData(I)V

    :cond_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    :cond_5
    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v13, v2, :cond_7

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v2

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    add-int/2addr v5, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int v5, v5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int v6, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v8

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    if-ltz v3, :cond_0

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_1

    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    if-ltz v3, :cond_1

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_2
    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v13

    move v11, v1

    invoke-virtual/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto/16 :goto_5

    :cond_2
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBackAnimation()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x2ee

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gtz v2, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2, v12}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setBackAnimation(Z)V

    goto :goto_5

    :cond_3
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    add-int/2addr v5, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int v5, v5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int v6, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v8

    iget-object v9, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v3, v10, :cond_5

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v3, v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v10, 0x1

    :goto_4
    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v13

    move v11, v1

    invoke-virtual/range {v2 .. v11}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private final getButtonsHeight()I
    .locals 3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    mul-int v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v0

    mul-int v0, v0, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private final getDataLastPoint(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected static final getGraphButtonHeight()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected static final getGraphButtonWidth()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private final getMinPoint()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private final incrementTurnDescInfo()V
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateDescInfo()V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method private final roundAverage()V
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lessThanTen:Z

    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_0

    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lessThanTen:Z

    goto :goto_0

    :cond_1
    iput-byte v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    :cond_2
    :goto_0
    return-void
.end method

.method private final setHoveredID(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildElementHover()V

    :cond_0
    return-void
.end method

.method private final sortCivsByLastPoint()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateButtonsInView()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setVisible(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    if-ltz v2, :cond_1

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setVisible(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private final updateMoveTurnTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lAuto_Move_Turn_Time:J

    return-void
.end method


# virtual methods
.method protected final addData(Lage/of/civilizations2/jakowski/lukasz/GraphData;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->sortCivsByLastPoint()V

    return-void
.end method

.method protected buildElementHover()V
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    if-gez v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Undiscovered"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;->resetAnimation_2()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    :goto_1
    return-void
.end method

.method protected final buildGraph()V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    :cond_0
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    :cond_1
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    :cond_4
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x3f333333    # 0.7f

    :try_start_0
    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-gez v4, :cond_9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    mul-float v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v5, v0

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iZeroPosY:I

    goto :goto_4

    :cond_9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    mul-float v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    goto :goto_4

    :cond_a
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sub-int/2addr v0, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    mul-float v5, v5, v2

    mul-float v4, v4, v5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iAvaragePosY:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->roundAverage()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v4, 0x1

    :goto_5
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    sub-int/2addr v5, v0

    if-ge v4, v5, :cond_b

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v4

    mul-float v7, v7, v2

    mul-float v6, v6, v7

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxSize:I

    sub-int/2addr v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    :goto_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {v0, v2, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->buildGraph(IIILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateDescInfo()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lAuto_Move_Turn_Time:J

    const-wide/16 v3, 0x5aa

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->incrementTurnDescInfo()V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    const v8, 0x3f333333    # 0.7f

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, p3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x42b40000    # 90.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX2:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX2:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX2:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    mul-float v4, v4, v8

    div-float/2addr v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v11, 0x1

    const/high16 v12, 0x42c80000    # 100.0f

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_44:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v6, v13

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v6, v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v12

    mul-float v2, v2, v6

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v2, v6

    div-float/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v13, v13

    mul-float v13, v13, v8

    float-to-int v13, v13

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    sub-int/2addr v6, v13

    int-to-float v6, v6

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v14, v10

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v12

    mul-float v6, v6, v10

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    div-float/2addr v6, v10

    div-float/2addr v6, v12

    add-float/2addr v2, v6

    float-to-int v2, v2

    neg-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v1

    const-string v10, "0"

    if-gez v1, :cond_1

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v3, v11

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v2, v2, v9

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iZeroPosY:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v2, v2, p3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v10, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :cond_1
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lTime:J

    const-wide/16 v3, 0x3b6

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v3, p3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lTime:J

    sub-long/2addr v5, v13

    long-to-float v5, v5

    const v6, 0x446d8000    # 950.0f

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    invoke-direct/range {p0 .. p3}, Lage/of/civilizations2/jakowski/lukasz/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p3}, Lage/of/civilizations2/jakowski/lukasz/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :catch_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v3

    if-lt v2, v3, :cond_3

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v3

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    const/high16 v2, 0x3f400000    # 0.75f

    :try_start_3
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v14

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v5

    invoke-direct {v3, v4, v6, v14, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    :try_start_4
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3d70f0f1

    invoke-direct {v3, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->circle_55:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->circle_55:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v4

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v12

    mul-float v5, v5, v6

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v14

    sub-int/2addr v6, v14

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->circle_55:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v4, v4, p3

    invoke-virtual {v2, v7, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_3
    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v3, v11

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v11

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v11

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->fAvaragePoint:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lessThanTen:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    iget-byte v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->bDecimal:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v11

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_5
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    mul-float v2, v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v12

    sub-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_d

    if-ge v1, v2, :cond_7

    :try_start_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_d

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    move-object v10, v14

    float-to-double v13, v2

    :try_start_7
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_d

    goto/16 :goto_6

    :catch_4
    move-object v10, v14

    :catch_5
    :try_start_8
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v13

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v13, v13

    div-float/2addr v6, v13

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_6
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v13

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v13, v13

    div-float/2addr v6, v13

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_d

    goto/16 :goto_a

    :cond_7
    move-object v10, v14

    :try_start_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_7

    :catch_6
    :try_start_a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_7
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_a

    :cond_8
    move-object v10, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_a
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_d

    if-ge v1, v2, :cond_9

    :try_start_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v13

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v13, v13

    div-float/2addr v6, v13

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_d

    goto/16 :goto_8

    :catch_7
    :try_start_c
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v13

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v13, v13

    div-float/2addr v6, v13

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_8
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v13

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v13, v13

    div-float/2addr v6, v13

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_c
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_d

    goto/16 :goto_a

    :cond_9
    :try_start_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_9

    :catch_8
    :try_start_e
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_9
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_a
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    mul-float v2, v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v12

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_e
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_d

    if-ge v1, v2, :cond_a

    :try_start_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_d

    goto/16 :goto_b

    :catch_9
    :try_start_10
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_b
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_10
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_d

    goto/16 :goto_f

    :cond_a
    :try_start_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_c

    :catch_a
    :try_start_12
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_c
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_f

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v7, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I
    :try_end_12
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_d

    if-ge v1, v2, :cond_c

    :try_start_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_d

    :catch_b
    :try_start_14
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_d
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_14
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_d

    goto/16 :goto_f

    :cond_c
    :try_start_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_d

    goto/16 :goto_e

    :catch_c
    :try_start_16
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_e
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    mul-float v4, v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_16
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_d

    :catch_d
    :goto_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    if-ge v1, v2, :cond_e

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-gtz v1, :cond_d

    :try_start_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_e

    goto/16 :goto_10

    :catch_e
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_10
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_d
    :try_start_18
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_f

    goto :goto_11

    :catch_f
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    mul-float v2, v2, v6

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_11
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v9, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v6, v6, v9

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    mul-float v2, v2, v6

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_14

    :cond_e
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinPoint:I

    if-gtz v1, :cond_f

    :try_start_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_10

    goto :goto_12

    :catch_10
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_12
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMinTextWidth:I

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_f
    :try_start_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_11

    goto :goto_13

    :catch_11
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_13
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v9

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxTextWidth:I

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v7, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v3

    add-int/2addr v3, v11

    add-int v3, v3, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v1, v7, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    if-lez v1, :cond_10

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    sub-int/2addr v2, v11

    if-ge v1, v2, :cond_10

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lPointsPosX:Ljava/util/List;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v8

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v2, v4

    add-int/2addr v2, v11

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_10
    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v3, p3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    const/4 v1, 0x0

    :goto_15
    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v1, v2, :cond_13

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v6

    mul-int v5, v5, v1

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v4, v5

    add-int v4, v4, p3

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    if-ne v5, v1, :cond_11

    const/4 v5, 0x1

    goto :goto_16

    :cond_11
    const/4 v5, 0x0

    :goto_16
    invoke-virtual {v2, v7, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_13
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_12

    :catch_12
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    return v0
.end method

.method protected final getGraphWidth()I
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getWidth()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->moveable:Z

    return v0
.end method

.method protected loadData(I)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v4

    invoke-direct {v3, v4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    :cond_3
    return-void
.end method

.method protected final removeData(I)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateButtonsInView()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->sortCivsByLastPoint()V

    return-void
.end method

.method protected setCheckboxState(Z)V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveable()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateButtonsInView()V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-gt p1, v0, :cond_1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsHeight()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    neg-int p1, p1

    :cond_1
    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateButtonsInView()V

    const/4 p1, 0x1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_2
    return-void
.end method

.method protected final setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/GraphData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->buildGraph()V

    return-void
.end method

.method protected setMin(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->loadData(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final setScrollPosY(I)V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_0

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iActiveButtonID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AoC"

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setVisible(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateSlider(I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lTime:J

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveTurnTime()V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lTime:J

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    :goto_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setHoveredID(I)V

    return-void
.end method

.method protected final updateDescInfo()V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getMinPoint()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iMaxPoint:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    if-lt v3, v4, :cond_1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointsSize()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v3

    if-le v3, v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    :cond_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v3

    if-gt v3, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWorstDescDataTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lData:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getPointY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iBestDescDataTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    add-int/2addr v0, v2

    :goto_1
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Turn"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX2:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->sTextX2:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iWidthTextX2:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveTurnTime()V

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void
.end method

.method protected updateHover(IIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    if-lt v1, p1, :cond_0

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-gt v1, p2, :cond_0

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-lt v1, p2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setHoveredID(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->setHoveredID(I)V

    return-void
.end method

.method protected final updateMoveable()V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->moveable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->moveable:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iButtonsPosY:I

    :goto_0
    return-void
.end method

.method protected updateSlider(I)V
    .locals 5

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateMoveTurnTime()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getGraphButtonMode2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->actionUp(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateDescInfo()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-le p1, v0, :cond_2

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateDescInfo()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getGraphWidth()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->getPosX()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iPointsPosXSize:I

    if-ge v1, v3, :cond_5

    if-nez v1, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    goto :goto_1

    :cond_3
    add-float/2addr v2, v0

    :goto_1
    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph;->iDescOfTurnID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph;->updateDescInfo()V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
